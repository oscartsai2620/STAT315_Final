FROM python:3.13-slim
LABEL org.opencontainers.image.authors="Daniel Lam He <daniellam1702@tamu.edu>, Oscar Tsai <oscartsai26@tamu.edu>, Andrew Zheng <andrewzheng@tamu.edu>"
LABEL version="1.2"
LABEL description="STAT 315 Final Project"

RUN apt-get update -y && \
    apt-get install -y \
        texlive-xetex \
        texlive-latex-recommended \
        texlive-fonts-recommended \
        texlive-latex-extra \
        pandoc \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip

RUN pip install numpy==2.2.1
RUN pip install pandas==2.2.3 
RUN pip install seaborn==0.13.2 
RUN pip install jupyter==1.1.1 
RUN pip install scikit-learn==1.6.0 
RUN pip install matplotlib==3.10.0
RUN pip install pyarrow==18.1.0
RUN pip install kagglehub==0.3.13
RUN apt-get install -y pandoc
RUN pip install xgboost==3.1.2
RUN pip install lightgbm==4.6.0
RUN pip install catboost==1.2.8

WORKDIR /home/notebooks/

CMD ["jupyter", "notebook", "--no-browser", "--allow-root", "--ip=0.0.0.0"]