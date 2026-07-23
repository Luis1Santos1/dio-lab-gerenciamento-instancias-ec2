# Guia prático para gerenciamento de instâncias EC2

## 1. Preparação

Antes de começar:

- acesse sua conta AWS;
- abra o serviço Amazon EC2;
- verifique a região;
- confira as permissões da conta;
- revise as condições de cobrança.

## 2. Criar a instância

1. Abra o painel do EC2.
2. Clique em **Executar instâncias**.
3. Informe o nome `dio-ec2-lab`.
4. Selecione uma AMI Linux.
5. Escolha o tipo de instância.
6. Selecione ou crie um par de chaves.
7. Configure a rede.
8. Configure o Security Group.
9. Revise o armazenamento.
10. Adicione tags.
11. Opcionalmente, informe um script de user data.
12. Execute a instância.

## 3. Regras sugeridas

| Porta | Uso | Origem |
|---:|---|---|
| 22 | SSH | Seu IP |
| 80 | HTTP | Internet |
| 443 | HTTPS | Internet |

Evite manter SSH aberto para `0.0.0.0/0`.

## 4. Conectar por SSH

Amazon Linux:

```bash
ssh -i "minha-chave.pem" ec2-user@IP_PUBLICO
```

Ubuntu:

```bash
ssh -i "minha-chave.pem" ubuntu@IP_PUBLICO
```

## 5. Validar o sistema

```bash
whoami
hostname
uname -a
cat /etc/os-release
df -h
free -h
uptime
```

## 6. Instalar o NGINX

```bash
sudo dnf update -y
sudo dnf install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx
```

Criar a página:

```bash
echo '<h1>Laboratório EC2 - DIO</h1>' | sudo tee /usr/share/nginx/html/index.html
```

Testar:

```bash
curl http://localhost
```

## 7. Monitorar

No console do EC2, consulte:

- CPU;
- rede;
- verificações de status;
- estado da instância.

## 8. Testar o ciclo de vida

### Reiniciar

Reinicia o sistema operacional.

### Interromper

Desliga a instância, mas permite iniciar novamente.

### Iniciar

Liga uma instância interrompida.

### Encerrar

Remove definitivamente a instância.

## 9. Limpeza

Ao terminar:

- encerre a instância;
- verifique volumes;
- verifique snapshots;
- verifique endereços IP;
- revise grupos de segurança;
- revise o painel de cobrança.
