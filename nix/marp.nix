{ pkgs, ...}:

let

  version = "3.4.0";
  projectName = "marp-cli";
  projectOwner = "marp-team";
  projectSource = pkgs.fetchFromGitHub {
    owner = projectOwner;
    repo = projectName;
    rev = "v${version}";
    sha256 = "sha256-azscuPkQ9/xcQtBg+5pJigXSQQVtBGvbd7ZwiLwU7Qo=";
  };
in
  pkgs.mkYarnPackage {
    name = projectName;
    version = version;
    src = projectSource;
    buildPhase = ''
      export HOME=$(mktemp -d)
      yarn --offline build
    '';
  }
