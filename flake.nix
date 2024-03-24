{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/23.11";

  outputs = { self, nixpkgs }:
    let
      defaultSystem = "x86_64-linux";
      pkgs = import nixpkgs { system = defaultSystem; config.allowUnfree = true; };

      markdownToHtmlCli = import ./nix/markdown2html-converter.nix { inherit pkgs; };

      marpCli = import ./nix/marp.nix { inherit pkgs; };
      
      defaultPkgs = with pkgs; [
        chromium
        coreutils
        diffutils
        markdownToHtmlCli
        marpCli
        pre-commit
        python3Packages.deepl
        terraform
      ];

      buildPkgs = with pkgs; [
        skopeo
      ];

    in
    {
      devShells."${defaultSystem}".default = pkgs.mkShell {
        nativeBuildInputs = defaultPkgs ++ buildPkgs;
      };

      packages."${defaultSystem}".techstarterContainer = pkgs.dockerTools.buildLayeredImage {
        name = "techstarter";
        tag = "latest";
        contents = defaultPkgs;
        config = {
          # Cmd = [ "bash" ];
          Entrypoint = [ "${pkgs.bashInteractive}/bin/bash" ];
        };
      };
    };
}
