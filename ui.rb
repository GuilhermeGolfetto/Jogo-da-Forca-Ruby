#!/bin/env ruby
# encoding: utf-8
def avisa_chute_efetuado(chute)
	puts "Você já chutou #{chute}"
end

def avisa_letra_nao_encontrada
	puts "letra nao encontrada."
end

def avisa_letra_encontrada(total_encontrado)
	puts "Letra encontada #{total_encontrado} vezes."
end			

def avisa_acertou_palavra
	puts "Parabéns! Acertou!"		
end

def avisa_errou_palavra
	puts "Que pena....errou"
end

def avisa_pontos(pontos_ate_agora)
	puts "Você ganhou #{pontos_ate_agora} pontos."
end

def avisa_escolhendo_palavra
	puts "Escolhendo uma palavra secreta"
end


def da_boas_vindas
	puts "/*************/"
	puts "/Jogo da forca/"
	puts "/*************/\n"
	puts "Qual é o seu nome?"
	nome = gets.strip
	puts "Começaremos o jogo para você #{nome}."
	return nome
end

def desenha_forca(erros)
	cabeca = "   "
	bracos = "   "
	pernas = "   "
	corpo = " "

	if erros >= 1
		cabeca = "(_)"
	end
	if erros >= 2
		bracos = " | " 
		corpo = " | "
	end
	if erros >=3
		bracos = "\\|/"
	end
	if erros >= 4
		pernas = "/ \\"
	end
	puts " ___________      \n"
	puts " |/         |     \n" 
	puts " |         #{cabeca}  \n"
	puts " |         #{bracos}  \n"
	puts " |         #{corpo}   \n" 
	puts " |         #{pernas }  \n"
	puts " |          \n"
	puts "_|__        \n"
	puts "\n\n"
end


def avisa_palavra_escolhida(palavra_secreta)
	puts "Palavra secreta com #{palavra_secreta.size} letras escolhida"
	return palavra_secreta
end

def nao_quer_jogar?
	puts "Deseja jogar Novamente? (S/N)"
	quero_jogar = gets.strip
	nao_quer_jogar = quero_jogar.upcase == "N"
end

def cabecalho_de_tentativas(erros, chutes, mascara)
	puts "\n\n\n\n"
	desenha_forca(erros)
	puts "Palavra secreta #{mascara}"
	puts "Erros até agora #{erros}"
	puts "Chutes até agora: #{chutes}"
end

def pede_um_chute
	
	puts "Entre com uma letra ou uma palavra"
	chute = gets.strip.downcase
	puts "Será que acertou? você chutou #{chute}"
	return chute
end
def avisa_pontos_totais(pontos_totais)
	puts "Você possui #{pontos_totais} pontos"
end
def avisa_campeao_atual(dados)
	puts "Nosso campeao atual é #{dados[0]} com #{dados[1]} pontos"
end