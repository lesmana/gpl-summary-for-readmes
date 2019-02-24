
README: README.in gpl.txt agpl.txt
	m4 README.in > README.md

agpl.txt: gpl.txt agpl.patch
	patch gpl.txt agpl.patch -o agpl.txt
