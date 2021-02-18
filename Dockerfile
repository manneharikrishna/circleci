FROM ubuntu:latest
RUN apt update && apt install httpd -y
RUN echo "Welcome to world.......  Hari" >> /var/www/html/index.html
WORKDIR /hari
COPY . /hari/.
RUN chmod +x /hari/entrypoint.sh
ENTRYPOINT ["/hari/entrypoint.sh"]
EXPOSE 8888
