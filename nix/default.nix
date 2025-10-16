{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  pname = "wifitui";
  version = "0.1.0"; # You can change this to a more appropriate version

  src = fetchFromGitHub {
    owner = "shazow";
    repo = "wifitui";
    rev = "bfbd2bf729c2e660d662fe8b2f89ee594928a2dc";
    sha256 = "sha256-ezD81ePZVlBSDlYA1GVSrsPDU2nfZUHmzVXKcwKxXJs=";
  };

  vendorHash = "sha256-gqrPPQFRpdRvnYXjutVmrvbKzA72bbMC5A/HRenvIT4=";

  proxyVendor = true;

  meta = with lib; {
    description = "A TUI for managing Wi-Fi connections";
    homepage = "https://github.com/shazow/wifitui";
    license = licenses.mit; # Please verify the license
    maintainers = with maintainers; [ ];
  };
}
