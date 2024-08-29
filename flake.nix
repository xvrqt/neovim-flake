{
  description = "NeoVim flake based off of NVF";
  inputs = {
    nvf.url = "github:notashelf/nvf";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    nvf,
    flake-utils,
    ...
  }:
  # Home-Manager Module
  # We pass in the machine name to retrieve the correct configuration
    flake-utils.lib.eachDefaultSystem (
      system: {
        homeManagerModules.default = {
          imports = [
            nvf.homeManagerModules.default
            # Customized Configuration
            ./nvf-config.nix
          ];
        };
      }
    );
}
