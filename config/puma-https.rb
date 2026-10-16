# Local-only HTTPS. Generate the certificate files with bin/setup-local-https.
ssl_bind "localhost", "3000",
  key: ".local-ssl/localhost-key.pem",
  cert: ".local-ssl/localhost.pem"
