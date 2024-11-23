FROM sonik-sdk

ARG manifest

RUN pip install flask click

COPY app.py /usr/bin/app.py

COPY cli.py cli/cli.py

LABEL com.azure.sonic.manifest="$manifest"

EXPOSE 8000

ENTRYPOINT ["/usr/bin/app.py"]