## Start and Stop

|                    Command                     |                              Description                                            |
|------------------------------------------------|-------------------------------------------------------------------------------------|
|`confluent local services start`                | Start confluent kafka and its related services.                                     |
|`confluent local services stop`                 | Stop confluent kafka and its related services.                                      |
|`confluent local destroy`                       | Cleanup local instance.                                                             |

## Producer and Consumer

|                    Command                                                                        |     Description                  |
|---------------------------------------------------------------------------------------------------|----------------------------------|
|`kafka-console-producer --topic YOUR_TOPIC_NAME --broker-list localhost:9092`                      | Run a console producer.          |
|`kafka-console-consumer --topic YOUR_TOPIC_NAME --bootstrap-server localhost:9092 --from-beginning`| Run a console consumer.          |




