\version "2.25.20"
%%
\layout {\context {\Score \omit BarNumber}}
%%
%%O Preâmbulo contém os sistemas dos instrumentos. Calhou de deixar nele porque ele contém todas as funções.
\include "Preâmbulo.ly"
\include "Backbone.ly"
%%
%%
%{notas = {
\tag #'padrões {\padrões}
\tag #'terçastudo {\terçastudo}
\tag #'quartastudo {\quartastudo \pageTurn \quartasaomesmotempo}
\tag #'quintastudo {\quintastudo \pageTurn \quintasaomesmotempo}
\tag #'sextastudo {\sextastudo \pageTurn \sextasaomesmotempo}
\tag #'sétimastudo {\sétimastudo \pageTurn \sétimasaomesmotempo}
\tag #'oitavastudo {\oitavastudo \pageTurn \oitavasaomesmotempo}
%} % fim variável notas
%%
\book {
\bookOutputName "Cavalcanti(2025)-CagedMaior"
\header { 
  pdftitle = "CAGED Escala Maior"
  pdfauthor = "Lucas Pinke Cavalcanti"
  pdfcopyright = "CC BY-NC-SA 4.0 (2025)"
  tagline = \markup {
  \center-column {
    { \fill-line { \null
  {\center-column {"Feito com" "Lilypond."}}
  {\override #'(error-correction-level . low)
  \qr-code #15.0 "https://github.com/enipklacus/CAGEDEscalarMaiorGuitarra.git"}
  {\center-column { "Engraved with" LilyPond }} \null
    }} % fim center
  \line {"Para novas versões deste material, acesse:"}
  \line { \with-url "https://github.com/enipklacus/CAGEDEscalarMaiorGuitarra.git" 
  {\magnify #0.8 "https://github.com/enipklacus/CAGEDEscalarMaiorGuitarra.git"}}
  \line {\italic {"Lucas Pinke (2025)." "CC BY-NC-SA 4.0"}}
  } % fim center-column
  } % fim markup
} % fim header
\paper { 
oddHeaderMarkup = \markup {\fill-line {
        \if \should-print-page-number
          \fromproperty #'page:page-number-string 
        \null } }
evenHeaderMarkup = \markup {{ \fill-line {
        \null
        \if \should-print-page-number
          \fromproperty #'page:page-number-string }}}
two-sided = ##f
inner-margin = 12
indent = 0
outer-margin = 15
top-margin = 20
bottom-margin = 15
left-margin = 15 right-margin = 15
        print-page-number = ##f
        print-all-headers = ##t 
        ragged-bottom = ##f 
        tocTitleMarkup = 
\markup \huge \column {
\fill-line { 
  \center-column {
  % {\score { \relative c' {c1 c1 c1 c1} }}
  {\score { \relative c' {
     \override Staff.BarLine.stencil = ##f
     \clef "alto"   s1 
     \clef "treble" s1
     \override Staff.Clef.full-size-change = ##t
     \clef "bass"   s1  } 
  }}
  \magnify #2.5 {\null "Sumário" \null} }
} % fim fill-line
\vspace #1
\null } 
%%
        tocActMarkup = \markup \large \column {
\hspace #1 \fill-line 
{ \null \italic \fromproperty #'toc:text \null }
\hspace #1 }
%%
        tocItemMarkup = \markup \fill-line {
    \fill-with-pattern #1.5 #CENTER .
    \line {
      %\hspace #-4 %% Cancelling the first level's tocIndentMarkup
      \fromproperty #'toc:indent \bold \fromproperty #'toc:text
      \hspace #2 } \fromproperty #'toc:page }
%%
} % fim paper
%%
\include "Capa.ly" \pageBreak
%%
\bookpart {
\paper {}
\markuplist \table-of-contents
} % fim bookpart
%%
\include "Como_Utilizar_Este_Livro.ly" \pageBreak
%%
\markup { \vspace #20 \center-column {\fill-line {\magnify #1.5 \italic "Página propositalmente vazia."} % fim fill-line
} % fim center
} % fim markup
\pageBreak
%%
% %{
\tocAct actII \markup {"Padrões Fundamentais"} \pageBreak \include "Padrões.ly"
\tocAct actIII \markup {"Padrões em Terças"} \pageBreak \include "Terças.ly"
\markup { \vspace #20 \center-column {\fill-line {\magnify #1.5 \italic "Página propositalmente vazia."}}} % fim fill-line & center & markup
\pageBreak
\tocAct actIV \markup {"Padrões em Quartas"} \pageBreak \include "Quartas.ly"
\tocAct actV \markup {"Padrões em Quintas"} \pageBreak \include "Quintas.ly"
\tocAct actVI \markup {"Padrões em Sextas"} \pageBreak \include "Sextas.ly"
\tocAct actVII \markup {"Padrões em Sétimas"} \pageBreak \include "Sétimas.ly"
\tocAct actVIII \markup {"Padrões em Oitavas"} \pageBreak \include "Oitavas.ly"
% %% %}
\include "ContraCapa.ly"
} % fim book