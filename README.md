# Karate Consumer Driven Contracts Demo

## References
This is a simplified version of the [example in the Karate test-doubles documentation](https://github.com/intuit/karate/tree/master/karate-netty#consumer-provider-example) - with JMS / queues removed and simplified to be a stand-alone maven project.

Also see [The World's Smallest Microservice](https://www.linkedin.com/pulse/worlds-smallest-micro-service-peter-thomas/).

## Instructions
* clone the project
* `mvn clean test`

## Main Artifacts
| File | Description |
| ---- | ----------- |
| [PaymentService.java](payment-producer/src/main/java/payment/producer/PaymentService.java) | Producer |
| [payment-contract.feature](payment-producer/src/test/java/payment/producer/contract/payment-contract.feature) | Contract + Functional Test |
| [PaymentContractTest.java](payment-producer/src/test/java/payment/producer/contract/PaymentContractTest.java) | Producer Integration Test |
| [PaymentContractAgainstMockTest.java](payment-producer/src/test/java/payment/producer/mock/PaymentContractAgainstMockTest.java) | Verify that the Mock is as per Contract |
| [payment-mock.feature](payment-producer/src/test/java/payment/producer/mock/payment-mock.feature) | Mock / Stub |
| [Consumer.java](payment-consumer/src/main/java/payment/consumer/Consumer.java) | Consumer |
| [ConsumerIntegrationTest.java](payment-consumer/src/test/java/payment/consumer/ConsumerIntegrationTest.java) | Consumer Integration Test |
| [ConsumerIntegrationAgainstMockTest.java](payment-consumer/src/test/java/payment/consumer/ConsumerIntegrationAgainstMockTest.java) | Consumer Integration Test but using the Mock |
