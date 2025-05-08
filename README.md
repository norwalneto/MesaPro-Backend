# MesaPro-Backend
SaaS para restaurantes e bares.

```mermaid
erDiagram
    USUARIO ||--o{ PEDIDO : realiza
    USUARIO }o--|| RESTAURANTE : pertence
    RESTAURANTE ||--o{ USUARIO : possui
    RESTAURANTE ||--o{ MESA : possui
    RESTAURANTE ||--o{ CARDAPIO : possui
    RESTAURANTE ||--o{ ESTOQUE : gerencia
    RESTAURANTE }o--|| PLANO_ASSINATURA : utiliza

    MESA ||--o{ PEDIDO : recebe
    MESA ||--o{ RESERVA : pode_ter

    CLIENTE ||--o{ PEDIDO : solicita
    CLIENTE ||--o{ RESERVA : faz

    PEDIDO ||--o{ ITEM_PEDIDO : contém
    ITEM_PEDIDO }o--|| ITEM_CARDAPIO : refere_se

    CARDAPIO ||--o{ ITEM_CARDAPIO : inclui

    PEDIDO ||--|| PAGAMENTO : tem

    ESTOQUE ||--o{ MOVIMENTACAO_ESTOQUE : possui

    NOTIFICACAO }o--|| USUARIO : enviada_para

    PLANO_ASSINATURA {
        int id
        string nome
        float preco
        string recursos_incluidos
        int limite_usuarios
        int limite_mesas
    }

    USUARIO {
        int id
        string nome
        string email
        string senha
        string papel
    }

    RESTAURANTE {
        int id
        string nome
        string cnpj
        string endereco
        string telefone
    }

    MESA {
        int id
        int numero
        string status
    }

    RESERVA {
        int id
        datetime data_hora
        string status
    }

    CLIENTE {
        int id
        string nome
        string telefone
        string email
        int fidelidade_pontos
    }

    CARDAPIO {
        int id
        string nome
    }

    ITEM_CARDAPIO {
        int id
        string nome
        string descricao
        float preco
        string categoria
        string imagem
    }

    PEDIDO {
        int id
        datetime data_hora
        string status
    }

    ITEM_PEDIDO {
        int id
        int quantidade
        string observacoes
    }

    PAGAMENTO {
        int id
        float valor
        string metodo_pagamento
        string status
    }

    ESTOQUE {
        int id
        string nome
        float quantidade
        string unidade
        string categoria
    }

    MOVIMENTACAO_ESTOQUE {
        int id
        string tipo
        float quantidade
        datetime data_hora
        string motivo
    }

    NOTIFICACAO {
        int id
        string mensagem
        datetime data_hora
        boolean lido
    }
```
