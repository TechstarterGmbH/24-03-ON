{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/23.11";

  outputs = { self, nixpkgs }:
    let
      defaultSystem = "x86_64-linux";
      pkgs = import nixpkgs { system = defaultSystem; };

      markdownToHtmlCli = import ./nix/markdown2html-converter.nix { inherit pkgs; };
      
      defaultPkgs = with pkgs; [
        markdownToHtmlCli
      ];
    in
    {
      devShells."${defaultSystem}".default = pkgs.mkShell {
        nativeBuildInputs = defaultPkgs;
      };
    };
}


