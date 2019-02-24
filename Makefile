
README.md: README.in gpl.txt agpl.txt
	m4 README.in > README.md

agpl.txt: gpl.txt agpl.patch
	patch gpl.txt agpl.patch -o agpl.txt

.PHONY: patch

patch:
	diff gpl.txt agpl.txt > agpl.patch || true
