\markup { % contra
\center-column { 
\vspace #12
{\score { \relative c' {
     \magnifyStaff #1.5
     \override Staff.BarLine.stencil = ##f
     \clef "alto"   s1 
     \clef "treble" s1
     \override Staff.Clef.full-size-change = ##t
     \clef "bass"   s1  } }}
\abs-vspace #20
{\magnify #2.5 \bold "CAGED: Escala Maior"}
\abs-vspace #5 \fill-line {
\center-column { \wordwrap-lines {
\italic {
Um caderno de exercícios para estudar o sistema CAGED, com diversos intervalos e execuções.
} % itálico
} % wordwrap 
\abs-vspace #5
\bold "Lucas Pinke (2025)."
"CC BY-NC-SA 4.0"
}}} % fim center
} % fim markup