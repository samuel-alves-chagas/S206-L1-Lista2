Feature: Testando API de Breaking Bad

Background: Executa antes de cada teste
  * def url_base = "https://www.breakingbadapi.com/api/"

Scenario: Busca de todos os personagens da série Breaking Bad
  Given url url_base
  And path 'characters?category=Breaking+Bad'
  When method get
  Then status 200
  And match response == '#[57]'

Scenario: Busca de todos os personagens que possuem Walter no nome
  Given url url_base
  And path 'characters?name=Walter'
  When method get
  Then status 200
  And match response == '#[2]'
  And print response[0].name
  And print response[1].name

Scenario: Busca de todos os episódios de Better Call Saul
  Given url url_base
  And path 'episodes?series=Better+Call+Saul'
  When method get
  Then status 200
  And match response == '#[40]'

Scenario: Teste inválido, busca de uma fala da filha bebê do Walter White 
  Given url url_base
  And path 'quote?author=Holly+White'
  When method get
  Then status 200
  And match response == '#[0]'

Scenario: Busca do numero de mortes em ambas as séries
  Given url url_base
  And path 'death-count'
  When method get
  Then status 200
  And match response[0].deathCount == 271

Scenario: Teste inválido, busca de um assassinato por parte do filho deficiente do Walter White 
  Given url url_base
  And path 'death?name=Walter+White+Jr.'
  When method get
  Then status 200
  And match response == '#[0]'