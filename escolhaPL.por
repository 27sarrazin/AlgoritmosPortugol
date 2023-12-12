programa
{
	inclua biblioteca Texto --> tx
	
	funcao inicio()
	{
	caracter opcao
	cadeia  exame, acompanhado

	
	
	escreva("escolha opcao [L para lavanderia] e [P para piscina]: ")
	leia(opcao)
	
	escolha(opcao){
		caso 'L':
		real kgRoupas, totValor
		escreva("qual KG de roupas serao lavados? ")
		leia(kgRoupas)
		se (kgRoupas > 10){
			totValor = kgRoupas * 15
		}senao{
			totValor = kgRoupas * 20
		}
		 escreva("o valor da lavagem foi R$", totValor, " reais")
		pare
	
		caso 'P':
		inteiro idade = 0
		escreva("Voce escolheu piscina, qual a sua idade: ")
		leia(idade)
		escreva("voce esta acompanhado por um responsavel maior de idade? ")
		leia(acompanhado)
		acompanhado = tx.extrair_subtexto(tx.caixa_alta(acompanhado),0,1)
		se (idade >= 18){
			
			escreva("Seus exames estao em dia? ")
			leia(exame)
			exame = tx.extrair_subtexto(tx.caixa_alta(exame),0,1)
			se(exame == "S"){
				escreva("Aproveite a piscina")
			}senao{
				escreva("Faca seu exames")
			}
		}
                senao se (idade <18 e acompanhado == "N"){
                  escreva("Por favor, providencie um acompanhante maior de idade")
                }
                senao se (idade < 18 e acompanhado == "S"){
                    escreva("Seus exames estao em dia? ")
                    leia(exame)
                    exame = tx.extrair_subtexto(tx.caixa_alta(exame),0,1)
                    se (exame == "S"){
                        escreva("Aproveite a piscina")
                    }
                    senao{
                        escreva("Faca seus exames")
                   }
                }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 970; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */