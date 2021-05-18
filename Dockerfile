FROM python:3.9.5-buster

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install git+https://github.com/dogzz9445/Riot-Watcher.git

COPY . .

CMD [ "python", "./parsing_main.py" ]