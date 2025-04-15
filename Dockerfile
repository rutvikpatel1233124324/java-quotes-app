#1 Base image (OS)

FROM openjdk:17-jdk-alpine

#2 this is your working directory for this project
WORKDIR /app

#3 copy the code from your HOST to your container (working directory)
COPY src/Main.java /app/Main.java

COPY quotes.txt quotes.txt 
#you can write /app/quotes.txt instead of quotes.txt but the working directory is same that's why if we write quotes.txt that also run successfully

#copy . . to copy all file 

#4 run the command to install libs OR TO compile code 

RUN javac Main.java

#5 expose the port 8000
EXPOSE 8000

#6 serve the app keep it running

CMD ["java","Main"]

