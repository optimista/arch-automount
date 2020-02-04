install:
	install bin/* /usr/bin
	install udev/* /etc/udev/rules.d
	install systemd/* /etc/systemd/system

# Intended only for development 😅
update:
	rm bin/*
	cp /usr/bin/android-mount bin/android-mount
	cp /usr/bin/android-umount bin/android-umount
	cp /usr/bin/media-mount bin/media-mount
	cp /usr/bin/media-umount bin/media-umount
	rm udev/*
	cp /etc/udev/rules.d/99-android-automount.rules udev/99-android-automount.rules
	cp /etc/udev/rules.d/99-media-automount.rules udev/99-media-automount.rules
	rm systemd/*
	cp /etc/systemd/system/android-automount@.service systemd/android-automount@.service
	cp /etc/systemd/system/media-automount@.service systemd/media-automount@.service

