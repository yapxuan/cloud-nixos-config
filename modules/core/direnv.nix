{ ... }:

{
  programs.direnv = {
    enable = true;
    direnvrcExtra = "";
    settings = {
      global = {
        log_format = "-";
        log_filter = "^$";
      };
    };
  };
}
