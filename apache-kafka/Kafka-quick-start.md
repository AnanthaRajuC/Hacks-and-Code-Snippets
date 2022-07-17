1. Set up a Kafka broker

https://developer.confluent.io/quickstart/kafka-docker/#1-set-up-a-kafka-broker

2. Start the Kafka broker

docker-compose up -d

3. Create a topic

docker exec broker \
kafka-topics --bootstrap-server broker:9092 \
             --create \
             --topic quickstart


4. Write messages to the topic

docker exec --interactive --tty broker \
kafka-console-producer --bootstrap-server broker:9092 \
                       --topic quickstart
					   
					   
					   
this is my first kafka message
hello world!
this is my third kafka message. I’m on a roll :-D					   


5. Read messages from the topic

docker exec --interactive --tty broker \
kafka-console-consumer --bootstrap-server broker:9092 \
                       --topic quickstart \
                       --from-beginning
					   
6. Write some more messages

docker exec --interactive --tty broker \
kafka-console-producer --bootstrap-server broker:9092 \
                       --topic quickstart
					   
Press Ctrl-D to exit the producer, and Ctrl-C to stop the consumer.

7. Stop the Kafka broker

docker-compose down

