
README.md: README.m4 gpl.txt agpl.txt
	m4 README.m4 > README.md

gpl.txt: gpl.m4
	m4 gpl.m4 > gpl.txt

agpl.txt: gpl.m4
	m4 -DAffero gpl.m4 > agpl.txt

preview: README.html
	@echo open README.html in browser

README.html: README.md
	pandoc README.md -o README.html
