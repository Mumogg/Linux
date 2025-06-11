#!/bin/bash

echo "[*] Actualizando el sistema..."
sudo apt update && sudo apt upgrade -y

echo "[*] Creando usuario 'soporte' y agregando a sudoers..."
sudo adduser soporte
sudo usermod -aG sudo soporte

echo "[*] Configurando SSH..."
sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
echo "Banner /etc/issue.net" | sudo tee -a /etc/ssh/sshd_config
echo "Unauthorized access is prohibited." | sudo tee /etc/issue.net
sudo systemctl restart sshd

echo "[*] Configurando UFW..."
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow OpenSSH
sudo ufw enable

echo "[*] Instalando y configurando Fail2Ban..."
sudo apt install fail2ban -y
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
sudo systemctl enable --now fail2ban

echo "[*] Instalando auditd..."
sudo apt install auditd -y
sudo systemctl enable --now auditd

echo "[*] Desactivando servicios innecesarios..."
sudo systemctl disable bluetooth.service 2>/dev/null

echo "[*] Guardando logs..."
mkdir -p logs
sudo ufw status verbose > logs/ufw-status.txt
sudo fail2ban-client status > logs/fail2ban-status.txt
sudo ausearch -ua soporte > logs/auditd-logs.txt

echo "[✔] Endurecimiento completado. ¡Listo para capturar evidencia!"
