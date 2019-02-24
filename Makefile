
README.md: README.m4 gpl.txt agpl.txt
	m4 README.m4 > README.md

agpl.txt: gpl.txt gpl2agpl.patch
	patch gpl.txt gpl2agpl.patch -o agpl.txt

.PHONY: patch

patch:
	diff gpl.txt agpl.txt > gpl2agpl.patch || true
