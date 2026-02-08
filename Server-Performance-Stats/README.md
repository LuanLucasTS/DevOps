
# Monitor de Estatísticas de Performance de Servidor 🚀

Um script em **Bash** para analisar estatísticas básicas de performance de servidores Linux.

🔗 Página do projeto: https://roadmap.sh/projects/server-stats

## ✨ Funcionalidades

O script fornece as seguintes informações:

- 🧠 **Uso de CPU**: Mostra a porcentagem total de uso da CPU.
- 💾 **Uso de Memória**: Exibe memória livre vs. utilizada, incluindo porcentagem.
- 💽 **Uso de Disco**: Mostra espaço livre vs. utilizado para cada filesystem.
- 🔝 **Processos Principais**: Lista os 5 principais processos por uso de CPU e memória.
- 📊 **Informações Adicionais**:
  - Versão do sistema operacional
  - Tempo de atividade do sistema (uptime)
  - Load average
  - Usuários logados
  - Tentativas recentes de login malsucedidas (se disponível)

## 🛠️ Requisitos

- Sistema operacional Linux
- Shell Bash
- Utilitários padrão do Linux (`ps`, `free`, `df`, etc.)
- Opcional: `mpstat` para maior precisão no uso de CPU (pacote `sysstat`)

## 📦 Instalação

1. Baixe o script:
```
wget https://github.com/LuanLucasTS/Roadmap/tree/main/Server-Performance-Stats/server-stats.sh
```

2. Torne o script executável:
```
chmod +x server-stats.sh
```

## ▶️ Uso

Execute o script com:
```
./server-stats.sh
```

## 🧪 Exemplo de Saída

```
Estatísticas de desempenho do servidor
------------------------
Versão do Sistema Operacional:
Linux AlmaLinux 4.18.0-553.100.1.el8_10.x86_64 #1 SMP Mon Feb 2 04:13:33 EST 2026 x86_64 x86_64 x86_64 GNU/Linux

Tempo de atividade e média de carga:
 17:52:41 up 10 min,  1 user,  load average: 0,08, 0,39, 0,36

Usuários logados:
root     pts/0        2026-02-08 17:51 (192.168.1.20)

Falhas recentes de login:
Feb  8 17:50:38 localhost sshd[2008]: Failed password for root from 192.168.1.20 port 59965 ssh2
Feb  8 17:50:43 localhost sshd[2008]: Failed password for root from 192.168.1.20 port 59965 ssh2
Feb  8 17:50:49 localhost sshd[2008]: Failed password for root from 192.168.1.20 port 59965 ssh2
Feb  8 17:51:00 localhost sshd[2013]: Failed password for root from 192.168.1.20 port 59966 ssh2

Uso total de CPU:
CPU Usage: 99%

Uso total de memória:
Total: 3665MB
Used: 208MB (5.00%)
Free: 3002MB

Uso total de disco:
Total: 26087MB
Used: 3679MB (15%)
Free: 22409MB

Os 5 processos mais utilizados pela CPU:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         260  7.4  0.0      0     0 ?        I    17:42   0:43 [kworker/0:3-events]
root          13  5.4  0.0      0     0 ?        S    17:42   0:33 [ksoftirqd/0]
chrony       794  4.2  0.1 140180  4616 ?        S    17:43   0:22 /usr/sbin/chronyd
root         824  3.2  0.7 620184 29216 ?        Ssl  17:43   0:16 /usr/libexec/platform-python -Es /usr/sbin/tuned -l -P
root          22  2.9  0.0      0     0 ?        I    17:42   0:17 [kworker/1:0-events]

Os 5 processos mais utilizados por memória:
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         790  0.1  1.4 516252 52600 ?        Ssl  17:43   0:00 /usr/libexec/platform-python -s /usr/sbin/firewalld --nofork --nopid
root         824  3.2  0.7 620184 29216 ?        Ssl  17:43   0:16 /usr/libexec/platform-python -Es /usr/sbin/tuned -l -P
polkitd     1028  0.0  0.7 1746220 26356 ?       Ssl  17:43   0:00 /usr/lib/polkit-1/polkitd --no-debug
root         828  2.5  0.5 530888 22104 ?        Ssl  17:43   0:13 /usr/bin/python3.6 -s /usr/bin/fail2ban-server -xf start
root         808  0.2  0.5 591288 21780 ?        Ssl  17:43   0:01 /usr/sbin/NetworkManager --no-daemon
```


## 🪟 Observações para Usuários Windows

Este script foi desenvolvido para sistemas Linux. Se você estiver usando Windows, pode:

1. Executar em uma máquina virtual Linux
2. Utilizar o Windows Subsystem for Linux (WSL)
3. Usar Git Bash ou ambiente Unix-like semelhante

## 📄 Licença

Este projeto está licenciado sob a **Licença MIT**.  
Sinta-se à vontade para modificar e distribuir conforme necessário.
