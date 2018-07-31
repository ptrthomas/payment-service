Feature: payment service mock

Background:
* def id = 0
* def payments = {}

Scenario: pathMatches('/payments') && methodIs('post')
    * def payment = request
    * def id = ~~(id + 1)
    * set payment.id = id
    * eval payments[id + ''] = payment
    * def response = payment 

Scenario: pathMatches('/payments')
    * def response = $payments.*

Scenario: pathMatches('/payments/{id}') && methodIs('put')
    * eval payments[pathParams.id] = request
    * def response = request

Scenario: pathMatches('/payments/{id}') && methodIs('delete')
    * eval karate.remove('payments', '$.' + pathParams.id)
    * def response = ''

Scenario: pathMatches('/payments/{id}')
    * def response = payments[pathParams.id]
