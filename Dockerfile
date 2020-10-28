FROM python:3.7

COPY . ./app

WORKDIR /app

RUN pip install -r requirements.txt

RUN python train.py

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

EXPOSE 80