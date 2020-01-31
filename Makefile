install:
	install bin/* /usr/bin
	install udev/* /usr/lib/udev/rules.d
	install systemd/* /usr/lib/systemd/system

# Intended only for development 😅
update:
	rm bin/*
	cp /usr/bin/android-mount bin/android-mount
	cp /usr/bin/android-umount bin/android-umount
	cp /usr/bin/media-mount bin/media-mount
	cp /usr/bin/media-umount bin/media-umount
	rm udev/*
	cp /usr/lib/udev/rules.d/99-android-automount.rules udev/99-android-automount.rules
	cp /usr/lib/udev/rules.d/99-media-automount.rules udev/99-media-automount.rules
	rm systemd/*
	cp /usr/lib/systemd/system/android-automount@.service systemd/android-automount@.service
	cp /usr/lib/systemd/system/media-automount@.service systemd/media-automount@.service

