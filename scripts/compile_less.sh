#!/bin/bash

# Compiles .less files to CSS.

set -e
set -x

pushd src/css/themes > /dev/null

for theme in lime pink purple steelblue; do
  lessc --verbose --clean-css ${theme}.less ${theme}.css
  echo >> ${theme}.css
done

cd ..
cat themes/*.css > L.Control.Elevation.css
echo >> L.Control.Elevation.css

popd > /dev/null

echo "Done."
