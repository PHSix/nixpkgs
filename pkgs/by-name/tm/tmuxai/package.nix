{ lib
, stdenv
, fetchFromGitHub
, buildGoModule
}:

let
  version = "1.0.2";
in
buildGoModule {
  pname = "tmuxai";
  inherit version;

  src = fetchFromGitHub {
    owner = "alvinunreal";
    repo = "tmuxai";
    rev = "v${version}";
    hash = "";
  };

  vendorSha256 = "";

  meta = with lib; {
    homepage = "https://github.com/alvinunreal/tmuxai";
    description = "AI-Powered, Non-Intrusive Terminal Assistant";
    license = licenses.asl20;
    maintainers = with maintainers; [ PHSix ];
  };
}
