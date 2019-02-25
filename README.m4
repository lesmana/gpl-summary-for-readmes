gpl summary for readmes
-----------------------

a short summary of the gnu gpl to put in readmes.
it pronounces the four freedoms and the copyleft obligations to protect the freedoms.
it is correct (no false claims) but it is not complete.

for gpl:

esyscmd(`sed "s/^/    /" gpl.txt')

for agpl:

esyscmd(`sed "s/^/    /" agpl.txt')

diff:

esyscmd(`diff -u gpl.txt agpl.txt | sed "s/^/    /"')

how to use
----------

copy the text for the license you want.
paste it into your README or whatever documentation.
rejoice!!1

the text is also availabe unformatted in the files gpl.txt and agpl.txt.

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

it should be a human readable (as opposed to lawyer readable).
it should pronounce the four freedoms that is granted by the license.
it should pronounce the copyleft obligations to protect those freedoms.
it should be correct. that means there should be no false claims.
it should be short.
at least shorter than the snippet that is recommend by gpl itself.

it does not need to be complete.
for example the fact that you can charge money for the distribution is not mentioned.
also the obligation to protocol your changes with timestamps.
although that one is covered by git or other versioning systems already.

it does not need to be lawyer proof.

license
-------

Copyright Lesmana Zimmer lesmana@gmx.de

These texts are free to use.
They are licensed under the WTFPL version 2.
That means that you can do what the fuck
you want to with these texts.
For details see http://www.wtfpl.net/

If you want you can put a link to this repository
in the commit comment as credit to me
when you decide to use my summaries in your project.
