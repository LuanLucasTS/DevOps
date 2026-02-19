#!/bin/bash

# Configurações
LOG_DIR="$1"
DEST_DIR="./archives"
LOG_HISTORY="archive_log.txt"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"

# 1. Validação de Entrada
if [ -z "$LOG_DIR" ]; then
    echo "Erro: Nenhum diretório especificado."
    echo "Uso: $0 <diretorio-de-logs>"
    exit 1
fi

# 2. Verifica se o diretório de origem existe
if [ ! -d "$LOG_DIR" ]; then
    echo "Erro: O diretório '$LOG_DIR' não existe ou não é um diretório."
    exit 1
fi

# 3. Cria o diretório de destino se não existir
mkdir -p "$DEST_DIR"

# 4. Executa a compactação
# -c: create, -z: gzip, -f: file
if tar -czf "${DEST_DIR}/${ARCHIVE_NAME}" -C "$LOG_DIR" . 2>/dev/null; then
    # Sucesso
    SIZE=$(du -h "${DEST_DIR}/${ARCHIVE_NAME}" | cut -f1)
    echo "✅ Sucesso! Logs arquivados em: ${DEST_DIR}/${ARCHIVE_NAME} ($SIZE)"
    
    # Registro no log de histórico
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] Arquivado: ${ARCHIVE_NAME} | Tamanho: $SIZE" >> "$LOG_HISTORY"
else
    # Falha
    echo "❌ Erro crítico: Falha ao compactar os logs. Verifique as permissões de leitura em $LOG_DIR."
    exit 1
fi

# 5. Opcional: Remover arquivos com mais de 30 dias (Manutenção)
# find "$DEST_DIR" -name "*.tar.gz" -type f -mtime +30 -delete
