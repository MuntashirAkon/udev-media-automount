install:
	install -D media-automount.rules $(DESTDIR)/usr/lib/udev/rules.d/99-media-automount.rules
	install -D umount_dmenu $(DESTDIR)/usr/bin/umount_dmenu
	install -D media-automount $(DESTDIR)/usr/bin/media-automount
	if [ -e /run/systemd/system ]; then \
	    install -D media-automount.systemd.rules $(DESTDIR)/usr/lib/udev/rules.d/99-media-automount.rules; \
	    install -D media-automount@.service $(DESTDIR)/usr/lib/systemd/system/media-automount@.service; \
	else \
	   install -D media-automount.rules $(DESTDIR)/usr/lib/udev/rules.d/99-media-automount.rules; \
	fi

