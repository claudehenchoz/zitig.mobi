# zitig.mobi - html
News for your e-reader - scraped at 7 and at 4 again

## Close firewall except SSH/HTTP

    apt update
    apt install ufw
    ufw default deny incoming
    ufw allow ssh
    ufw allow 80/tcp
    ufw allow 443/tcp
    ufw enable

## Set up nginx

    apt install nginx

## Set up letsencrypt

(More steps in here: https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-16-04#step-2-obtain-an-ssl-certificate)

    echo deb http://ftp.debian.org/debian jessie-backports main >> /etc/apt/sources.list.d/backports.list
    apt update
    apt-get install certbot -t jessie-backports -y
    certbot certonly --webroot -w /var/www/html -d zitig.mobi

## Requirements for calibre

    apt install python-pil python-mechanize python-dateutil python-cssutils python-dnspython python-poppler python-pymtp python-netifaces python-psutil python-apsw python-dbus python-pygments optipng python-pyqt5 --yes

## Install calibre

    sudo -v && wget -nv -O- https://raw.githubusercontent.com/kovidgoyal/calibre/master/setup/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"
