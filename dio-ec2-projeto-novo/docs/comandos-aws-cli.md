# Comandos AWS CLI para EC2

## Verificar a AWS CLI

```bash
aws --version
```

## Configurar

```bash
aws configure
```

## Validar a identidade

```bash
aws sts get-caller-identity
```

## Listar instâncias

```bash
aws ec2 describe-instances   --query "Reservations[].Instances[].{ID:InstanceId,Nome:Tags[?Key=='Name']|[0].Value,Tipo:InstanceType,Estado:State.Name,IP:PublicIpAddress}"   --output table
```

## Consultar uma instância

```bash
aws ec2 describe-instances   --instance-ids i-xxxxxxxxxxxxxxxxx
```

## Iniciar uma instância

```bash
aws ec2 start-instances   --instance-ids i-xxxxxxxxxxxxxxxxx
```

## Interromper uma instância

```bash
aws ec2 stop-instances   --instance-ids i-xxxxxxxxxxxxxxxxx
```

## Reiniciar uma instância

```bash
aws ec2 reboot-instances   --instance-ids i-xxxxxxxxxxxxxxxxx
```

## Encerrar uma instância

```bash
aws ec2 terminate-instances   --instance-ids i-xxxxxxxxxxxxxxxxx
```

O encerramento é destrutivo. Confira o identificador antes de executar.

## Adicionar tags

```bash
aws ec2 create-tags   --resources i-xxxxxxxxxxxxxxxxx   --tags     Key=Name,Value=dio-ec2-lab     Key=Project,Value=dio-aws     Key=Environment,Value=lab
```

## Listar grupos de segurança

```bash
aws ec2 describe-security-groups   --output table
```

## Listar volumes EBS

```bash
aws ec2 describe-volumes   --query "Volumes[].{ID:VolumeId,Estado:State,Tamanho:Size,Tipo:VolumeType}"   --output table
```

## Listar endereços IP elásticos

```bash
aws ec2 describe-addresses   --output table
```

## Buscar instâncias pela tag

```bash
aws ec2 describe-instances   --filters "Name=tag:Project,Values=dio-aws"   --query "Reservations[].Instances[].{ID:InstanceId,Estado:State.Name}"   --output table
```
