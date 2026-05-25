# nix/modules/home-manager.nix — auto-generated from combine.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.combine; in {
  options.programs.combine = {
    enable = lib.mkEnableOption "combine";
    package = lib.mkOption { type = lib.types.package; default = pkgs.combine or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
