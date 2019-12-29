{ stdenv
, mkRosPackage
, robonomics_comm
, python3Packages
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "fuji_weather";
  version = "master";

  src = ./.;

  propagatedBuildInputs = [
    robonomics_comm
    python3Packages.requests
  ];

  meta = with stdenv.lib; {
    description = "Robonomics winter school fuji lesson";
    homepage = http://github.com/vourhey/fuji_weather;
    license = licenses.bsd3;
    maintainers = with maintainers; [ vourhey ];
  };
}
