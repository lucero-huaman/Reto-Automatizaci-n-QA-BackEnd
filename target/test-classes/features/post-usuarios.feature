
@post @usuarios
Feature: Registrar usuarios

Background:

    * url baseUrl

    * def data = read('classpath:/request/Resource.json')

    * def usuarioValido = data.usuarios.valido
    * def usuarioEmailInvalido = data.usuarios.emailInvalido
    * def usuarioDuplicado = data.usuarios.emailDuplicado
    * def usuarioCamposVacios = data.usuarios.camposVacio


Scenario: Registrar usuario correctamente

    * def timestamp = java.lang.System.currentTimeMillis()

    * set usuarioValido.email = 'usuario' + timestamp + '@mail.com'

    Given path 'usuarios'
    And request usuarioValido
    When method POST
    Then status 201

    And match response.message == 'Cadastro realizado com sucesso'
    And match response._id == '#regex ^[A-Za-z0-9]{16}$'


Scenario: Registrar usuario con email invalido

    Given path 'usuarios'
    And request usuarioEmailInvalido
    When method POST
    Then status 400
