import sys
import os
import json
import datetime

# Agregar la ruta raíz del proyecto al PATH
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from src.Tarea2_check_ssh import check_ssh  # Importar función

OUTPUT_FILE = "examples/scan_results.json"

# Lista de pruebas (puedes editar con tus IPs o entornos)
pruebas = [
    ("192.168.1.10", "admin", "1234"),
    ("192.168.1.11", "root", "toor")
]

def ejecutar_scan():
    resultados = []
    for ip, user, pwd in pruebas:
        print(f"Probando {ip} con usuario {user}...")
        resultado = check_ssh(ip, user, pwd)
        resultados.append({
            "ip": ip,
            "usuario": user,
            "exito": resultado
        })

    # Guardar resultados
    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        json.dump(resultados, f, indent=2)

    print(f"Escaneo completado. Resultados guardados en {OUTPUT_FILE}")

if __name__ == "__main__":
    ejecutar_scan()
