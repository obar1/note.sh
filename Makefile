current_dir = $(shell pwd)

install:
	cp    $(current_dir)/src/.note.init /usr/local/bin
	ln -s $(current_dir)/src/note.sh /usr/local/bin/note.sh

uninstall:
	rm     /usr/local/bin/.note.init
	unlink /usr/local/bin/note.sh