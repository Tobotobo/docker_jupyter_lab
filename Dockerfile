ARG VARIANT
FROM quay.io/jupyter/minimal-notebook:${VARIANT}

RUN pip install \
        jupyterlab-language-pack-ja-JP \
        jupyterlab-lsp \
        'python-lsp-server[all]' \
        pandas \
        XlsxWriter \
        python-dotenv \
        psycopg2-binary \
        SQLAlchemy

COPY ./user-settings /home/jovyan/.jupyter/lab/user-settings

USER root
RUN chown -R jovyan:users /home/jovyan