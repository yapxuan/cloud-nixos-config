{
  pkgs,
  ...
}:

{
  boot.loader.grub.enable = true;


  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
