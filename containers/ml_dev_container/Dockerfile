FROM python:3.9

WORKDIR /workspace

COPY requirements.txt .

RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install -r requirements.txt

RUN rm requirements.txt

ENTRYPOINT [ "bash" ]