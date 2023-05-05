FROM prefecthq/prefect:2-python3.11

COPY src /usr/local/share/civicduty/src/


RUN apt update && \
    apt install -y vim && \
    pip install --upgrade pip && \
    pip install psycopg2-binary s3fs prefect-openai /usr/local/share/civicduty/src/civicrmapi /usr/local/share/civicduty/src/prefect-civi
    #pip install psycopg2-binary s3fs prefect-openai git+https://github.com/taylormadeapps/civicrmapi.git git+https://github.com/taylormadeapps/prefect-civi.git
    
