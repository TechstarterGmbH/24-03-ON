{

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    gfi.url = "gitlab:0xfab10/google-forms-importer";
  };

  outputs = { self, nixpkgs, flake-utils, gfi }: {

    overlay = self: super: { };

  } //
  flake-utils.lib.eachDefaultSystem
    (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
          overlays = [ self.overlay ];
        };

        markdownToHtmlCli = import ./nix/markdown2html-converter.nix { inherit pkgs; };

        marpCli = import ./nix/marp.nix { inherit pkgs; };

        commonPackages = with pkgs; [
          chromium
          diffutils
          direnv
          markdownToHtmlCli
          marpCli
          pre-commit
          python3Packages.deepl
          python3Packages.mdformat

          # gfi
          gfi.defaultPackage.${system}
        ];

        shell = pkgs.mkShell {
          packages = commonPackages;
        };

      in
      {
        devShells.nixos = shell;

        packages.gfi = gfi.defaultPackage.${system};
      }
    );
}
