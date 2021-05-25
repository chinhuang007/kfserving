FROM python:3.7-slim

COPY feasttransformer feasttransformer

RUN pip install pip==20.2
RUN pip install -e ./feasttransformer
COPY third_party third_party

ENTRYPOINT ["python", "-m", "feasttransformer"]
