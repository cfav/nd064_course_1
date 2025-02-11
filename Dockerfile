FROM python:2.7

WORKDIR /home/techtrends/

ADD ./techtrends .

RUN pip install -r requirements.txt

RUN python init_db.py

EXPOSE 3111

CMD python app.py