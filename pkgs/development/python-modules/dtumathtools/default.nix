{ lib
, buildPythonPackage
, fetchPypi
, setuptools
}:

buildPythonPackage rec {
  pname = "dtumathtools";
  version = "1.1.0";
  format = "pyproject";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-+f5+NNxb45VPRR6mOcOrR7oxwLK2IPXilhjxZAvOF4I=";
  };

  nativeBuildInputs = [ setuptools ];

  meta = with lib; {
    description = "A collection of easy-to-use commands for plotting using SymPy";
    homepage    = "https://github.com/dtudk/dtumathtools";
    license     = licenses.bsd3;
  };
}
