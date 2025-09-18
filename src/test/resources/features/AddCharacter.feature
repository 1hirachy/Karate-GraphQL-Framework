@ignore
Feature: Add character mutation

Background:
* url 'https://rickandmortyapi.com/graphql'

Scenario: Add a new character
* def query = read('classpath:graphql/addCharacterMutation.graphql')
* def variables = { name: 'Test Character' }
* def payload = call read('classpath:helpers/RequestBuilder.feature') { query: '#(query)', variables: '#(variables)' }

Given url 'https://rickandmortyapi.com/graphql'
And request payload
When method post
Then status 200
And match response.data.addCharacter.name == 'Test Character'