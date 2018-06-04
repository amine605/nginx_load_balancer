FROM nginx
RUN apt-get update  &&  apt-get -y install iputils-ping
WORKDIR app
COPY ./app/writer.sh /app
CMD chmod +x writer.sh
EXPOSE 80
ENTRYPOINT ["/bin/sh", "writer.sh"]

