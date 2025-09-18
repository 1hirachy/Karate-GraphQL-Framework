Feature: Get GraphQL character details

  Background:
    * url 'https://rickandmortyapi.com/graphql'



  Scenario: Get character 2 details using named query
    * def query = 'query Character { character(id: 2) { id name status species type gender image created } }'

    * def requestPayload = { query: '#(query)' }

    Given request requestPayload
    When method post
    Then status 200
    And match response.data.character.name == 'Morty Smith'
    And match response.data.character.gender == 'Male'
    And match response.data.character.status == 'Alive'

  Scenario Outline: Valid character by ID
    * def query = karate.readAsString('classpath:graphql/getCharacter.graphql')
    * def variables = { id: <charId> }
    * def payload = { query: '#(query)', variables: #(variables) }

    Given request payload
    When method post
    Then status 200
    And match response.data.character.id == '<charId>'

    Examples:
      | charId |
      | 1      |
      | 2      |
  @Regression
  Scenario: Invalid character ID returns null
    * def query = read('classpath:graphql/negativeCharacter.graphql')
    * def payload = { query: '#(query)' }

    Given request payload
    When method post
    Then status 200
    And match response.data.character == null