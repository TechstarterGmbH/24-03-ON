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
        direnv
        gnumake
        markdownToHtmlCli
        marpCli
        pre-commit
        python3Packages.deepl
        terraform
      ];

      buildPkgs = with pkgs; [
        skopeo
        git
      ];

      buildImage = import ./nix/image-builder.nix { inherit pkgs; buildPackages = defaultPkgs; };

    in
    {
      devShells."${defaultSystem}".default = pkgs.mkShell {
        nativeBuildInputs = defaultPkgs ++ buildPkgs;
      };

      packages."${defaultSystem}".techstarterRunnerContainer = buildImage;
    };
}
