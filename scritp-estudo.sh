#/bin/bash
###
#Nome do programa:              scritp-estudo.sh
#Proposito:                     A explicacao geral de funcionamento eh de se fazer um script de testes e estudar o livro programacao em shell
#Controle de alteracao-01:      Data 06/05/2013         Versao: 0.1
#Autor:                         Kleber Oliveira
#Email do Autor:                kleber.oliveira@gmail.com
#Responsavel:                   Kleber Oliveira,        Contato email: kleber.oliveira,         Celular (TIM): 98224-9820
#Historico de mudancas-01:      Criacao padrao para se iniciar um script shell de forma correta, como fazer um cabecalho correto - Data  06/06/2013 as 22:40
#Detalhes:                      Este programa recebe como parametro o login de um usuario e procura em varias bases qual o seu nome completo, retornando o resultado na saida padrao (STDOUT)
#Exemplos:                      $./nome_completo.sh jose
#                               Jose Moreira de Oliveira
#
#                               $./nome_completo.sh joseee
#                               $
#
#
#A ordem de procura do nome Completo eh sequencial:
#       1- Arquivo /etc/passwd
#       2- Arquivo $HOME/.plan
#       3- Base de usuarios LDAP
#       4- Base de usuarios MySQL, futuro MariaDB
#Respeitando a ordem, o primeiro resultado encontrado sera o retornado.
#Licenca:                       Copyleft BSL "http://bsl-opensource.blogspot.com.br/"

