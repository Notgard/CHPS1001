set molID [mol new 1HHP.pdb]
set sel [atomselect $molID all]
$sel move {{0.000000 1.000000 0.000000 0.00000}
           {1.000000 0.000000 0.000000 0.00000}
           {0.000000 0.000000 -1.000000 0.00000}
           {0.00000  0.00000   0.00000  1.00000}}
$sel writepdb 1HHP_sym_dimer.pdb