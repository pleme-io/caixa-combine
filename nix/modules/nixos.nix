# nix/modules/nixos.nix — auto-generated from combine.caixa.lisp
# description: "Fast parser combinators on arbitrary streams with zero-copy support."
{ config, lib, pkgs, ... }:
let
  cfg = config.services.combine;
in {
  options.services.combine = {
    enable = lib.mkEnableOption "combine";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.combine or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
