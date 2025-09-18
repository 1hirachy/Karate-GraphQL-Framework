Feature: Call sub-feature 5 times

  Scenario: Call character query feature repeatedly
    * def ids = [1, 2]
    * print 'ids before map:', ids
    * def results = []

    * def callChar = function(id){ return karate.call('classpath:helpers/FetchingSingleCharacter.feature', { id: id }) }

    * def results = ids.map(callChar)
    * print 'Length of results:', results.length
    * match results[0].response.data.character.name == 'Rick Sanchez'
    * match results.length == '#notpresent'