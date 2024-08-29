# NeoVim Flake

Flake based off the incredible work of [NVF](https://github.com/NotAShelf/nvf)
Created for the purpose of:

- Pre-configuring NeoVim using the Home-Manager Module provided by NVF
- Syncing configurations across machines
- Preventing breaking changes when nixpkgs updates

# How To Use

Simply add this repository to your inputs, and add the module to your Home-Manager modules.

```nix
{
  inputs.neovim.url = "github:xvrqt/neovim-flake";
  outputs {neovim, ...}: let
    system = "x86_64-linux"; # Or whatever
  in {
    nixosConfigurations.${machine} = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        # ...
        home-manager.nixosModules.home-manager {
          home-manager = {
            # ...
            users.xvrqt = {...}: {
              imports = [
                # ...
                neovim.homeManagerModules.${system}.default
              ];
            };
          };
        };
      ];
    };
  };
}
```
