
README.md: README.m4 gpl.txt agpl.txt gpl2agpl.patch
	m4 README.m4 > README.md

gpl.txt: a-gpl.m4
	m4 a-gpl.m4 > gpl.txt

agpl.txt: a-gpl.m4
	m4 -DAffero a-gpl.m4 > agpl.txt

gpl2agpl.patch: gpl.txt agpl.txt
	diff gpl.txt agpl.txt > gpl2agpl.patch || true
