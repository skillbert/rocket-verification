mcrl22lps -l stack rocket.mcrl2 rocket.lps
lps2pbes -v -c -f validation_rocket.mcf rocket.lps rocket.pbes
pbessolve -v --file=rocket.lps rocket.pbes
pbes2bool rocket.pbes

:: lps2lts rocket.pbes.evidence.lps rocket.pbes.evidence.lts
:: ltsgraph rocket.pbes.evidence.lts