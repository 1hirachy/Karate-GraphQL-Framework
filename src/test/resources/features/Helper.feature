Feature: Single GraphQL character fetch

  Scenario: Fetch character with id
    * def query = read('classpath:graphql/getCharacter.graphql')
    * def variables = { id: id }
    * def payload = { query: '#(query)', variables: #(variables) }

    Given url 'https://rickandmortyapi.com/graphql'
    And request payload
    When method post
    Then status 200

    * print 'Response for id', id, ':', response

    * if (response.data.character) karate.match(response.data.character.id, id)
