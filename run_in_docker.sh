# yum -y install lorax anaconda
# livemedia-creator --ks /eight-livecd/ks/el8-livemedia-minimal.ks --no-virt --resultdir  /eight-livecd/media/el8 --project RHEL-8-beta-live --make-iso --iso-only --iso-name RHEL-8-beta-live-x86_64.iso --releasever 8 --volid RHEL-8-beta-live --title RHEL-beta-live --macboot
# Command '['losetup', '--find', '--show', '/eight-livecd/media/el8/lmc-disk-na8a0qr3.img']' returned non-zero exit status 1.
yum -y install wget
wget -c "https://archive.org/download/rhel-8.0-beta-1-x86_64-dvd/rhel-8.0-beta-1-x86_64-dvd.iso"
yum -y install lorax qemu-kvm
livemedia-creator --ks /eight-livecd/ks/el8-livemedia-minimal.ks --resultdir  /eight-livecd/media/el8 --project RHEL-8-beta-live --make-iso --iso-only --iso-name RHEL-8-beta-live-x86_64.iso --releasever 8 --volid RHEL-8-beta-live --title RHEL-beta-live --macboot --iso=/eight-livecd/rhel-8.0-beta-1-x86_64-dvd.iso
