mcrl22lps rocket.mcrl2 rocket.lps --lin-method=regular2 --verbose
lps2pbes rocket.lps -f validation_rocket.mcf rocket.pbes
pbes2bool rocket.pbes