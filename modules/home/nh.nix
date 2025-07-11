{
  pkgs,
  inputs,
  ...
}:

{
  programs.nh = {
    enable = true;
    package = inputs.nh.packages."${pkgs.system}".nh;
    clean = {
      enable = true;
      extraArgs = "--keep 2";
      dates = "weekly";
    };
    flake = "/home/puiyq/nixos-config-flake";
  };

}
