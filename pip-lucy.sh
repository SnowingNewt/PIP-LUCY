#!/bin/bash

# Verifica se o pacote python3-venv está instalado
if ! dpkg -s python3-venv >/dev/null 2>&1; then
    echo "O pacote python3-venv não está instalado. Instalando..."
    sudo apt-get update
    sudo apt-get install python3-venv
fi

# Cria um ambiente virtual
python3 -m venv venv

# Ativa o ambiente virtual
source venv/bin/activate

# Instala o pacote desejado
pip install times

# Desativa o ambiente virtual
deactivate
