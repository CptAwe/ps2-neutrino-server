# !/bin/bash

# Clone a
git clone --depth 1 --filter=blob:none --sparse https://github.com/rickgaiser/neutrino.git

cd neutrino
git sparse-checkout set pc
