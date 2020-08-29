{ buildPythonPackage
, numpy
, fetchPypi
, joblib
, networkx
, pandas
, pyparsing
, pytorch
, statsmodels
, tqdm
, scipy
}:

buildPythonPackage rec {
  pname = "pgmpy";
  version = "0.1.10";

  doCheck = false;

  src = fetchPypi {
    inherit pname version;
    sha256 = "0hg02pm4v20gyjsnxc6zh0fz4zw4q3q251r4k1vzam3b98gw4pnn";
  };

  propagatedBuildInputs = [
    joblib
    networkx
    numpy
    pandas
    pyparsing
    pytorch
    scipy
    statsmodels
    tqdm
  ];
}
