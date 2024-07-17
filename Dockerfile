FROM python:3.11.9

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

## El orden ayuda mucho en optimización

COPY . .  

CMD ["fastapi","run"]