#language: pt
#encode: UTF-8

Funcionalidade: Pesquisa de CEP
  Eu como usuario da API
  Desejo saber qual o endereço do cep informado

  @consulta_positiva_cep
  Cenario: Consultar endereco cep 
    Dado que eu informe o "13202284"
    Então validar retorno do endereco "Brasil"
  
  @consulta_negativa_cep 
  Cenario: Consultar endereco cep inválido 
    Dado que eu informe o "132022849898"
    Entao validar status de erro 404 por cep invalido
  




  

