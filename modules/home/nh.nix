{
  pkgs,
  inputs,
  ...
}:

{
  programs.nh = {
    enable = true;
    clean = {
      enable = true;
      extraArgs = "--keep 2";
      dates = "weekly";
    };
    flake = "/home/yapx/cloud-nixos-config";
  };

}
