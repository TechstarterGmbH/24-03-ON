{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/23.11";

  outputs = { self, nixpkgs }:
    let
      defaultSystem = "x86_64-linux";
      pkgs = import nixpkgs { system = defaultSystem; };

      markdownToHtmlCli = import ./nix/markdown2html-converter.nix { inherit pkgs; };

      marpCli = import ./nix/marp.nix { inherit pkgs; };
      
      defaultPkgs = with pkgs; [
        chromium
        diffutils
        markdownToHtmlCli
        marpCli
        pre-commit
        python3Packages.deepl
      ];

    in
    {
      devShells."${defaultSystem}".default = pkgs.mkShell {
        nativeBuildInputs = defaultPkgs;
      };
    };
}
