# Load the PDB file
mol new 1kj7.pdb

# Representation 1: Solvent
mol representation Solvent
mol color ColorID 0
mol selection {not (protein or sugar or nucleic or lipid)}
mol addrep top

# Representation 2: Chain A (NewCartoon)
mol representation NewCartoon
mol color ColorID 3
mol selection {chain A}
mol addrep top

# Representation 3: Chain B (NewCartoon)
mol representation NewCartoon
mol color ColorID 7
mol selection {chain B}
mol addrep top

# Representation 4: Chain A and residue 35 (VDW)
mol representation VDW
mol color ColorID 10
mol selection {(chain A and resid 35)}
mol addrep top

# Representation 5: Residue 25 (Licorice)
mol representation Licorice
mol color ColorID 1
mol selection {resid 25}
mol addrep top

# Representation 6: Chain B and residue 47 (VDW)
mol representation VDW
mol color ColorID 2
mol selection {(chain B and resid 47)}
mol addrep top

# Representation 7: Chain B and residue 48 (VDW)
mol representation VDW
mol color ColorID 3
mol selection {(chain B and resid 48)}
mol addrep top

# Representation 8: Chain A and residue 30 (VDW)
mol representation VDW
mol color ColorID 0
mol selection {(chain A and resid 30)}
mol addrep top

# Representation 9: Specific residues (THR, ILE, MET, GLN, ARG) excluding chains A and B (Licorice)
mol representation Licorice
mol color ColorID 11
mol selection {resname THR ILE MET MET GLN ARG and (not chain A B)}
mol addrep top

# Representation 10: Residue ACT (VDW)
mol representation VDW
mol color ColorID 11
mol selection {resname ACT}
mol addrep top

# Representation 11: Residues 48-53 in Chain A and B (NewCartoon)
mol representation NewCartoon
mol color ColorID 1
mol selection {(resid 48 to 53) and (chain A B)}
mol addrep top

# Representation 12: Chain A and residues 51-52 or residues 49, 50, and 52 (NewCartoon)
mol representation NewCartoon
mol color ColorID 4
mol selection {chain A and (resid 51 52) or chain B and (resid 49 50 52)}
mol addrep top

# Representation 13: Substrate residues near protein but excluding chains A and B (Surface)
mol representation Surf
mol color ColorID 8
mol selection {within 4.5 of (resname THR ILE MET GLN ARG and (not chain A B))}
mol addrep top

# Representation 14: Water molecules within 3 Å of protein (CPK)
mol representation CPK
mol color Name
mol selection {water and within 3 of (protein)}
mol addrep top

# Representation 15: Water molecules within 3 Å of specific residues, excluding chains A and B (Surface)
mol representation Surf
mol color ColorID 0
mol selection {water and within 3 of (resname THR ILE MET GLN ARG and (not chain A B))}
mol addrep top

# Representation 16: Chain A, residue 50 (VDW)
mol representation VDW
mol color ColorID 5
mol selection {chain A and resid 50}
mol addrep top
