# Imagem base
FROM python:3.9-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do projeto para o container
COPY app/ .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expor a porta para o host
EXPOSE 5000

# Comando padrão para rodar o app
CMD ["python", "app.py"]
