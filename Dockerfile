FROM mhart/alpine-node:6.5.0
RUN npm install https://github.com/cutzmf/frontail/tarball/docker --global
ENTRYPOINT ["frontail"]
EXPOSE 9001
CMD ["--help"]
