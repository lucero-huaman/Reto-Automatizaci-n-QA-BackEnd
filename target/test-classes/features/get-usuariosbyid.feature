@get @usuariosid
Feature: Get usuarios by id

Background:
    * url baseUrl

  Scenario: Obtener usuarios por id
    Given path 'usuarios'
    When method get
    Then status 200
