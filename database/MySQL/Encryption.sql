CREATE TABLE `user`(
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varbinary(150),
  `last_name` varchar(150),
  `address` varchar(200),
  PRIMARY KEY (`id`)
)ENGINE = InnoDB DEFAULT CHARACTER SET = latin1;

SELECT * FROM user;
SELECT * FROM user where id = 1;

INSERT INTO user(first_name, last_name, address) VALUES (AES_ENCRYPT('John','mysecretkey'),AES_ENCRYPT('Doe','mysecretkey'),'USA');

SELECT AES_DECRYPT(first_name, 'mysecretkey'), AES_DECRYPT(last_name, 'mysecretkey'), address from user;
SELECT *, CAST(AES_DECRYPT(first_name, 'mysecretkey') AS CHAR(100)), CAST(AES_DECRYPT(last_name, 'mysecretkey') AS CHAR(100)) last_name_decrypt FROM user;

																														
-- Future reference
-- SET block_encryption_mode = 'aes-128-ecb';																														