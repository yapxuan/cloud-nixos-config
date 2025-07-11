{
  pkgs,
  ...
}:

{
  # Use the systemd-boot EFI boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.efiSupport = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
