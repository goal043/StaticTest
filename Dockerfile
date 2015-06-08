
# Pull base image.
FROM scratch
ADD main /helloworld
CMD ["/helloworld"]