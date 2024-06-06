Feature: Realizar compra de productos en la pagina demoblaze

  @RealizarPedido
  Scenario Outline: Comprar diferentes productos de forma exitosa
    Given Mile ingresa a la pagina de demoblaze
    When ella ingresa el nombre de los productos para hacer la compra: <Phone>, <Laptops>, <Monitors>
    And ellla escribe los datos para para realizar el pedido
    Then ella valida que la suma del valor de los productos sea igual al valor total
    And ella valida el mensaje de compra exitosa: "Thank you for your purchase!"
    Examples:
      | Phone             | Laptops     | Monitors         |
      | Samsung galaxy s6 | Dell i7 8gb | Apple monitor 24 |

