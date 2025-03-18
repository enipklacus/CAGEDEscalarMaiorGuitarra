%\include "Preâmbulo.ly"
%\include "Backbone.ly"
\bookpart {
\paper { print-page-number = ##t two-sided = ##t 
         ragged-last-bottom = ##f }
\tocItem actVI.sceneI \markup "Padrões em Oitavas"
\score { 
  \header { 
      title = \markup \center-column 
      { "Padrões em Oitavas" \vspace #1 \with-color "white" "a" }
      tagline = ##f
} % fim header
  <<
    \keepWithTag #'(pauta) {\MaiorPauta {\oitavastudo}}
    \keepWithTag #'(tablatura) {\MaiorTablatura {\oitavastudo}} 
  >> } 
%%
\pageBreak
\tocItem actVI.sceneII \markup "Oitavas Harmônicas"
  \score { 
  \header { 
      title = \markup \center-column 
      { "Oitavas Harmônicas" \vspace #1 \with-color "white" "a" }
      tagline = ##f
} % fim header
  <<
    \keepWithTag #'(pauta) {\MaiorPauta {\oitavasaomesmotempo}}
    \keepWithTag #'(tablatura) {\MaiorTablatura {\oitavasaomesmotempo}} 
  >> } 
}