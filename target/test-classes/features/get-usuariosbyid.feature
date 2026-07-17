@get @usuariosid
Feature: Obtener usuarios por id

Background:
    * url baseUrl

Scenario: Validar que no existan IDs inválidos
    Given path 'usuarios'
    When method GET
    Then status 200

    * match each response.usuarios[*]._id == '#regex ^[A-Za-z0-9]{16}$'

Scenario Outline: Validar consulta con IDs invalidos

    Given path 'usuarios', '<idInvalido>'
    When method GET
    Then status 400

    And match response.id == 'id deve ter exatamente 16 caracteres alfanuméricos'

Examples:
| idInvalido |
| 123 |
| abc |
| 123456789 |
| id_invalido |

