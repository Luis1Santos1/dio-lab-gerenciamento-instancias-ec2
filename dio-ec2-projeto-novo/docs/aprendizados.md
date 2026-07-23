# Aprendizados do laboratório

## EC2

O Amazon EC2 permite criar e administrar servidores virtuais na nuvem.

## AMI

A AMI contém o sistema operacional e as configurações iniciais da instância.

## Tipo de instância

O tipo define recursos como CPU, memória e rede.

## EBS

O EBS é utilizado como armazenamento persistente.

Um volume pode continuar existindo mesmo quando a instância é interrompida.

## Security Group

O Security Group funciona como um firewall virtual.

Ele controla o tráfego de entrada e saída.

## Par de chaves

O par de chaves pode ser utilizado para acessar uma instância.

A chave privada nunca deve ser publicada.

## Tags

As tags ajudam na organização, identificação e controle de custos.

## Stop e Terminate

### Stop

- desliga a instância;
- permite iniciar novamente;
- pode manter o volume EBS;
- pode alterar o endereço público.

### Terminate

- encerra definitivamente;
- não permite iniciar novamente;
- pode remover o volume raiz.

## Erros comuns

### Timeout no SSH

Possíveis causas:

- porta 22 bloqueada;
- IP de origem incorreto;
- usuário SSH incorreto;
- chave incorreta;
- instância sem IP público;
- instância ainda inicializando.

### Página web não abre

Possíveis causas:

- porta 80 bloqueada;
- NGINX parado;
- endereço IP incorreto;
- configuração de rede incorreta.

## Principais conclusões

1. Uma instância depende de outros recursos.
2. Segurança deve ser planejada desde o início.
3. Interromper não remove todos os custos.
4. Tags facilitam a administração.
5. Automação reduz erros.
6. Limpeza dos recursos é parte do laboratório.
7. A documentação facilita estudos futuros.
