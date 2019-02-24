gpl summary for readmes
-----------------------

a short summary of the gnu gpl to put in readmes.
the aim is to pronounce the four freedoms
and the copyleft protecting the freedoms.
it should be correct (no false claims) but it is not complete.

for gpl:

esyscmd(`sed "s/^/    /" gpl.txt')

for agpl:

esyscmd(`sed "s/^/    /" agpl.txt')

diff:

esyscmd(`diff -u gpl.txt agpl.txt | sed "s/^/    /"')
