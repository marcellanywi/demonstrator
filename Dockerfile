FROM gcc:latest

RUN apt-get update
RUN apt-get install -y wget zip

WORKDIR /tools
RUN wget https://sonarcloud.io/static/cpp/build-wrapper-linux-x86.zip
RUN unzip build-wrapper-linux-x86.zip

# https://community.sonarsource.com/t/sonarqube-c-ubuntu-build-wrapper-ld-preload-error/300/8
RUN cp ./build-wrapper-linux-x86/libinterceptor-x86_64.so ./build-wrapper-linux-x86/libinterceptor-haswell.so

WORKDIR /repo
CMD ["./start.sh"]
