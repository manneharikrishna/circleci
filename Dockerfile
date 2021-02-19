FROM python:3.6
WORKDIR /hari
COPY . /hari/.
RUN pip install -r requirements.txt
CMD [ "python", "server.py" ]
EXPOSE 8888
RUN chmod +x /hari/entrypoint.sh
ENTRYPOINT ["/hari/entrypoint.sh"]
