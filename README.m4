gpl summary for readmes
-----------------------

a short summary of the gnu gpl to put in readmes

for gpl:

esyscmd(`sed "s/^/    /" gpl.txt')

for agpl:

esyscmd(`sed "s/^/    /" agpl.txt')

diff:

esyscmd(`diff -u gpl.txt agpl.txt | sed "s/^/    /"')
