@put @usuarios
Feature: Actualizar usuarios
Background:
    * url baseUrl
    * def data = read('classpath:request/Resource.json')

    * def usuarioConCarrito = data.usuarios.usuarioConCarrito
    * def usuarioActualizar = data.usuarios.usuarioActualizar
    * def usuarioActualizarCamposVacios = data.usuarios.camposVacios

Scenario: Actualizar usuario existente

    * def random = java.util.UUID.randomUUID() + ''
    * set usuarioActualizar.email = 'usuario' + random + '@qa.com'

    Given path 'usuarios', usuarioConCarrito._id
    And request usuarioActualizar
    When method PUT
    Then status 200

    And match response.message == 'Registro alterado com sucesso'



    
Scenario: Actualizar usuario con campos vacios

    Given path 'usuarios', usuarioConCarrito._id
    And request usuarioActualizarCamposVacios
    When method PUT
    Then status 400
