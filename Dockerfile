FROM python:3.6

COPY src/requirements.txt ./
RUN pip install -r requirements.txt
CMD [ "python", "server.py" ]
WORKDIR /hari
COPY . /hari/.
EXPOSE 8888
RUN chmod +x /hari/entrypoint.sh
ENTRYPOINT ["/hari/entrypoint.sh"]
