{
  description = "Artifacts MMO";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.x86_64-linux.default = pkgs.mkShell {
      name = "artifactmmo";

      buildInputs = with pkgs; [
        just
        jq
        openapi-generator-cli
      ];

      API_URL="https://api.artifactsmmo.com";

      shellHook = ''
        # source api/artifacts.bash-completion
      '';
    };
  };
}
