Feature: GraphQL request builder

Scenario: Build payload for GraphQL query
* def payload = { query: query, variables: #(variables ? variables : null) }
* if (!variables) payload.remove('variables')
* match payload contains { query: '#string' }
* return payload