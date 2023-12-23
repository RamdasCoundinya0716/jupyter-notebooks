FROM python:3.9
WORKDIR /app
COPY . /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install jupyter
EXPOSE  6969
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=6969", "--no-browser", "--allow-root"]