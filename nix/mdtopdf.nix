{ pkgs, ... }:

let

  version = "v2.2.3";
  pkgSource = pkgs.fetchFromGitHub {
    owner = "mandolyte";
    repo = "mdtopdf";
    rev = version;
    sha256 = "sha256-m7ZQMgTZL8VGwa5mvHIhhdXS2fPEPN3+plLSrrtl9s8=";
  };

in
  pkgs.buildGoModule {
    pname = "mdtopdf";
    version = "latest";  # Replace with specific version if needed
    src = pkgSource;
    vendorHash = "sha256-LhVVuqF1Q5btLfxM/Q7AMw5yzBHO+Yz5dvuCtUF3O/I=";
  }
