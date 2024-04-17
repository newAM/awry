{
  description = "mdBook build for AreWeRTOSYet.com";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = {
    self,
    nixpkgs,
  }: let
    forEachSystem = nixpkgs.lib.genAttrs [
      "aarch64-darwin"
      "aarch64-linux"
      "x86_64-linux"
    ];
  in {
    packages = forEachSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        default = pkgs.stdenvNoCC.mkDerivation {
          name = "awry";

          src = self;

          nativeBuildInputs = [pkgs.mdbook];

          buildPhase = ''
            mdbook build $src --dest-dir $out
          '';

          dontInstall = true;
        };
      }
    );

    checks = forEachSystem (
      system: {
        book = self.packages.${system}.default;
      }
    );
  };
}
