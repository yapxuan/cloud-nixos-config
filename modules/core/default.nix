{ inputs, ... }:

{
  imports = [
    ./boot.nix
    ./ssh.nix
    ./systempkgs.nix
    ./system.nix
    ./user.nix
  ];
}
