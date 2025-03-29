\markup { % contra
\center-column { 
\vspace #5
%\abs-vspace #5  
{\score { \relative c' {
     \override Staff.BarLine.stencil = ##f
     \clef "alto"   s1 
     \clef "treble" s1
     \override Staff.Clef.full-size-change = ##t
     \clef "bass"   s1  } }}
\abs-vspace #15
{\large \bold "Faça música e revoluções"}
\abs-vspace #5
\fill-line { \wordwrap  {
%%Primeira coluna
\center-column {
\abs-vspace #5  
\fill-line {
\box \pad-markup #2 { \score {
\relative c' {d8 e f g e4 c8 d~ d1}} } } 
\abs-vspace #15  
\wordwrap { \override #'(line-width . 40)
\center-column \italic {
"Lucas Pinke é um músico brasiliense formado" "em licenciatura em música pela" "Universidade de Brasília."
}}
\abs-vspace #15  
\epsfile #X #30 "Foto.eps"
} % center-column
} % fim wordwrap
}} % fim box e fill-line 

} % fim markup
%\score { \relative c' {d8 e f g e4 c8 d~ d1} }