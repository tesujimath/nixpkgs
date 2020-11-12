{ callPackage, openssl, icu, python2, enableNpm ? true }:

let
  buildNodejs = callPackage ./nodejs.nix {
    inherit openssl icu;
    python = python2;
  };
in
  buildNodejs {
    inherit enableNpm;
    version = "12.8.1";
    sha256 = "3e63b2e7979b51d79b6f2f89d2869de85222be8edc549f08e10dc8d039de5b88";
  }
