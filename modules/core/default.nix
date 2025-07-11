{ inputs, ... }:

{
  imports = [
    ./boot.nix
    ./ssh.nix
    #    ./locale.nix
    ./systempkgs.nix
    ./system.nix
    ./user.nix
    inputs.nur.modules.nixos.default
  ];
}
