yum -y install lorax
setenforce 0
livemedia-creator --ks ks/el8-livemedia-minimal.ks --no-virt --resultdir  media/el8 --project RHEL-8-beta-live --make-iso --iso-only --iso-name RHEL-8-beta-live-x86_64.iso --releasever 8 --volid RHEL-8-beta-live --title RHEL-beta-live --macboot