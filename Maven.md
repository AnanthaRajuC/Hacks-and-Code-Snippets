## Maven

|                    Command                     |                              Description                                           |
|------------------------------------------------|------------------------------------------------------------------------------------|
|`mvn package -Dmaven.test.skip=true`            | The project will be built without compiling the tests.                             |
|`mvn clean package`                             | Compiles the code and also packages it.                                            |
|`mvn test`                                      | Run all the unit test classes.                                                     |
|`mvn -Dtest=TestApp1 test`                      | Run a single test class.                                                           |
|`mvn -Dtest=TestApp1,TestApp2 test`             | Run multiple test classes.                                                         |
|`mvn -Dtest=TestApp1#methodname test`           | Run a single test method from a test class.                                        |
|`mvn -Dtest=TestApp1#testHello* test`           | Run all test methods that match pattern 'testHello*' from a test class.            |
|`mvn -Dtest=TestApp1#testHello*+testMagic* test`| Run all test methods match pattern 'testHello*' and 'testMagic*' from a test class.|
