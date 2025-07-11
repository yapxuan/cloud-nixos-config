{
  pkgs,
  inputs,
  ...
}:

{
  nixpkgs.overlays = [ inputs.fenix.overlays.default ];
  environment.systemPackages = with pkgs; [
    (fenix.complete.withComponents [
      "cargo"
      "clippy"
      "rustc"
      "rustfmt"
    ])
    rust-analyzer-nightly
    inputs.helix.packages."${pkgs.system}".helix
    # inputs.zed.packages."${pkgs.system}".default

  ];
}
