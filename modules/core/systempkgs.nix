{ pkgs, inputs, ... }:

{
  # programs.firefox.enable = true;
  nixpkgs.config.allowUnfree = true;
  nix.package = pkgs.nixVersions.git;
  # nixpkgs.overlays = [ inputs.fenix.overlays.default ];
  environment.systemPackages = with pkgs; [
    neovim
    wget
    curl
    just
    fzf
    yazi
    #    vlc
    #    mesa
    inputs.helix.packages."${pkgs.system}".helix
    # (fenix.complete.withComponents [
    #   "cargo"
    #   "clippy"
    #   "rust-src"
    #   "rustc"
    #   "rustfmt"
    # ])
    # rust-analyzer-nightly
  ];
}
