#!/bin/bash
set -euo pipefail

dnf update -y
dnf install -y nginx

cat > /usr/share/nginx/html/index.html <<'HTML'
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Laboratório EC2 - DIO</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f4f5f7;
      color: #232f3e;
      margin: 0;
      padding: 40px;
    }

    main {
      max-width: 720px;
      margin: 60px auto;
      padding: 32px;
      background: #ffffff;
      border-radius: 12px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
    }

    h1 {
      color: #ff9900;
    }

    code {
      background: #eef0f2;
      padding: 2px 6px;
      border-radius: 4px;
    }
  </style>
</head>
<body>
  <main>
    <h1>Laboratório EC2 concluído!</h1>
    <p>Esta página está sendo executada em uma instância Amazon EC2.</p>
    <p>Servidor utilizado: <code>NGINX</code></p>
  </main>
</body>
</html>
HTML

systemctl enable nginx
systemctl restart nginx
