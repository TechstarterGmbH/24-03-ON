{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/23.11";

  outputs = { self, nixpkgs }:
    let
      defaultSystem = "x86_64-linux";
      macSystem = "aarch64-darwin";
      pkgs = import nixpkgs { system = defaultSystem; };
      pkgsMac = import nixpkgs { system = macSystem; };

      markdownToHtmlCli = import ./nix/markdown2html-converter.nix { inherit pkgs; };
      markdownToHtmlCliMac = import ./nix/markdown2html-converter.nix { inherit pkgsMac; };

      marpCli = import ./nix/marp.nix { inherit pkgs; };
      marpCliMac = import ./nix/marp.nix { inherit pkgsMac; };

      
      defaultPkgs = with pkgs; [
        chromium
        markdownToHtmlCli
        marpCli
        pre-commit
      ];

      macPkgs = with pkgsMac; [
        chromium
        markdownToHtmlCliMac
        marpCliMac
        pre-commit
      ];
    in
    {
      devShells."${defaultSystem}".default = pkgs.mkShell {
        nativeBuildInputs = defaultPkgs;
      };
      devShells."${macSystem}".default = pkgs.mkShell {
        nativeBuildInputs = macPkgs;
      };
    };
}
