FROM python:3.6
WORKDIR /home/app
COPY main.py /home/app/

CMD ["python", "main.py"]

