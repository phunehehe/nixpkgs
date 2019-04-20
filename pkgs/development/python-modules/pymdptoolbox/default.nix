{ buildPythonPackage, fetchPypi, scipy }:

buildPythonPackage rec {
  pname = "pymdptoolbox";
  version = "4.0-b3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0r42kmam8clhmpzsd98q7a82ixynw4dmv3fs1m08zvjyq8snb9pc";
  };

  propagatedBuildInputs = [ scipy ];
}
