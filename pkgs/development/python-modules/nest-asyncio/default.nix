{ lib
, buildPythonPackage
, fetchPypi
, pythonAtLeast
}:

buildPythonPackage rec {
  version = "1.2.2";
  pname = "nest_asyncio";
  disabled = !(pythonAtLeast "3.5");

  src = fetchPypi {
    inherit pname version;
    sha256 = "06hw495yqg60j738jp3qaxryhyrs36lpgmblf1sm2m2c3mgm92p5";
  };

  # tests not packaged with source dist as of 1.2.2/1.2.2, and
  # can't check tests out of GitHub easily without specific commit IDs (no tagged releases)
  doCheck = false;
  pythonImportsCheck = [ "nest_asyncio" ];

  meta = with lib; {
    description = "Patch asyncio to allow nested event loops";
    homepage = "https://github.com/erdewit/nest_asyncio";
    license = licenses.bsdOriginal;
    maintainers = with maintainers; [ costrouc ];
  };
}
