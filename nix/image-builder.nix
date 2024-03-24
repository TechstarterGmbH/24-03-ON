{ pkgs, buildPackages, ... }:

let
  name = "techstarter-runner";
  tag = "latest";

in
  pkgs.dockerTools.buildLayeredImage {
    inherit name;
    inherit tag;
    contents = buildPackages;
    config = {
      Entrypoint = [ "${pkgs.bashInteractive}/bin/bash" ];
    };
  }
