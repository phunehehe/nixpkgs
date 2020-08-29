{ buildPythonPackage
, fetchPypi
, ipywidgets
, numpy
, widgetsnbextension
}:

buildPythonPackage rec {
  pname = "open3d-python";
  version = "0.7.0.0";
  format = "wheel";

  src = fetchPypi {
    inherit format version;
    pname = "open3d_python";
    sha256 = "1sv4ibgycss8rijx05dyv3lcn066zir46z86qwrj9084yavgwics";
    python = "cp37";
    abi = "cp37m";
    platform = "manylinux1_x86_64";
  };

  propagatedBuildInputs = [
    ipywidgets
    numpy
    widgetsnbextension
  ];
}
