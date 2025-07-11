{ ... }:

{
  imports = [
    ./hardware.nix
#    ./host-packages.nix
    ./virtualmachine.nix
    ../../modules/core
  ];
}
