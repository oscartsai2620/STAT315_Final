FROM python:3.13-slim
LABEL org.opencontainers.image.authors="Daniel Lam He <daniellam1702@tamu.edu>, Oscar Tsai <oscartsai26@tamu.edu>, Andrew Zheng <andrewzheng@tamu.edu>"
LABEL version="1.2"
LABEL description="CSCE 315 Final Project"

RUN apt-get update -y

RUN pip install --upgrade pip

RUN pip install numpy==2.2.1
RUN pip install pandas==2.2.3 
RUN pip install seaborn==0.13.2 
RUN pip install jupyter==1.1.1 
RUN pip install scikit-learn==1.6.0 
RUN pip install matplotlib==3.10.0
RUN pip install pyarrow==18.1.0
RUN pip install kagglehub==0.3.13

WORKDIR /home/notebooks/

CMD ["jupyter", "notebook", "--no-browser", "--allow-root", "--ip=0.0.0.0"]