gpl summary for readmes
-----------------------

a short summary of the gnu gpl to put in readmes.
it pronounces the four freedoms (use, study, modify, share)
and the copyleft obligations (if sharing share under same conditions).
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
    To be more specific: you must share the source code under the same license.
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
    To be more specific: you must share the source code under the same license.
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
     To be more specific: you must share the source code under the same license.
    -For details see https://www.gnu.org/licenses/gpl-3.0.html
    +For details see https://www.gnu.org/licenses/agpl-3.0.html

how to use
----------

1. copy the text for the license you want.
2. paste it into your README or whatever documentation.
3. rejoice!!1

the text is also availabe unformatted in the files `gpl.txt` and `agpl.txt`.

how to edit
-----------

basically only edit the m4 files.
a makefile will generate the rest out of the m4 files.
m4 is a templating language of old.
as is makefile a build system of old.

to change the license summary edit the gpl.m4 file.
the makefile will generate both gpl.txt and agpl.txt from the m4 file.
since the diff of the gpl and agpl summary is only one line
(apart from the obvious change from gpl to agpl)
both summaries are packed in one file.
an m4 conditional expression controls the differing line.
you should try hard to keep the diff to be only one line.

to change this readme edit the README.m4 file.
the makefile will generate README.md from the m4 file.
the m4 file will include both gpl.txt and agpl.txt
and generate and include a diff of the two.

all files, generated or not, are then commited.
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
* it should highlight the four freedoms that is granted by the license:
  the freedom to use, study, modify, and share.
* it should highlight the copyleft obligation to protect those freedoms:
  if sharing must share under the same license.
* it should be correct. that means there should be no false claims.
* it should be short.
  at least shorter than the snippet that is recommend by gpl itself.
* it does not need to be complete.
  not mentioned is for example the fact that you can charge money for the distribution.
  also not mentioned are how violations are handled.
* it does not need to be lawyer proof. at all.
* the diff from the gpl and agpl summary should be only one line
  (apart from the obvious change from gpl to agpl).

comparison with GPL own text
----------------------------

here is the summary from the GPL preamble

> When we speak of free software, we are referring to freedom, not price.
  Our General Public Licenses are designed to make sure that you have
  the freedom to distribute copies of free software
  (and charge for them if you wish),
  that you receive source code or can get it if you want it,
  that you can change the software or use pieces of it in new free programs,
  and that you know you can do these things.

> To protect your rights, we need to prevent others
  from denying you these rights or asking you to surrender the rights.
  Therefore, you have certain responsibilities
  if you distribute copies of the software, or if you modify it:
  responsibilities to respect the freedom of others.

and the recommended README snippet

    <one line to give the program's name and a brief idea of what it does.>
    Copyright (C) <year>  <name of author>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

from [https://www.gnu.org/licenses/gpl-3.0.html](https://www.gnu.org/licenses/gpl-3.0.html)

my toughts:
the summary in the preamble mentions all four freedoms
and the copyleft obligation.
but it feels convoluted.
it is not straighforward enough for my taste.

the recommended README snippet only mentions that it is free software
without explaining what that means.
and it does not mention the copyleft obligation at all.
instead it disclaims warranty. loudly. as required by U.S. law.

i wanted a short straightforward text highlighting all the freedoms
and the copyleft obligation.
friendly and informative for the user and developer.
the shouting for the lawyers can be kept in the full license text
which is included anyway.
i hope i managed to do so with my summaries.

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
