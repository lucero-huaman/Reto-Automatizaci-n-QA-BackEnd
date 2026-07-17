@get @usuarios
Feature: Listar usuarios

Background:
    * url baseUrl

Scenario: Validar estructura de usuarios

    * def usuarioSchema = read('classpath:schemas/usuario-schema.json')

    Given path 'usuarios'
    When method GET
    Then status 200

    And match each response.usuarios == usuarioSchema


Scenario: Obtener lista de usuarios exitosamente

    Given path 'usuarios'
    When method GET
    Then status 200
