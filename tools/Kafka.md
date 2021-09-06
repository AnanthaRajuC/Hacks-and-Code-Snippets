## Start and Stop

|                    Command                     |                              Description                                            |
|------------------------------------------------|-------------------------------------------------------------------------------------|
|`confluent local services start`                | Start confluent kafka and its related services.                                     |
|`confluent local services stop`                 | Stop confluent kafka and its related services.                                      |
|`confluent local destroy`                       | Cleanup local instance.                                                             |

## Topic

|                    Command                                                                                     |  Description        |
|----------------------------------------------------------------------------------------------------------------|---------------------|
|`kafka-topics --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic YOUR_TOPIC_NAME`| Create kafka topic. |

## Producer and Consumer

|                    Command                                                                        |     Description                  |
|---------------------------------------------------------------------------------------------------|----------------------------------|
|`kafka-console-producer --broker-list localhost:9092 --topic YOUR_TOPIC_NAME`                      | Run a console producer.          |
|`kafka-console-consumer --bootstrap-server localhost:9092 --from-beginning --topic YOUR_TOPIC_NAME`| Run a console consumer.          |
