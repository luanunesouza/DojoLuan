#language: pt
#utf-8

@cadastro
Funcionalidade: Cadastrar empregado
 Eu como administrador do site da Orange
 Quero cadastrar um novo empregado no site da Orange
 Para registrar suas informacoes funcionais

@cadastrar
Cenario: Cadastrar novo funcionário Orange
 Dado que eu esteja na pagina de cadastro de funcionarios no site da orange
 Quando preencher o formulario de cadastro
 Entao o cadastro sera realizado com sucesso

@editar
Cenario: Editar funcionário Orange
 Dado que eu esteja na pagina lista de funcionarios no site da orange
 Quando alterar o formulario de cadastro
 Entao o cadastro sera atualizado com sucesso