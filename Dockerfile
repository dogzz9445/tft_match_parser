FROM python:3.9.5-buster

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install git+https://github.com/tangentlabs/django-oscar-paypal.git@issue/34/oscar-0.6

COPY . .

CMD [ "python", "./parsing_main.py" ]