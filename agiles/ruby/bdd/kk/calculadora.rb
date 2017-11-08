Feature: Calculadora

Scenario: suma de dos numeros
    Given he introducido los numeros <numero1> 
    Y <numero2>
    When cuando sumo
    Then resultado es <resultado>

Examples:
    | numero1 | numero2 | resultado |
    | 20      | 30      | 50        |
    | 2       | 5       | 7         |
    | 0       | 40      | 40        |