# Install target must be run as root
install:
	@[ `id --user` -eq 0 ] || { echo "Target must be run as root" 1>&2; exit 1; }
	cp transcode-hevc-recursive /usr/bin/

# Uninstall target must be run as root
uninstall:
	@[ `id --user` -eq 0 ] || { echo "Target must be run as root" 1>&2; exit 1; }
	rm -f /usr/bin/transcode-hevc-recursive
