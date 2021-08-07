# install
zypper ref
zypper up
zypper in python3 python3-virtualenv uwsgi uwsgi-python3
zypper in git curl
zypper in system-user-wwwrun
zypper in emacs-nox

# clone
cd /usr/local/bin/
git clone https://github.com/chiyokolinux/monfetch

# venv
cd monfetch/server
virtualenv env
source env/bin/activate

# setup
pip install flask

# log dirs
mkdir /var/log/monfetch
chown -R wwwrun:wwwrun /var/log/monfetch

# service
cp monfetch-server.service /etc/systemd/system/
systemctl enable --now monfetch-server.service
