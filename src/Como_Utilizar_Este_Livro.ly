\bookpart {
   \paper { 
   print-page-number = ##t
   indent = 0 
   ragged-bottom = ##t
   tocActMarkup = \markup \large \column {
\hspace #1 \fill-line 
{ \null \italic \fromproperty #'toc:text \null }
\hspace #1 }
  } % fim paper
  %%
  \tocItem actI.sceneI \markup { "Como usar este livro" }
  \markup {
  \center-column {
  \fill-line {
  \magnify #1.5 \bold "Como usar este livro"
  } % fill line
  \vspace #1
  \with-color "white" a
  } % center
  } % fim markup
%%  
\markup \center-column { \fill-line { \override #'(line-width . 75) \justify {
%\hspace #5
Este livro serve como exercício para o fortalecimento do conhecimento prático e teórico do aluno, seja ele tutelado ou auto ditada.
Mesmo utilizando este material, é fortemente recomendado que o usuário continue estudando através de um livro de teoria musical, independentemente de qual que seja.
Alem de dois livros que posso recomendar - 'Teoria da Música', de Bohumil Med, e 'Harmonia Tonal', de Stefan Kosta e Dorothy Payne (com tradução de Jamil Oliveira e Hugo Ribeiro) - devo fortemente recomendar 'Jazz Handbook', de Jamey Aebersold, e 'Harmonia' (volume 1 e 2), de Ian Guest.
} % fim wordwrap 
} % fill-line
} % markup column
%%
\markup \left-column { \vspace #1 \fill-line { \override #'(line-width . 90) \justify { 
%\hspace #5
Estes exercícios podem ser utilizados em vários instrumentos, afim de reforçar conhecimento do braço do instrumento. Mesmo este material sendo pensado para guitarra e violão, principalmente pelo fato da estrutura geral deste arquivo ter sido retirada de outro material didático que fiz sobre o sistema CAGED, qualquer outro musicista pode utilizar este material. Pianistas e tecladistas, devido a extensão de seu instrumento, serão os mais beneficiados deste material; instrumentistas com extensão menor, como baixistas (contrabaixo elétrico de quatro cordas) e violinistas (ou qualquer instrumento da família das cordas), precisarão limitar a extensão dos exercícios, utilizar outro material didático com extensão menor ou mudar a posição de digitação durante a execução dos exercícios. 
} % wordwrap ou justify
} % fill-line
} % fim wordwrap & markup left column
%%
\markup \left-column { \vspace #1 \fill-line { \override #'(line-width . 90) \justify { 
%\hspace #5
Comece os exercícios de maneira lenta, aumentando a velocidade apenas quando sentir-se confiante em sua digitação. O foco deste material é a fixação de escalas e notas no instrumento, não o desenvolvimento de velocidade. O estudante deve executar e reconhecer as notas dispostas na pauta (inclusive falando em voz alta seus nomes). Recomendo o tempo inicial de 60bpm; quando o aluno se sentir confortável, pode começar a incrementar a velocidade. O discente deve variar a escala que lê, afim de não ficar preso nas escalas com menor número de acidentes.
} % wordwrap ou justify
} % fill-line
} % fim wordwrap & markup left column
%%
\markup {
\vspace #3
%\right-column {
\fill-line {
\null
\right-column {
\line {Espero que este material sirva-lhe bem.}
\italic \line {Atenciosamente, Lucas Pinke Cavalcanti.}
%} % fim right coluna 2
} % fim fill-line
} % fim right
} % fim markup
%%
} % bookpart