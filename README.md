# Devs Travel

Aplicativo que mostra pontos túristicos das cidades mais visitadas nos continentes europeus, Asiaticos, Africanos e Americanos

## Conhecimentos Adquiridos nesse projeto 

Conhecimento em widgets do Material Design que identifica no Cupertino a implementação das diretrizes de interface humana para o android, pelo widget foi feito o controle de estado. Este tipo de widget não possibilitou as alterações dinâmicas, que alinhou o comportamento da interface estática.Eles foram 
utilizados para a criação de estruturas não mutáveis nos aplicativos (telas, menus, imagens etc.), ou seja, para capturar informações vindas de entradas de dados dos usuários, acessos a APIs e coisas que mudem ao longo do processo, Orientação a objetos e Arquiteturas padrões de projeto. 

Foi usado o List View que é o widget de rolagem. Ele exibe seus filhos um após o outro na direção de rolagem. No eixo transversal, os filhos são obrigados a preencher o ListView. Se não for nulo, o itemExtent força os filhos a terem a extensão especificada na direção de rolagem. Se não for nulo, o protótipoItem força os filhos a terem a mesma extensão que o widget fornecido na direção de rolagem. Especificar um itemExtent ou um protótipoItem é mais eficiente do que permitir que os filhos determinem sua própria extensão porque o mecanismo de rolagem pode fazer uso do conhecimento prévio da extensão dos filhos para economizar trabalho, por exemplo, quando a posição de rolagem muda drasticamente. Você não pode especificar ambos itemExtent e protótipoItem, apenas um ou nenhum deles.

## Dificuldades com o Flutter 

Algunas filters do tipo RaisedButton que foi abandonada do flutter e substituida pelo ElevetedButton, foi uma dificuldade que eu tive de procurar, pois havia alguns códigos não padronizados que dificultava o aceitamento dessa filters para efetuar containers para as imagens. 

Outra dificuldade encontrada foi a parte de listar as imagens na tela de pesquisa, pois não estava conseguindo identifica o erro de não obter as fotos na tela para capturar por palavras um ponto turístico nos eventuais continentes. Tinha que passar um listen false em uma função para ele pode realizar a contagem das fotos por palavra. 

## Tecnologias Utilizadas

-[Dart](https://dart.dev/guides) 

-[Flutter](https://docs.flutter.dev/)

## Recursos do Dart + Flutter 

-[Provider](https://pub.dev/packages/provider) 

-[Http](https://www.alura.com.br/conteudo/flutter-comunicacao-http) 

-[Cupertino_Icons](https://pub.dev/packages/cupertino_icons)

## Api do Projeto 

-[Api](https://api.b7web.com.br/flutter1wb/)

## Baixar e visualizar o Projeto 

  ```bash 
  
  # fazer um git clone do projeto pelo terminal ou baixar e obter via winrar  
  
  $ Obter o Android Studio ou VsCode instalado na sua maquina
  
  $ Obter Java Jre e Jdk na versão 11.0 ou outras versões para ter o Android Instalado 
  
  $ Ativar o modulo desenvolvedor do Android no seu celular para testar o aplicativo 
  
  ```
  
  ## Como executar o projeto no terminal ou vscode

```bash
    # clonar repositório
    git clone https://github.com/ghdss26/DevsTravel.git

    # entrar na pasta do projeto cdp
    cd devstravel 
  
    # executar o projeto
    flutter run

    Obs: Só siga esses passos, caso tenha o android Studio instalado e se for usuário linux 
```



