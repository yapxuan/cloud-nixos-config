{ pkgs, inputs, ... }:

{
  imports = [ inputs.home-manager.nixosModules.home-manager ];
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = { inherit inputs; };
    backupFileExtension = "backup";
    users.yapx = {
      imports = [ ../home ];
      home = {
        username = "yapx";
        homeDirectory = "/home/yapx";
        stateVersion = "25.05";
        shell.enableShellIntegration = true;
      };
    };
  };
  users.users.yapx = {
    isNormalUser = true;
    ignoreShellProgramCheck = true;
    shell = pkgs.zsh;
    extraGroups = [
      "yapx"
      "wheel"
      "users"
    ];
  };
  environment.pathsToLink = [ "/etc/profiles/per-user/yapx/share/zsh" ];
}
