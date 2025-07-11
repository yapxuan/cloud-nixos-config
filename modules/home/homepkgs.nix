{ pkgs, ... }:

{

  home.packages = with pkgs; [

    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    fzf # A command-line fuzzy finder
    fastfetch
    fd
    eza
    bat
    bat-extras.batman
    du-dust

    # misc
    file
    which
    gnused
    gnutar
    gawk
    zstd
    gnupg
    tealdeer

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor
    nixfmt-rfc-style
    nil # nix language server
    nixd
  ];
}
