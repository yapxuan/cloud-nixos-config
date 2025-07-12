{
  self,
  nixpkgs,
  config,
  pkgs,
  lib,
  ...
}:
let
  staticSite = pkgs.copyPathToStore ./static;
in
{
  networking.firewall.allowedTCPPorts = [
    22
    443
    80
  ];

  services.nginx = {
    enable = true;
    recommendedProxySettings = true;
    recommendedGzipSettings = true;

    virtualHosts = {
      "lab0.dpdns.org" = {
        forceSSL = true;
        enableACME = true;
        root = "/var/www/nginx";
        locations."/" = {
          index = "index.html";
        };
      };
    };
  };

  system.activationScripts.copyWebContent.text = ''
    mkdir -p /var/www/nginx
    cp -r ${staticSite}/* /var/www/nginx/
    chmod -R 755 /var/www/nginx
  '';

  security.acme = {
    acceptTerms = true;
    defaults.email = "puiyongqing@gmail.com";
  };
}
