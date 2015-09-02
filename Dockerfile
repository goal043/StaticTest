
# Pull base image.
FROM scratch
ADD main /helloworld
ADD deploy/buildversion.json /buildversion.json
CMD ["/helloworld"]