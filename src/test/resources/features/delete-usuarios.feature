@delete @usuarios
Feature: Eliminar usuarios
Background:
    * url baseUrl

    * def data = read('classpath:request/Resource.json')

    * def usuarioEliminado = data.usuarios.usuarioEliminado
    * def usuarioConCarrito = data.usuarios.usuarioConCarrito

Scenario: Eliminar usuario inexistente

    Given path 'usuarios', usuarioEliminado._id
    When method DELETE
    Then status 200

    And match response.message == 'Nenhum registro excluído'
    
Scenario: No permitir eliminar usuario con carrito asociado

    Given path 'usuarios', usuarioConCarrito._id
    When method DELETE
    Then status 400
    And match response.message == 'Não é permitido excluir usuário com carrinho cadastrado'