Feature: Validate GraphQL schema

Scenario: Introspect GraphQL schema
* def query = '{ __schema { types { name kind description } } }'
* def payload = { query: '#(query)' }

Given url 'https://rickandmortyapi.com/graphql'
And request payload
When method post
Then status 200
And match response.data.__schema.types contains deep { name: 'Character', kind: 'OBJECT' }