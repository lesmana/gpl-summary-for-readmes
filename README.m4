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

the plain text is available without indentation in gpl.txt and agpl.txt

how to use
----------

copy the text for the license you want.
paste it into your README or whatever documentation.
rejoice!!1

how to edit
-----------

basically only edit the .m4 files. the other files are generated from those.
gpl.txt and agpl.txt is generated from a-gpl.m4.
README.md is generated from README.m4.

after editing run make. inspect the result. then commit all the files.
the generated files are commited for your comfort.
so you can just click and enjoy.

goals and non-goals
-------------------

it should be a human readable.
it should be short.
at least shorter than the snippet that is recommend by gpl itself.
it should pronounce the four freedoms that is granted by the license.
it should pronounce the copyleft obligations to protect those freedoms.
it should be correct (no false claims) but does not need to be complete.
