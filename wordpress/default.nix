{ pkgs, ... }:

{
  services.wordpress = {
    webserver = "nginx";
    sites = {
      "lab0.dpdns.org" = {
        plugins = {
          inherit (pkgs.wordpressPackages.plugins)
            wordpress-seo
            ;
        };
      };
    };
  };

  services.nginx.virtualHosts = {
    "lab0.dpdns.org" = {
      forceSSL = true;
      enableACME = true;
      # root = "/var/www/nginx";
      # locations."/" = {
      #   index = "index.html";
      # };
    };
  };
  # services.phpfpm.pools."wordpress-localhost".phpOptions = ''
  #   upload_max_filesize=1G
  #   post_max_size=1G
  # '';

  security.acme = {
    acceptTerms = true;
    defaults.email = "puiyongqing@gmail.com";
  };

  networking.firewall.allowedTCPPorts = [
    22
    443
    80
  ];
}
