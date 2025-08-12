# Base oficial do n8n
FROM n8nio/n8n:latest

# Instala Python 3 e pip
USER root
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# (Opcional) Instala pacotes Python úteis
RUN pip3 install --no-cache-dir \
    pandas \
    requests \
    numpy \
    openpyxl \
    beautifulsoup4 \
    lxml

# Retorna para o usuário padrão do n8n
USER node
