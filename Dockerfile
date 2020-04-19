FROM python:alpine

RUN pip install --upgrade pip \
  && pip install mkdocs \
  && pip install mkdocs-material \
  && pip install fontawesome_markdown \
  && pip install plantuml-markdown

RUN python --version

WORKDIR /root

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
