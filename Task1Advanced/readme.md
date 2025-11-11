# Terraform VM Module

Универсальный модуль для создания виртуальных машин в Yandex Cloud с поддержкой разных окружений.

## Структура

- `modules/vm/` - основной модуль виртуальной машины
- `envs/dev/` - конфигурация для development окружения
- `envs/stage/` - конфигурация для staging окружения  
- `envs/prod/` - конфигурация для production окружения

## Параметры модуля

- `vm_name` - имя виртуальной машины
- `cores` - количество CPU ядер
- `memory` - объем RAM в GB
- `disk_size` - размер подключаемого диска в GB
- `subnet_id` - ID подсети
- `ssh_key` - SSH публичный ключ
- `zone` - зона доступности

## Выходные значения

- `vm_id` - ID созданной VM
- `vm_name` - имя VM
- `external_ip` - внешний IP адрес
- `internal_ip` - внутренний IP адрес
- `disk_id` - ID подключенного диска

## Использование

### Запуск для конкретного окружения

```bash
# Development
cd envs/dev
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"

# Staging
cd envs/stage
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"

# Production
cd envs/prod
terraform init
terraform plan -var-file="terraform.tfvars"
terraform apply -var-file="terraform.tfvars"
```


## Уничтожение ресурсов

```bash
terraform destroy -var-file="terraform.tfvars"
```