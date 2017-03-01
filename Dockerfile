# docker build -t frontail .
# ID=`docker ps --no-trunc --filter "name=<monitored_container>" --format "{{.ID}}"` && docker run -d -p <export_port>:9001 --name lsdbackend_log -P -v /var/lib/docker/containers/$ID/$ID-json.log:/log frontail frontail /log'
FROM mhart/alpine-node:6.5.0
RUN npm install https://github.com/cutzmf/frontail/tarball/docker --global
ENTRYPOINT ["frontail"]
EXPOSE 9001
CMD ["--help"]
