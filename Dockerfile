FROM maven:3.8.1-jdk-8

# Update and install maven
#RUN apt-get update -y
#RUN apt-get upgrade -y
#RUN apt-get install maven -y

WORKDIR /

RUN npm install --global yarn

# Add Sources to container
ADD . .

# Build and package
RUN mvn package -e

EXPOSE 8080

CMD java -jar target/Kvissen.jar
