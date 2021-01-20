server {
	listen 80;
	listen [::]:80;
	
	root /home/ning/www/hw01.citronk.com;

	index index.html;

	server_name hw01.citronk.com;

	location / {
		try_files $uri $uri/ =404;
	}
}
