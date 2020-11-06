@REM mcrl22lps -l stack rocket.mcrl2 rocket.lps
@REM lps2pbes -v -c -f validation_rocket.mcf rocket.lps rocket.pbes
@REM pbessolve -v --file=rocket.lps rocket.pbes
@REM pbes2bool rocket.pbes
@REM lps2lts rocket.pbes.evidence.lps rocket.pbes.evidence.lts
@REM ltsgraph rocket.pbes.evidence.lts


lps2pbes -c rocket.lps -f validation_rocket.mcf rocket.pbes
pbes2bool rocket.pbes --file=rocket.lps --evidence-file=rocket-evidence.lps