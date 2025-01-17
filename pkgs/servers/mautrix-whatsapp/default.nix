{ lib, buildGoModule, fetchFromGitHub, olm }:

buildGoModule rec {
  pname = "mautrix-whatsapp";
  version = "0.7.1";

  src = fetchFromGitHub {
    owner = "mautrix";
    repo = "whatsapp";
    rev = "v${version}";
    hash = "sha256-5wZtWFB5y695S4E1Cv8nTSPUy6rPQ/j91w6kI0DAkGs=";
  };

  buildInputs = [ olm ];

  vendorSha256 = "sha256-v2Zf9nmAzal/nAtbQLunGJR/CUcdbwSUQ1077e7hVrQ=";

  doCheck = false;

  meta = with lib; {
    homepage = "https://github.com/tulir/mautrix-whatsapp";
    description = "Matrix <-> Whatsapp hybrid puppeting/relaybot bridge";
    license = licenses.agpl3Plus;
    maintainers = with maintainers; [ vskilet ma27 chvp ];
  };
}
