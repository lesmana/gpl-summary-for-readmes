gpl summary for readmes
-----------------------

a short summary of the gnu gpl to put in readmes.
it pronounces the four freedoms (use, study, modify, share)
and the copyleft obligations (share under same conditions).
it is (hopefully) correct in the sense that it contains no false claims.
it is not complete since it does not communicate all points of the license.
also it is in no way lawyer proof.

the summary for gpl:

    This program is free software.
    It is licensed under the GNU GPL version 3 or later.
    That means you are free to use this program for any purpose;
    free to study and modify this program to suit your needs;
    and free to share this program or your modifications with anyone.
    If you share this program or your modifications
    you must grant the recipients the same freedoms.
    That means you must share the source code under the same license.
    For details see https://www.gnu.org/licenses/gpl-3.0.html


the summary for agpl:

    This program is free software.
    It is licensed under the GNU AGPL version 3 or later.
    That means you are free to use this program for any purpose;
    free to study and modify this program to suit your needs;
    and free to share this program or your modifications with anyone.
    If you share this program or your modifications
    or use it as a web service
    you must grant the recipients the same freedoms.
    That means you must share the source code under the same license.
    For details see https://www.gnu.org/licenses/agpl-3.0.html


the diff of the two (agpl basically just adds one line):

     This program is free software.
    -It is licensed under the GNU GPL version 3 or later.
    +It is licensed under the GNU AGPL version 3 or later.
     That means you are free to use this program for any purpose;
     free to study and modify this program to suit your needs;
     and free to share this program or your modifications with anyone.
     If you share this program or your modifications
    +or use it as a web service
     you must grant the recipients the same freedoms.
     That means you must share the source code under the same license.
    -For details see https://www.gnu.org/licenses/gpl-3.0.html
    +For details see https://www.gnu.org/licenses/agpl-3.0.html


how to use
----------

copy the text for the license you want.
paste it into your README or whatever documentation.
rejoice!!1

the text is also availabe unformatted in the files `gpl.txt` and `agpl.txt`.

how to edit
-----------

basically only edit the .m4 files.
a makefile will generate the rest out of the .m4 files.
m4 is a templating language of old.
as is makefile a build system of old.

to change the license summary edit the gpl.m4 file.
the makefile will generate gpl.txt and agpl.txt from the .m4 file.
since the diff of the gpl and agpl summary is only one line
(apart from the obvious change from gpl to agpl)
both summaries are packed in one file.
an m4 conditional expression controls the differing line.
you should try hard to keep the diff to be only one line.

to change this readme edit the README.m4 file.
the makefile will generate README.md from the .m4 file.
the .m4 file includes the .txt files and generates and includes a diff.

all files, generated or not, are commited.
usually generated files are not commited.
but in this case we want the generated README.md
because github and gitlab prominently display the README.
we also want gpl.txt and agpl.txt for easy access from the webinterface.
otherwise people would need to download and "compile" themselves.
and in worst case people don't even have make and m4 installed.

so edit the files, run make, inspect files, then commit all the files.
for great comfort and enjoyment.

goals and non-goals
-------------------

* it should be a human readable (as opposed to lawyer readable).
* it should pronounce the four freedoms that is granted by the license.
  the freedom to use, study, modify, and share.
* it should pronounce the copyleft obligations to protect those freedoms.
  the obligation to share under the same license, if sharing.
* it should be correct. that means there should be no false claims.
* it should be short.
  at least shorter than the snippet that is recommend by gpl itself.
* it does not need to be complete.
  not mentioned is for example the fact that you can charge money for the distribution.
  also not mentioned are how violations are handled.
* it does not need to be lawyer proof. at all.
* the diff from the gpl and agpl summary should be only one line
  (apart from the obvious change from gpl to agpl).

license
-------

Copyright Lesmana Zimmer lesmana@gmx.de

These texts are free to use.
They are licensed under the WTFPL version 2.
That means that you can do what the fuck
you want to with these texts.
For details see http://www.wtfpl.net/

If you use this and want to credit me
you can put a link to this repository in your commit comment.
