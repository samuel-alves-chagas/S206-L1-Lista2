# S206 - Qualidade de Software - Lista de Exercício 2
- Repositório para realização da lista de exercícios 2 da disciplina de Qualidade de Software - S206. 
- Instituto Nacional de Telecomunicações - Inatel. 
- Curso: Engenharia de Software Laboratório.
- Monitor: Antônio Victor

O projeto visa testar a API do universo Breaking Bad que permite trazer informações dos personagens, episódios, falas famosas e numero de assassinatos. Para poder executar os testes siga os comandos abaixo:

- Clone o projeto na sua máquina local
```
git clone https://github.com/triangulodepascal/S206-L1-Lista2.git
```

- Instale o Meaven em sua máquina caso não o possua:
https://maven.apache.org

Para executar os testes rode o comando a seguir na pasta testes_api:
```
mvn test -Dtest=BreakingBadRunner
```

OBS: Ao executar por linha de comando um relatório será disponibilizado na pasta **target/karate-reports** chamado *breaking_bad.breaking_bad.html*, abra-o em seu navegador para analisar melhor os dados de teste
