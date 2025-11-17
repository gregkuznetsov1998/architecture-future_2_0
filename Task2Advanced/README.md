## Описание скриптов

### backend.tf
Конфигурация удаленного хранения состояния Terraform в Yandex Object Storage (S3-совместимое):
- `backend "s3"` - использует S3-совместимое хранилище
- `endpoint` - адрес Yandex Object Storage
- `bucket` - имя бакета для состояния
- `key` - имя файла состояния
- Параметры `skip_*` обеспечивают совместимость с Yandex Cloud

### main.tf
Основная конфигурация инфраструктуры:
- `provider "yandex"` - настройка провайдера Yandex Cloud
- `yandex_compute_instance` - создание виртуальной машины
- `yandex_vpc_network` - создание сети
- `yandex_vpc_subnet` - создание подсети

### variables.tf
Объявление переменных для безопасной передачи параметров:
- `yandex_cloud_id` - ID облака
- `yandex_folder_id` - ID каталога  
- `yandex_token` - OAuth-токен
- `s3_access_key` - ключ доступа Object Storage
- `s3_secret_key` - секретный ключ Object Storage

### outputs.tf
Определение выходных данных после развертывания:
- `vm_external_ip` - внешний IP созданной VM

### .github/workflows/terraform.yml
GitHub Actions pipeline для автоматизации:

**Триггеры:**
- При push в main
- При создании pull request в main

**Шаги выполнения:**
1. `Checkout` - получение кода из репозитория
2. `Setup Terraform` - установка Terraform
3. `Terraform Format` - проверка форматирования кода
4. `Terraform Init` - инициализация с удаленным бэкендом
5. `Terraform Validate` - проверка синтаксиса конфигурации
6. `Terraform Plan` - план изменений (только для PR)
7. `Terraform Plan Status` - комментарий в PR с результатами
8. `Terraform Apply` - применение изменений (только для main)

## Как запустить

### Предварительная настройка:
1. Создайте бакет в Yandex Object Storage
2. Создайте сервисный аккаунт и получите ключи доступа

### Настройка GitHub:
1. В репозитории перейдите в Settings → Secrets and variables → Actions
2. Добавьте Variables:
   - `YC_CLOUD_ID` - ID облака
   - `YC_FOLDER_ID` - ID каталога
   - `S3_ACCESS_KEY` - ключ доступа Object Storage
3. Добавьте Secrets:
   - `YC_TOKEN` - OAuth-токен Yandex Cloud
   - `S3_SECRET_KEY` - секретный ключ Object Storage

### Запуск pipeline:
1. Сделайте push в ветку main - запустится полный pipeline с apply
2. Создайте pull request - запустится проверка с plan

### Локальный запуск:
```bash
# Инициализация
terraform init

# План
terraform plan

# Применение
terraform apply