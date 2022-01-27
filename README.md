# Stream Kafka

This app is written to show, how use kafka with spring-cloud stream. <br>
we use docker-compose to run kafka and zookeeper, then connect to container <br>
with spring-boot application.

## Test App:
just open terminal in app directory and use make command.
~~~
$ make
~~~

then call this request with get method:
~~~
http://localhost:8080/greetings?message=show me message
~~~
then you can see send and receive message log in console:
~~~
1) Sending greetings Greetings(timestamp=1643427480352, message=show me message)
2) Received greetings: Greetings(timestamp=1643427480352, message=show me message)
~~~

## helps:

1) you can switch between application config by change active profile in pom file.
2) for run app in production, first you need package app with production profile active
3) docker command:
   ~~~
   1) use docker to build:
      docker build -t "streamkafka:latest" .
   2) use docker compose command for build: 
      docker compose -f docker-compose-production.yml build
   ~~~
   <b> Notice: </b> you can use compose up instead of build
   
    * run container in dev env:
    ~~~ 
    docker compose -f docker-compose.yml up -d
    ~~~
   * run container in production env:
    ~~~ 
    docker compose -f docker-compose-production.yml up -d
    ~~~
