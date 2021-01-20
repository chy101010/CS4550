server {
	listen 80;
	listen [::]:80;
	
	root /home/ning/www/citronk.com;

	index index.html;
	
	server_name citronk.com www.citronk.com;

	location / {
		try_files $uri $uri/ =404;
	}

}
