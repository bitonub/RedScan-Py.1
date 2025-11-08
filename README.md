# RedScan-Py: Escáner de Autenticación en Red Local

## Descripción General del Proyecto

RedScan-Py es una herramienta de auditoría de seguridad desarrollada en Python, diseñada para automatizar la revisión de seguridad básica en redes locales (LAN).

El propósito principal del proyecto es **identificar dispositivos activos** en una subred y, posteriormente, **evaluar la robustez de sus configuraciones de acceso SSH** (puerto 22) mediante la comprobación de credenciales débiles o por defecto.

Este proyecto pertenece al área de **Red Team / Pentesting**, simulando un ataque de reconocimiento y fuerza bruta interna para identificar y reportar vulnerabilidades de autenticación antes de que un actor malicioso pueda explotarlas.

## Declaración Ética y Legal

Este software ha sido desarrollado con fines **estrictamente académicos y educativos** en el marco del Producto Integrador de Aprendizaje (PIA) de la materia de Programación para Ciberseguridad.

* **Uso Autorizado:** La herramienta solo debe ejecutarse en entornos de laboratorio controlados, redes privadas (propias) o sobre sistemas donde se tenga autorización explícita para realizar pruebas de penetración.
* **Prohibición:** Se prohíbe estrictamente el uso de esta herramienta en redes públicas, corporativas o de terceros sin consentimiento previo por escrito.
* **Datos:** Las listas de contraseñas utilizadas para las pruebas son sintéticas y de dominio público (ej. '123456', 'admin'), y no representan credenciales reales de ningún sistema.
* **No Malicia:** El objetivo es reportar vulnerabilidades, no explotarlas. La herramienta no almacenará credenciales exitosas ni intentará realizar acciones post-explotación.

El equipo de desarrollo no se hace responsable del mal uso de este código.

## Estado del Proyecto

 Función `check_ssh` implementada en `/check_ssh.py`  
 Evidencia de ejecución en `/test_check_ssh.py`  
 Logging en formato JSON Lines (`ssh_log.jsonl`)  
 Documentación técnica actualizada (`/docs/propuesta.md`)  
