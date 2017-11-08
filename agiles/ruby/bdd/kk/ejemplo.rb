features: Restar pepinos
   Para evitar errores de calculo
   Como madre de Carles
   Quiero ser capaz de saber los pepinos restantes

scenario: Restar pepinos
   	given que he mandado a mi hijo que compre <start> pepinos
   	but el se comido <eat> pepinos de camino a casa
   	when llega a caso solo le quedan <left> pepinos

   	examples:
   	| start | eat | left |
   	|   12  |  5  |   7  |
   	|   20  |  5  |   15 |
      |   30  |  5  |   20 |
