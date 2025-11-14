
# RedScan-Py: Escáner de Autenticación en Red Local

## 📌 Descripción General del Proyecto

**RedScan-Py** es una herramienta de auditoría de seguridad desarrollada en Python, diseñada para automatizar la revisión básica de seguridad en redes locales (LAN).

El propósito principal del proyecto es:

* **Identificar dispositivos activos** en una subred.
* **Evaluar la robustez de sus configuraciones SSH** (puerto 22).
* **Probar credenciales débiles o por defecto** para detectar configuraciones inseguras.

Este proyecto pertenece al área de **Red Team / Pentesting**, simulando reconocimiento y fuerza bruta controlada dentro de una red autorizada.

---

## ⚖️ Declaración Ética y Legal

Este software se desarrolló para **fines académicos y educativos** dentro del Producto Integrador de Aprendizaje (PIA) de la materia *Programación para Ciberseguridad*.

### Uso permitido

✔ Laboratorios personales
✔ Redes privadas propias
✔ Sistemas donde se tenga **autorización explícita**

### Prohibido

❌ Redes corporativas
❌ Redes públicas
❌ Sistemas de terceros sin permiso por escrito

La herramienta **no guarda credenciales exitosas**, no realiza acciones posteriores a la autenticación y las contraseñas utilizadas son sintéticas y de dominio público.

El equipo no se responsabiliza por su mal uso.

---

## 📂 Estructura del Proyecto

```
RedScan-Py/
│
├── check_ssh.py            # Función principal para probar SSH
├── scan_network.py         # Detección de dispositivos activos en LAN
├── ai_summary.py           # Integración con Google Gemini
├── main.py                 # Orquestación del flujo completo
│
├── scripts/
│   └── run_pipeline.sh     # Script para ejecutar todo el proceso
│
├── prompts/
│   └── prompt_v1.json      # Prompt base para la IA
│
├── examples/
│   └── logs.jsonl          # Ejemplo de logs generados
│
├── docs/
│   ├── propuesta.md        # Documento técnico del proyecto
│   └── ai_plan.md          # Plan de integración de IA
│
├── tests/
│   └── test_check_ssh.py   # Evidencia de funcionamiento
│
└── README.md               # Este archivo
```

---

## 🔧 Ejecución del Proyecto

### 1️⃣ Instalar dependencias

```bash
pip install -r requirements.txt
```

### 2️⃣ Dar permisos al script (Linux/Mac)

```bash
chmod +x scripts/run_pipeline.sh
```

### 3️⃣ Ejecutar el pipeline completo

```bash
./scripts/run_pipeline.sh
```

---

## 🤖 Integración de IA

Se añadió inteligencia artificial para generar:

* Resúmenes automáticos de hallazgos
* Evaluación de riesgos
* Recomendaciones técnicas

### Implementación incluida:

* `ai_summary.py` con API de **Google Gemini**
* Logging en `.jsonl`
* Prompt base en `prompts/prompt_v1.json`
* Flujo automatizado en `run_pipeline.sh`

---

📘 Estado del Proyecto 

El proyecto ha sido actualizado para cumplir con el Entregable 4 del PIA:

Flujo técnico totalmente consolidado

IA integrada mediante Google Gemini

Logging en JSON Lines

Evidencia reproducible en /examples

Documentación técnica en /docs/entregable_4.md

Para ejecutar el flujo completo:

./scripts/run_pipeline.sh
