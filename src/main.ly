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
\bookOutputName "Cavalcanti(2025)-IntervalosEscalaMaior"
\header { 
  pdftitle = "Escala Maior e Intervalos Melódicos"
  pdfauthor = "Lucas Pinke Cavalcanti"
  pdfcopyright = "CC BY-NC-SA 4.0 (2025)"
  tagline = \markup {
  \center-column {
    { \fill-line { \null
  {\center-column {"Feito com" "Lilypond."}}
 % {\override #'(error-correction-level . low) \qr-code #15.0 "https://github.com/enipklacus/CAGEDEscalarMaiorGuitarra.git"}
  {\center-column { "Engraved with" LilyPond }} \null
    }} % fim center
  \line {"Para novas versões deste material, acesse:"}
 % \line { \with-url "https://github.com/enipklacus/CAGEDEscalarMaiorGuitarra.git" 
 % {\magnify #0.8 "https://github.com/enipklacus/CAGEDEscalarMaiorGuitarra.git"}}
  \line {\italic {"Lucas Pinke (2025)." "CC BY-NC-SA 4.0"}}
  } % fim center-column
  } % fim markup
} % fim header
\paper { 
%#(set-paper-size "a5")
oddHeaderMarkup = \markup {\fill-line {
        \if \should-print-page-number
          \fromproperty #'page:page-number-string 
        \null } }
evenHeaderMarkup = \markup {{ \fill-line {
        \null
        \if \should-print-page-number
          \fromproperty #'page:page-number-string }}}
two-sided = ##f
min-systems-per-page = 4
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
\bookpart {\paper {min-systems-per-page = ##f} \markuplist \table-of-contents} % fim bookpart
%%
\include "Como_Utilizar_Este_Livro.ly" \pageBreak
%%
%%
% %{
\tocAct actI \markup { 
"Escala maior de Dó" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key c \major \hideNotes c1}}}
} % fim markup
\bookpart { 
\markup { \center-column { \fill-line {
\null \bold "Escala maior de Dó" \null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c c { \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c c { \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c c { \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c c { \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c c { \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c c { \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
  
%
} % fim bookpart
%%
%%
\tocAct actII \markup { 
"Escala maior de Sol" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key g \major \hideNotes c1}}}
} % fim markup
\bookpart { % escala de sol
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Sol" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key g \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t  ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c g { \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c g { \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c g { \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c g { \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c g { \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c g { \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
%
} % fim bookpart
%%
\tocAct actII \markup { 
"Escala maior de Ré" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key d \major \hideNotes c1}}}
} % fim markup
\bookpart { % escala de sol
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Ré" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key d \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c d { \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c d { \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c d { \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c d { \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c d { \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c d { \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
} % fim bookpart
%%
\tocAct actII \markup { 
"Escala maior de Lá" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key a \major \hideNotes c1}}}
} % fim markup
\bookpart { % escala de sol
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Lá" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key a \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c a, { \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c a, { \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c a, { \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c a, { \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c a, { \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c a, { \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
} % fim bookpart
%%
\tocAct actII \markup { 
"Escala maior de Mi" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key e \major \hideNotes c1}}}
} % fim markup
\bookpart { % escala de sol
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Mi" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key e \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c e { \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c e { \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c e { \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c e { \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c e { \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c e { \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
} % fim bookpart
%%
\tocAct actII \markup { 
"Escala maior de Si" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key b \major \hideNotes c1}}}
} % fim markup
\bookpart { % escala de sol
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Si" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key b \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c b, { \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c b, { \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c b, { \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c b, { \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c b, { \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c b, { \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
} % fim bookpart
%%
\tocAct actII \markup { 
"Escala maior de Fá sustenido" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key fis \major \hideNotes c1}}}
} % fim markup
\bookpart { % escala de sol
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Fá sustenido" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key fis \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c fis { \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c fis { \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c fis { \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c fis { \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c fis { \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c fis { \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
} % fim bookpart
%%
\tocAct actI \markup { 
"Escala maior de Fá" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key f \major \hideNotes c1}}}
} % fim markup
\bookpart { 
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Fá" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key f \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c f { \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c f { \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c f { \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c f { \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c f { \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c f { \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
%
} % fim bookpart
%%
\tocAct actI \markup { 
"Escala maior de Si bemol" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key bes \major \hideNotes c1}}}
} % fim markup
\bookpart { 
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Si bemol" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key bes \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c bes { \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c bes { \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c bes { \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c bes { \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c bes { \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c bes { \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
%
} % fim bookpart
%%
\tocAct actI \markup { 
"Escala maior de Mi bemol" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key ees \major \hideNotes c1}}}
} % fim markup
\bookpart { 
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Mi bemol" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key ees \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ees { \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ees { \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ees { \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ees { \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ees { \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ees { \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
%
} % fim bookpart
%%
\tocAct actI \markup { 
"Escala maior de Lá bemol" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key aes \major \hideNotes c1}}}
} % fim markup
\bookpart { 
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Lá bemol" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key aes \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c aes { \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c aes { \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c aes { \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c aes { \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c aes { \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c aes { \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
%
} % fim bookpart
%%
\tocAct actI \markup { 
"Escala maior de Ré bemol" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key des \major \hideNotes c1}}}
} % fim markup
\bookpart { 
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Ré bemol" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key des \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c des { \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c des { \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c des { \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c des { \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c des { \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c des { \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
%
} % fim bookpart
%%
\tocAct actI \markup { 
"Escala maior de Sol bemol" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key ges \major \hideNotes c1}}}
} % fim markup
\bookpart { 
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Sol bemol" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key ges \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ges { \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ges { \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ges { \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ges { \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ges { \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ges { \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
%
} % fim bookpart
%%
%%
%%CLAVE DE FÁ
%%
%%
\tocAct actI \markup { 
"Escala maior de Dó" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key c \major \hideNotes c1}}}
} % fim markup
\bookpart { 
\markup { \center-column { \fill-line {
\null \bold "Escala maior de Dó" \null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c c,, { \clef "bass"  \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c c,, { \clef "bass"  \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c c,, { \clef "bass"  \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c c,, { \clef "bass"  \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c c,, { \clef "bass"  \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c c,, { \clef "bass"  \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
%
} % fim bookpart
%%
%%
\tocAct actII \markup { 
"Escala maior de Sol" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key g \major \hideNotes c1}}}
} % fim markup
\bookpart { % escala de sol
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Sol" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key g \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t  ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c g,, { \clef "bass"  \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c g,, { \clef "bass"  \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c g,, { \clef "bass"  \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c g,, { \clef "bass"  \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c g,, { \clef "bass"  \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c g,, { \clef "bass"  \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
%
\pageBreak
%
} % fim bookpart
%%
\tocAct actII \markup { 
"Escala maior de Ré" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key d \major \hideNotes c1}}}
} % fim markup
\bookpart { % escala de sol
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Ré" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key d \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c d,, { \clef "bass"  \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c d,, { \clef "bass"  \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c d,, { \clef "bass"  \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c d,, { \clef "bass"  \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c d,, { \clef "bass"  \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c d,, { \clef "bass"  \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
} % fim bookpart
%%
\tocAct actII \markup { 
"Escala maior de Lá" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key a \major \hideNotes c1}}}
} % fim markup
\bookpart { % escala de sol
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Lá" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key a \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c a,, { \clef "bass"\terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c a,, { \clef "bass"\quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c a,, { \clef "bass"\quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c a,, { \clef "bass"\sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c a,, { \clef "bass"\sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c a,, { \clef "bass"\oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
} % fim bookpart
%%
\tocAct actII \markup { 
"Escala maior de Mi" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key e \major \hideNotes c1}}}
} % fim markup
\bookpart { % escala de sol
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Mi" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key e \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c e,, { \clef "bass"\terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c e,, { \clef "bass"\quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c e,, { \clef "bass"\quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c e,, { \clef "bass"\sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c e,, { \clef "bass"\sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c e,, { \clef "bass"\oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
} % fim bookpart
%%
\tocAct actII \markup { 
"Escala maior de Si" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key b \major \hideNotes c1}}}
} % fim markup
\bookpart { % escala de sol
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Si" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key b \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c b,, { \clef "bass"  \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c b,, { \clef "bass"  \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c b,, { \clef "bass"  \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c b,, { \clef "bass"  \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c b,, { \clef "bass"  \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c b,, { \clef "bass"  \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
} % fim bookpart
%%
\tocAct actII \markup { 
"Escala maior de Fá sustenido" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key fis \major \hideNotes c1}}}
} % fim markup
\bookpart { % escala de sol
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Fá sustenido" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key fis \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c fis,, { \clef "bass"  \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c fis,, { \clef "bass"  \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c fis,, { \clef "bass"  \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c fis,, { \clef "bass"  \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c fis,, { \clef "bass"  \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c fis,, { \clef "bass"  \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
} % fim bookpart
%%
\tocAct actI \markup { 
"Escala maior de Fá" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key f \major \hideNotes c1}}}
} % fim markup
\bookpart { 
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Fá" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key f \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c f,, { \clef "bass"  \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c f,, { \clef "bass"  \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c f,, { \clef "bass"  \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c f,, { \clef "bass"  \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c f,, { \clef "bass"  \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c f,, { \clef "bass"  \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
%
} % fim bookpart
%%
\tocAct actI \markup { 
"Escala maior de Si bemol" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key bes \major \hideNotes c1}}}
} % fim markup
\bookpart { 
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Si bemol" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key bes \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c bes,, { \clef "bass"  \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c bes,, { \clef "bass"  \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c bes,, { \clef "bass"  \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c bes,, { \clef "bass"  \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c bes,, { \clef "bass"  \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c bes,, { \clef "bass"  \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
%
} % fim bookpart
%%
\tocAct actI \markup { 
"Escala maior de Mi bemol" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key ees \major \hideNotes c1}}}
} % fim markup
\bookpart { 
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Mi bemol" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key ees \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ees,, { \clef "bass"  \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ees,, { \clef "bass"  \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ees,, { \clef "bass"  \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ees,, { \clef "bass"  \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ees,, { \clef "bass"  \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ees,, { \clef "bass"  \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
%
} % fim bookpart
%%
\tocAct actI \markup { 
"Escala maior de Lá bemol" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key aes \major \hideNotes c1}}}
} % fim markup
\bookpart { 
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Lá bemol" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key aes \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c aes,, { \clef "bass"  \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c aes,, { \clef "bass"  \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c aes,, { \clef "bass"  \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c aes,, { \clef "bass"  \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c aes,, { \clef "bass"  \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c aes,, { \clef "bass"  \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
%
} % fim bookpart
%%
\tocAct actI \markup { 
"Escala maior de Ré bemol" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key des \major \hideNotes c1}}}
} % fim markup
\bookpart { 
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Ré bemol" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key des \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c des,, { \clef "bass"  \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c des,, { \clef "bass"  \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c des,, { \clef "bass"  \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c des,, { \clef "bass"  \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c des,, { \clef "bass"  \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c des,, { \clef "bass"  \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
%
} % fim bookpart
%%
\tocAct actI \markup { 
"Escala maior de Sol bemol" \hspace #1
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key ges \major \hideNotes c1}}}
} % fim markup
\bookpart { 
\markup { \center-column { \fill-line {
\null 
\line {\bold "Escala maior de Sol bemol" 
\score { 
  \new Staff \with { \magnifyStaff #70/100
  \remove Time_signature_engraver
  \remove Clef_engraver
  \omit Staff.BarLine }
  {\relative c'' {\stopStaff \clef "treble"
  \key ges \major \hideNotes c1}}}
}\null } } }
\paper { print-page-number = ##t two-sided = ##t ragged-last-bottom = ##t }
\tocItem actI \markup "Padrões em Terças"
  \score { 
  \header {title = \markup \center-column { "Padrões em Terças" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ges,, { \clef "bass"  \terçastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quartas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quartas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ges,, { \clef "bass"  \quartastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Quintas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Quintas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ges,, { \clef "bass"  \quintastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sextas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sextas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ges,, { \clef "bass"  \sextastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Sétimas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ges,, { \clef "bass"  \sétimastudo}}}} % fim score
  \pageBreak
\tocItem actI \markup "Padrões em Oitavas"
  \score { 
  \header {title = \markup \center-column { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" } tagline = ##f } % fim header
  \keepWithTag #'(pauta) {\MaiorPauta {\transpose c ges,, { \clef "bass"  \oitavastudo}}}} % fim score
\include "FimDoCapítulo.ly"
%
} % fim bookpart
%%
%%
% %% %}
\include "ContraCapa.ly"
} % fim book