FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl

# Incorrectly using a shell command without exec
RUN curl -L https://example.com/file.tar.gz | tar -xz

CMD ["/bin/bash"]