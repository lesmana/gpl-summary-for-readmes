gpl summary for readmes
-----------------------

a short summary of the gnu gpl to put in readmes.
it pronounces the four freedoms and the copyleft obligations to protect the freedoms.
it is correct (no false claims) but it is not complete.

for gpl:

    This program is free software.
    It is licensed under the GNU GPL version 3 or later.
    That means you are free to use this program for any purpose;
    free to study and modify this program to suit your needs;
    and free to share this program or your modifications with anyone.
    If you share this program or your modifications
    you must do so under the same license.
    That means you must also share the source code (modified or not)
    and grant the recipients the same freedoms.
    For details see https://www.gnu.org/licenses/gpl-3.0.html


for agpl:

    This program is free software.
    It is licensed under the GNU AGPL version 3 or later.
    That means you are free to use this program for any purpose;
    free to study and modify this program to suit your needs;
    and free to share this program or your modifications with anyone.
    If you share this program or your modifications
    or use it as a web service
    you must do so under the same license.
    That means you must also share the source code (modified or not)
    and grant the recipients the same freedoms.
    For details see https://www.gnu.org/licenses/agpl-3.0.html


diff:

    --- gpl.txt	2019-02-24 22:03:56.256405408 +0100
    +++ agpl.txt	2019-02-24 22:03:56.263068705 +0100
    @@ -1,10 +1,11 @@
     This program is free software.
    -It is licensed under the GNU GPL version 3 or later.
    +It is licensed under the GNU AGPL version 3 or later.
     That means you are free to use this program for any purpose;
     free to study and modify this program to suit your needs;
     and free to share this program or your modifications with anyone.
     If you share this program or your modifications
    +or use it as a web service
     you must do so under the same license.
     That means you must also share the source code (modified or not)
     and grant the recipients the same freedoms.
    -For details see https://www.gnu.org/licenses/gpl-3.0.html
    +For details see https://www.gnu.org/licenses/agpl-3.0.html


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
