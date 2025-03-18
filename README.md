# CAGED Escala Maior: Guitarra e Violão

Material didático escrito no ```Lilypond```. Uso recomendado para alunos iniciantes e intermediários em música, assim como usuários do ```Lilypond``` que desejam compartilhar e debater código. Caso professores e tutores de música desejem usufruir, este livro pode ser utilizado sem nenhuma restrição além do que já previsto na licença de uso.

Como este livro foi feito na licença CC BY-NC-SA 4.0 você pode distribuir com deus e o mundo, assim como alterar e criar em cima deste material a vontade.
**As únicas coisas que você *não pode* fazer com este material são:**
* não citar minha autoria, podendo inclusive estar sujeito ao crime de plágio intelectual.
* utilizar para fins comerciais na qual a arrecadação venha primariamente em função deste livro (como vender ou alugar este material).

## Como utilizar

O material didático (em PDF) já está disponível nos arquivos principais e na aba "Releases".

Para compilar o código-fonte é necessário ter a versão ```2.25.20``` ou superior. Baixe o Lilypond, mova o diretório descomprimido para algum lugar que você não vá mexer e execute o programa. Apenas a função principal já funciona; não precisa de nenhum argumento a mais.

Entretanto, recomendo a todos os usuários (Windows, Macintosh ou Linux) a utilizarem o ```Frescobaldi```. Este programa é uma interface de desenvolvimento que implementa uma interface gráfica para o ```Lilypond```. Mesmo se for utilizar o ```Frescobaldi``` ainda é necessário ter o ```Lilypond``` instalado em seu computador.

[Link para download mais recente do Lilypond](https://lilypond.org/development.html)

[Link para a página principal do Frescobaldi](https://www.frescobaldi.org/)

## Dependências para compilar
```Lilypond 2.25.20=<```

Por costume, eu sempre utilizo uma versão em desenvolvimento do ```Lilypond```. Contudo, até o presente momento todos os arquivos neste projeto serão compilados e testados nesta versão.

## Integridade dos arquivos.
Para verificar a integridade dos arquivos do código-fonte (localizado no diretório "src"), execute o comando ```md5sum -c src.md5```.

Para verificar a integridade do arquivo principal, execute o comando ```md5sum -c main.md5```.

## A Corrigir

Por algum motivo, o bloco ```bookpart``` parece impedir com que os marcadores de PDF (*bookmarks*) sejam exportados. O sumário funciona normalmente, redirecionando até a página em questão, mas não existe nenhuma entrada no menu de *bookmarks*.

E é claro que muito provavelmente este código conseguiria ser otimizado com mais funções. Mas eu não sou desenvolvedor (nem de ```Lilypond``` nem de ```Scheme```) e é sobre isso. 
