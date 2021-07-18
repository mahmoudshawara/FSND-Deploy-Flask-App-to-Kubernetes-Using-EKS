FROM  python:stretch
COPY . /main
WORKDIR /main
RUN pip install --upgrade pip
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
