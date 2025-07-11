{ ... }:

{
  programs.bash = {
    enable = false;
    enableCompletion = true;
    bashrcExtra = ''
      fastfetch

      # alias certain nix subcommand to nom
      nix() {
        case "$1" in
          shell|develop|build)
            nom "$@"
            ;;
          *)
            command nix "$@"
            ;;
        esac
      }
    '';

    shellAliases = {
      "nix-shell" = "nom-shell";
      "nix-build" = "nom-build";
      cat = "bat";
      man = "batman";
      find = "fd";
      ls = "eza";
      cd = "z";
      grep = "rg";
    };
  };
}
