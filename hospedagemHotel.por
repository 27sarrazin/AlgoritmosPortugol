programa {
    inclua biblioteca Texto --> tx

    cadeia nomeHosp[10], resposta, CPF[10], nome, cpf
    inteiro quantDias[10], quantidadeDias = 0,  opcao, indiceHospede = 0, i=0, iInformado, iTotal
    real VALORDIARIA = 100.0, despesasHotel[10]= {0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0},
    VALORPISCINA = 20.0, VALORSALAOFESTAS = 50.0 ,VALORRESTAURANTE = 35.0
    caracter lazer


    funcao inicio() {
    	  
    		logico encerra = falso
		faca{
			escreva("Escolha opcao: \n")
			escreva("1-Cadastrar Hospedes\n")
			escreva("2-Exibir Hospedes Cadastrados\n")
			escreva("3-Reservar Área de Lazer\n")
			escreva("4-Calcular total a pagar\n")
			escreva("0-Sair\n")
			escreva("\n")
			leia(opcao)
			escolha(opcao){
				
				caso 0:
					encerra = verdadeiro
					pare
				caso 1:			
					cadastrar()			
					pare
				
				caso 2:
					exibirHospedes()
					pare
				
				caso 3:
					reservarAreaDeLazer()
					pare
				
				caso 4:
    					calculoTotal()
				    pare
			}		
		}enquanto (nao encerra)
			escreva("Você saiu, volte sempre!")
}		
			
                 
        			
   	funcao cadastrar() {
        se (indiceHospede < 10) {
            escreva("Pode cadastrar. Digite o nome do hóspede: ")
            leia(nome)

            escreva("Digite o CPF: ")
            leia(cpf)

            escreva("Digite a quantidade de dias: ")
            leia(quantidadeDias)

            escreva("\nIndice: ", indiceHospede)
            escreva("\nNome: ", nome)
            escreva(" CPF: ", cpf)
            escreva("\nQuantidade de Dias: ", quantidadeDias)

            escreva("\nConfirma as informações [S/N]? ")
            leia(resposta)
            resposta = tx.extrair_subtexto(tx.caixa_alta(resposta),0,1)

            enquanto (resposta != "S" e resposta != "N") {
                escreva("Resposta inválida. Tente novamente [S/N]: ")
                leia(resposta)
                resposta = tx.extrair_subtexto(tx.caixa_alta(resposta),0,1)
            }

            se (resposta == "S") {
               
                escreva("+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+\n")
                nomeHosp[indiceHospede] = nome
			 CPF[indiceHospede] = cpf
			 quantDias[indiceHospede] = quantidadeDias
			 
 			 escreva("Cadastro realizado com sucesso\n")
			 escreva("Indice: ", indiceHospede)
	           escreva("\nNome: ", nomeHosp[indiceHospede])
	           escreva(" CPF: ", CPF[indiceHospede])
	           escreva("\nQuantidade de Dias:", quantDias[indiceHospede])
	           escreva("\n+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+\n")
	           indiceHospede = indiceHospede + 1
	 
            }senao{
                escreva("Cadastro excluido\n")
            }
        }senao{
            escreva("cadastros estão lotados\n")
        }
    }

    funcao exibirHospedes(){
    		  escreva("Hospedes Cadastrados:\n")
            para ( i = 0 ; i < indiceHospede; i++) {
            	 escreva("----------------------------------------------")
                escreva("\nIndice: ", i)
                escreva("\nNome: ", nomeHosp[i])
                escreva(" CPF: ", CPF[i])
                escreva(" Quantidade de Dias: ", quantDias[i])
                escreva("\n-----------------------------------------------\n")
            }
	}
	funcao reservarAreaDeLazer() {
    		exibirHospedes()

   		escreva("Qual o indice do hospede? ")
   		leia(iInformado)

   	     se (iInformado >= 0 e iInformado < indiceHospede) {
        		escreva("Qual area de lazer desejada? (A/S/R)?\n")
        		escreva("Academia custa: R$20\n")
        		escreva("Salao de Festas custa: R$50\n")
        		escreva("Restaurante custa: R$35\n")

        		leia(lazer)
        
        escolha(lazer) {
            caso 'A':
                despesasHotel[iInformado] += VALORPISCINA
                escreva("O valor foi adicionado a sua conta!!")
            pare
            caso 'S':
                despesasHotel[iInformado] += VALORSALAOFESTAS 
                 escreva("O valor foi adicionado a sua conta!!")
            pare
            caso 'R':
                despesasHotel[iInformado] += VALORRESTAURANTE
                 escreva("O valor foi adicionado a sua conta!!")
            pare
            caso contrario:
                escreva("Informacao errada\n")
        }
   		}senao{
        escreva("#####Indice de hospede errado#####\n")
        }
		escreva("\n")
    		
	}

	funcao calculoTotal(){
		inteiro iHosp
		logico c=verdadeiro
		faca{
			exibirHospedes()
			escreva("\nInforme o indice do hospede: \n")
			leia(iHosp)
			se(iHosp < indiceHospede){
				escreva("\nO(A) hospede ", nomeHosp[iHosp], " tem um gasto total de R$ ", exibirTotal(iHosp), " reias.\n")	
				c=falso
			}senao{
				escreva("\nposição inexiste e/ou posição não ocupada por um hóspede\n")	
			}
		
		}enquanto(c)
	}
	

	funcao real exibirTotal(inteiro iHosp){
   
		retorne despesasHotel[iHosp] + (VALORDIARIA * quantDias[iHosp])
	}


}