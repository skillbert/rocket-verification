mcrl22lps -l stack rocket.mcrl2 rocket.lps
lps2pbes -v -c -f reqs_global.mcf rocket.lps rocket.pbes
pbes2bool rocket.pbes --file=rocket.lps --evidence-file=rocket-evidence.lps > tmpfile
set /p res= < tmpfile
del tmpfile
echo %res%
if %res%==true echo success & exit /b
lps2lts rocket-evidence.lps rocket-evidence.lts
ltsgraph rocket-evidence.lts