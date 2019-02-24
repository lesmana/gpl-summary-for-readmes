
README.md: README.in gpl.txt agpl.txt
	m4 README.in > README.md

agpl.txt: gpl.txt gpl2agpl.patch
	patch gpl.txt gpl2agpl.patch -o agpl.txt

.PHONY: patch

patch:
	diff gpl.txt agpl.txt > gpl2agpl.patch || true
