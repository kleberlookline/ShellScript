#/bin/bash
###
#Nome do programa:              seq.sh
#Proposito:                     O comando seq recebe dois numeros e mostra na saida padrao todos os numeros existentes entre eles, inclusive. Essa sequencia esta pronta para ser usada pelo comando FOR. Caso omitido o numero inicial, eh utlizado o 1.
#Controle de alteracao-01:      Data 06/05/2013         Versao: 0.1
#Autor:                         Kleber Oliveira
#Email do Autor:                kleber.oliveira@gmail.com
#Responsavel:                   Kleber Oliveira,        Contato email: kleber.oliveira,         Celular (TIM): 98224-9820
#Historico de mudancas-01:      Criacao padrao do cabecalho - Data  06/06/2013 as 23:05
#Detalhes:                      Este programa recebe como parametro numeros, e o intervalo entre eles, retornando o resultado na saida padrao (STDOUT)
#Exemplos:
#               EXEMPLO-01      EXEMPLO-02      EXEMPLO-03
#               $ seq 5 10      $ seq 10 5      $ seq 5
#               5               10              1
#               6               9               2
#               7               8               3
#               8               7               4
#               9               6               5
#               10              5
#
#Uso em scripts:                for i in $(seq 5 10); do comandos; done
#
#Inicializacao das variaveis:
o=+             # Operacao a ser feita. Pode ser + ou -
a=1             # Valor padrao de inicio da contagem
z=${1:-1}       # Valor do final da contagem recebido em $1 (padrao eh 1)

#A variavel 'a' eh o numero de inicio e a variavel 'z' eh o final.
#
#O codigo anterior serve para quando o usuario passar apenas um valor na linha de comando, que seria o valor do *final* da contagem. Por isso:
#       a=1
#       z=$1
#
#Caso o programa seja chamado sem parametros, 'z' tambem eh definido como 1. Como a=1 e z=1, o programa retorna apenas o numero 1.
#
#Licenca:                       Copyleft BSL "http://bsl-opensource.blogspot.com.br/"

[ "$2" ] && {
#       Foram passados 2 parametros, o $1 eh o inicio e o $2 eh o fim.
a=$1
z=$2
}

#
#Se o numero inicial ($a) for maior que o numero final ($z) faremos uma contagem regressiva, por isso a operacao eh definida como subtracao
[ $a -gt $z ] && o=-
#Loop da contagem (progressiva ou regressiva)
#
#A cada volta, adiciona ou subtrai 1 do valor inicial ate que ele se iguale ao final
#O eval executa o resultado da expansao de variaveis. Supondo o='+' e a=3, o eval executara o comando a=$((3+1))
while [ $a -ne $z ]; do
        echo $a                 #mostra a contagem atual
        eval "a=\$((a $o 1))"   #efetua a operacao (+1 ou -1)
done
echo    $a                      #mostra o ultimo numero
