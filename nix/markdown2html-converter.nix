{ pkgs, ... }:

let

  version = "v1.1.12";
  projectName = "markdown2html-converter";
  projectOwner = "magiclen";
  projectBinaryName = projectName;
  pkgBinary = pkgs.fetchurl {
    url = "https://github.com/${projectOwner}/${projectName}/releases/download/${version}/${projectBinaryName}";
    sha256 = "sha256-d4VzhOmLxtiADa3GB7daNW0zbh357AGzKQlQzP6XGb4=";
  };
in
  pkgs.stdenv.mkDerivation {
    name = projectName;
    src = pkgBinary;
    phases = ["installPhase"];
    installPhase = ''
      install -D $src $out/bin/${projectBinaryName}
    '';
  }
