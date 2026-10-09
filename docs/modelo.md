# Modelo de Datos - Sistema de Detección de Fraude Bancario

Este modelo describe la estructura de datos para una plataforma de prevención de fraude bancario, donde los **funcionarios bancarios** pueden configurar el **umbral de tolerancia** para filtrar transacciones sospechosas cuya discriminación es ejecutada mediante un **modelo de Machine Learning (ML)** previamente entrenado.

---

## 1. funcionarios
Registra a los empleados bancarios (analistas de fraude, auditores y supervisores) que interactúan con el frontend.

- `id` (PK)
- `nombre`
- `correo`
- `rol` (ej. ANALISTA, SUPERVISOR, ADMIN)
- `estado` (ACTIVO, INACTIVO)
- `fecha_creacion`

---

## 2. configuraciones_tolerancia
Almacena los umbrales de tolerancia configurados por los funcionarios para determinar a partir de qué score de riesgo una transacción se clasifica como fraudulenta o sospechosa.

- `id` (PK)
- `funcionario_id` (FK a funcionarios)
- `umbral_tolerancia` (valor numérico entre 0.0 y 1.0)
- `canal_aplicable` (ej. TODOS, WEB, MOVIL, CAJERO, DATAFONO)
- `activo` (booleano: indica si es la regla vigente)
- `motivo_cambio` (justificación ingresada por el funcionario)
- `fecha_actualizacion`

---

## 3. cuentas
Información de las cuentas bancarias asociadas a clientes.

- `id` (PK)
- `numero_cuenta`
- `titular_nombre`
- `titular_documento`
- `tipo_cuenta` (AHORROS, CORRIENTE)
- `estado` (ACTIVA, BLOQUEADA)

---

## 4. transacciones
Transacciones monetarias procesadas por el banco.

- `id` (PK)
- `cuenta_origen_id` (FK a cuentas)
- `cuenta_destino_id` (FK a cuentas, opcional en retiros o pagos)
- `monto`
- `moneda` (ej. COP, USD)
- `canal` (MOVIL, WEB, CAJERO, POS)
- `fecha_hora`
- `estado` (PENDIENTE, APROBADA, RECHAZADA, EN_REVISION)

---

## 5. modelos_ml
Registro y metadatos de los modelos de Machine Learning previamente entrenados y desplegados para la inferencia de fraude.

- `id` (PK)
- `nombre` (ej. FraudDetector-XGBoost)
- `version` (ej. v1.2.0)
- `descripcion`
- `fecha_entrenamiento`
- `activo` (booleano)

---

## 6. evaluaciones_fraude
Resultados de la discriminación realizada por el modelo de ML para cada transacción, evaluada contra la tolerancia configurada.

- `id` (PK)
- `transaccion_id` (FK a transacciones)
- `modelo_ml_id` (FK a modelos_ml)
- `tolerancia_id` (FK a configuraciones_tolerancia)
- `score_fraude` (probabilidad estimada de fraude: 0.0 a 1.0)
- `umbral_aplicado` (umbral de tolerancia vigente al evaluar)
- `es_sospechosa` (booleano: verdadero si score_fraude >= umbral_aplicado)
- `fecha_evaluacion`

---

## 7. revisiones_fraude
Registro de auditoría de las acciones tomadas por el funcionario bancario al inspeccionar transacciones sospechosas.

- `id` (PK)
- `evaluacion_id` (FK a evaluaciones_fraude)
- `funcionario_id` (FK a funcionarios)
- `decision` (CONFIRMADO_FRAUDE, FALSO_POSITIVO, APROBADO_MANUAL)
- `justificacion`
- `fecha_revision`

---

## Relaciones del Modelo

1. **Un funcionario puede crear múltiples configuraciones de tolerancia** (`funcionarios` 1:N `configuraciones_tolerancia`).
2. **Una cuenta puede originar múltiples transacciones** (`cuentas` 1:N `transacciones` como cuenta origen).
3. **Una cuenta puede recibir múltiples transacciones** (`cuentas` 1:N `transacciones` como cuenta destino).
4. **Una transacción es analizada en una o más evaluaciones de fraude** (`transacciones` 1:N `evaluaciones_fraude`).
5. **Un modelo de ML ejecuta muchas evaluaciones de fraude** (`modelos_ml` 1:N `evaluaciones_fraude`).
6. **Una configuración de tolerancia se aplica en muchas evaluaciones de fraude** (`configuraciones_tolerancia` 1:N `evaluaciones_fraude`).
7. **Una evaluación de fraude puede tener una o más revisiones manuales** (`evaluaciones_fraude` 1:N `revisiones_fraude`).
8. **Un funcionario realiza múltiples revisiones de fraude** (`funcionarios` 1:N `revisiones_fraude`).