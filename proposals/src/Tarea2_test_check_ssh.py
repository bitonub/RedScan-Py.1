# /examples/test_check_ssh.py
from check_ssh import check_ssh

# IPs de ejemplo (modifica según tu entorno)
pruebas = [
    ("192.168.1.10", "admin", "1234"),
    ("192.168.1.11", "root", "toor"),
]

for ip, user, pwd in pruebas:
   resultado = check_ssh(
    ip, user, pwd,
    log_path=r"C:\Users\emili\OneDrive\Escritorio\Programación para ciberseguridad\src\ssh_log.jsonl"
   )
   print(f"{ip} → {'✔️ Conectado' if resultado else '❌ Falló'}")
