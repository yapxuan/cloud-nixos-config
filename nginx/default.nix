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
    recommendedOptimisation = true;
    recommendedTlsSettings = true;

    virtualHosts = {
      "lab0.dpdns.org" = {
        forceSSL = true;
        enableACME = true;
        root = "/var/www/lab0.dpdns.org";
        locations."/" = {
          index = "index.html";
        };
      };
    };
  };

  system.activationScripts.copyWebContent.text = ''
    mkdir -p /var/www/lab0.dpdns.org
    cp -r ${staticSite}/* /var/www/lab0.dpdns.org/
    chmod -R 755 /var/www/lab0.dpdns.org
  '';

  security.acme = {
    acceptTerms = true;
    defaults.email = "puiyongqing@gmail.com";
  };
}
