FROM oraclelinux:8.4
LABEL name=shreyas
dnf install java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64 maven  -y
RUN mkdir /shreyas-project
WORKDIR /shreyas-project
git clone https://github.com/shreyasarjun/shreyas-java-springboot.git
WORKDIR shreyas-java-springboot
RUN mvn clean package
