{ pkgs, buildPackages, ... }:

let
  name = "techstarter-runner";
  tag = "latest";

  imageBasics = with pkgs; [
    bashInteractive

  ];

  dockerHelpers = with pkgs.dockerTools; [
    usrBinEnv
    binSh
    caCertificates
    fakeNss
  ];

  fontconfigLine = "FONTCONFIG_FILE=${pkgs.makeFontsConf { fontDirectories = [ ]; }}";


in
  pkgs.dockerTools.buildLayeredImage {
    inherit name;
    inherit tag;

    contents = buildPackages ++ imageBasics ++ dockerHelpers;
    extraCommands = "mkdir -m 0777 tmp";
    config = {
      Entrypoint = [ "${pkgs.bashInteractive}/bin/bash" ];
      Env = [
        "TECHSTARTER_CI=true"
        fontconfigLine
      ];
    };
  }
