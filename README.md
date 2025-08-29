
# MYSQL

## 📚 Sumário

- [Comandos](#comandos)
- [DML](#dml)

<h3 id="comandos"> 📌 Comandos </h3>

- 🔤 ***Tipos de String:***
    - ``CHAR:`` tamanho fixo
    - ``VARCHAR:`` tamanho variável
    - ``TINYTEXT:`` string de tamanho bem reduzido
    - ``TEXT:`` string pequena
    - ``MEDIUMTEXT:`` string de tamanho comum
    - ``LONGTEXT:`` string de tamanho grande
    - ``ENUM:`` string com um valor de uma lista predefinida na criação da tabala

- 🗓️ ***Tipos de data:***
    - ``DATE:`` data 'AAAA-MM-DD'
    - ``TIME:`` horário 'hh:mm:ss'
    - ``TIMESTAMP:`` data e horário 'AAAA-MM-DD hh:mm:ss'
    - ``YEAR:`` ano 'AAAA' OU 'AA'

- 🔢 ***Tipos de números:***

    - ``TINYINT:`` número inteiro muito pequeno
    - ``SMALLINT:`` número intero pequeno
    - ``MEDIUMINT`` número inteiro m´dio
    - ``INT:`` número inteiro de tamanho comum
    - ``BIGINT:`` número inteiro de tamanho grande
    - ``DECIMAL:`` número decimal, de ponto fixo
        - **EX:** decimal (3,2) => 1,27
    - ``FLOAT:`` número de ponto flutuante de precisão simples (32 bits)
    - ``BIT:`` campo de um bit
    
<br>

<h3 id="dml"> 📌 DML </h3>

- **DML:** Linguagem de Manipulação de Dados

    - Conjunto de comandos usados para **armazenar, modificar, recuperar, excluir e atualizar** dados em um banco de dados.

<br>

- **Comandos DML:**
    
    - ``INSERT INTO``: Usado para inserir novos registros em uma tabela.

    ```sql
    INSERT INTO nome_da_tabela
    (coluna_01, coluna_02, coluna_03) 
    VALUES
    (valor_01, valor_02, valor_03);

    -- Se não forem especificadas as colunas,
    -- O INSERT tentará preencher todas as colunas da tabela
    ```

    ```sql
    INSERT INTO Pessoas
    (id, nome, nascimento, sexo, peso, altura)
    VALUES
    (1, 'Fulano', '1881-03-27', 'M', 83.4, 1.73);
    ```

    - ``SELECT``: A instrução é usada para selecionar dados de um banco de dados.

    ```sql
    SELECT * FROM nome_da_tabela;  -- Seleciona todas as colunas
    ```
