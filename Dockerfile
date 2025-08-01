FROM pro97775/wzmlx:v3work

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN uv venv --system-site-packages

COPY requirements.txt .
RUN uv pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
