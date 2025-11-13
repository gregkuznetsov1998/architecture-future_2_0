# Каталог доменных событий

## PatientRegistered
**Контекст-источник**: Медицинский домен
**Семантика**: Зарегистрирован новый пациент в системе
**Контракт**:
```json
{
  "patient_id": "string",
  "full_name": "string", 
  "birth_date": "date",
  "registration_date": "datetime"
}
```

## MedicalStudyCompleted
**Контекст-источник**: Медицинский домен
**Семантика**: Завершено медицинское исследование пациента
**Контракт**:
```json
{
  "study_id": "string",
  "patient_id": "string",
  "study_type": "string",
  "completion_date": "datetime",
  "results_summary": "string"
}
```

## LoanContractCreated
**Контекст-источник**: Финансовый домен
**Семантика**: Создан новый кредитный договор
**Контракт**:
```json
{
  "contract_id": "string",
  "patient_id": "string",
  "amount": "decimal",
  "interest_rate": "decimal",
  "start_date": "date"
}
```

## PaymentProcessed
**Контекст-источник**: Финансовый домен
**Семантика**: Успешно проведён платёж по договору
**Контракт**:
```json
{
  "payment_id": "string",
  "contract_id": "string", 
  "amount": "decimal",
  "payment_date": "datetime",
  "payment_type": "string"
}
```

## AIAnalysisCompleted
**Контекст-источник**: ИИ-домен
**Семантика**: Завершён анализ данных ИИ-моделью
**Контракт**:
```json
{
  "analysis_id": "string",
  "study_id": "string",
  "model_version": "string",
  "confidence_score": "decimal",
  "completion_timestamp": "datetime"
}
```