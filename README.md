# Pylint import-error bug with setuptools >=64.0.0

https://github.com/PyCQA/pylint/issues/7306

On debian bullseye, python 3.9.2

To reproduce:

```bash
git clean -xdf
./run.sh

# Fix by pinning setuptools<64
git clean -xdf
git apply before_setuptools_v64.0.0.patch
./run.sh
```
