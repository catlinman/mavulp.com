
# HTTP to HTTPS redirect
server {
	listen 80;
	listen [::]:80;

	server_name roflbox.mavulp.com;
	return 301 https://$server_name$request_uri;
}

# SSL server setup
server {
	listen 443 ssl http2;
	listen [::]:443 ssl http2;

	include snippets/ssl-mavulp.com.conf;
	include snippets/ssl-params.conf;

	server_name roflbox.mavulp.com;

	root /var/www/roflbox.mavulp.com/public;
	access_log /var/www/roflbox.mavulp.com/private/log/access.log;
	error_log /var/www/roflbox.mavulp.com/private/log/error.log;

	index index.html index.htm;

	error_page 403 = @fbredir;
	error_page 404 = @nfredir;
	error_page 500 502 503 504 = @ngredir;

	location / {
		try_files $uri $uri/ $uri.html =404;
	}

	location @fbredir {
		rewrite  .*  /403 permanent;
	}

	location @nfredir {
		rewrite  .*  /404 permanent;
	}

	location @ngredir {
		rewrite  .*  /500 permanent;
	}
}
