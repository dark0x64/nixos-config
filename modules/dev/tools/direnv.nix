{ config, lib, pkgs, ... }:
with lib;
let
  cfg = config.modules.dev.tools.direnv;
in
{
  options.modules.dev.tools.direnv.enable = mkEnableOption "Direnv configuration";

  config = mkIf cfg.enable {
    home-manager.users.${config.user.name} = {
      programs.direnv = {
        enable = true;
        nix-direnv.enable = true;
      };
    };
  };
}