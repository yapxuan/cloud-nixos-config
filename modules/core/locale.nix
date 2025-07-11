{
  time.timeZone = "Asia/Kuching";

  i18n = {
    defaultLocale = "en_US.UTF-8";
    extraLocales = [
      "zh_CN.UTF-8/UTF-8"
      "ms_MY.UTF-8/UTF-8"
      "C.UTF-8/UTF-8"
    ];
    extraLocaleSettings = {
      LC_MESSAGES = "en_US.UTF-8";
      LC_TIME = "ms_MY.UTF-8";
      LC_MONETARY = "ms_MY.UTF-8";
      LC_NAME = "ms_MY.UTF-8";
      LC_NUMERIC = "ms_MY.UTF-8";
      LC_PAPER = "ms_MY.UTF-8";
      LC_TELEPHONE = "ms_MY.UTF-8";
      LC_IDENTIFICATION = "ms_MY.UTF-8";
      LC_MEASUREMENT = "ms_MY.UTF-8";
      LC_ADDRESS = "ms_MY.UTF-8";
      LC_COLLATE = "C.UTF-8";
      LC_CTYPE = "C.UTF-8";
    };
  };
}
