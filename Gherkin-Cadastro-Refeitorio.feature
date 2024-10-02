Feature: Cadastro de Aluno
    Como novo aluno quero me cadastrar no sistema do refeitório do IFPI para que possa reserva e acessar refeições

Scenario: Upload de foto maior que o tamanho permitido
    Given que estou na página de cadastro de alunos
    When eu insiro um arquivo maior que permitido no campo de imagem
    And preencho os outros campos obrigatórios
    And clico no botão de "salvar"
    Then eu sou redirecionado para uma outra página 
    And vejo uma mensagem de erro "413 Request Entity Too Large"

Scenario: Campos preenchidos com caracteres especiais
    Given que estou na página de cadastro de alunos
    When eu preencho o campo de matricula com apenas caracteres especiais
    And preencho os outros campos obrigatórios
    And clico no botão de "salvar"
    Then eu permaneço na página de cadastro
    And vejo uma mensagem de erro no campo "Informe uma matricula válida Este valor deve conter apenas letras e números"

Scenario: Cadastro com um email inválido
    Given que estou na página de cadastro de alunos
    When eu preencho todos os campos obrigatórios
    And submeto o formulário com um email inválido
    Then é exibida uma mensagem de erro

Scenario: Cadastro com uma senha inválida
    Given que estou na página de cadastro de alunos
    When eu preencho todos os campos obrigatórios
    And submeto o formulário com uma senha inválida
    Then é exibida uma mensagem de erro 