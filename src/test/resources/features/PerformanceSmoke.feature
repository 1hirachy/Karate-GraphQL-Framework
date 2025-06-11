Feature: Call sub-feature 5 times

  Scenario: Call character query feature repeatedly
    * def ids = [1, 2]
    * def results = []

    * def callChar = function(id){ return karate.call('Helper.feature', { id: id }) }

    * def results = ids.map(callChar)
    * match results.length == 5