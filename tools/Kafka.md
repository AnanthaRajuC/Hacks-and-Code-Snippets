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

## Example

~/kafka/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic TutorialTopic

echo "Hello, World" | ~/kafka/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic TutorialTopic > /dev/null

~/kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic TutorialTopic --from-beginning

echo "Hello World from Sammy at DigitalOcean!" | ~/kafka/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic TutorialTopic > /dev/null

## Files

~/kafka/config/server.properties  
/etc/systemd/system/zookeeper.service
/etc/systemd/system/kafka.service

## Services

sudo systemctl stop kafka  
sudo systemctl start kafka  
sudo systemctl status kafka  

sudo systemctl daemon-reload

## Systemd Logs

journalctl -u kafka.service

## Debugging

Problem with kafka - Failed with result 'exit-code', status=1/FAILURE  
https://stackoverflow.com/questions/67705738/problem-with-kafka-failed-with-result-exit-code-status-1-failure  

/kafka/logs/meta.properties  


