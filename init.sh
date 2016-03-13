sudo rm -rf /etc/nginx/sites-available/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

sudo ln -sf $PWD/etc/hello.py /etc/gunicorn.d/hello.py
gunicorn -c /etc/gunicorn.d/hello.py hello:app
