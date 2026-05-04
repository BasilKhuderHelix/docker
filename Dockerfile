FROM us-central1-docker.pkg.dev/verily-workbench-public/apps/workbench-jupyter:latest

USER root

RUN conda install -y -c bioconda plink2 && conda clean -afy

RUN wget -q -O /usr/local/bin/regenie \
    https://github.com/rgcgithub/regenie/releases/download/v2.2.4/regenie_v2.2.4.gz_x86_64_Linux && \
    chmod +x /usr/local/bin/regenie
