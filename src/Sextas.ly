%\include "Preâmbulo.ly"
%\include "Backbone.ly"
\bookpart {
\paper { print-page-number = ##t two-sided = ##t 
         ragged-last-bottom = ##f }
\tocItem actVI.sceneI \markup "Padrões em Sextas"
\score { 
  \header { 
      title = \markup \center-column 
      { "Padrões em Sextas" \vspace #1 \with-color "white" "a" }
      tagline = ##f
} % fim header
  <<
    \keepWithTag #'(pauta) {\MaiorPauta {\sextastudo}}
    \keepWithTag #'(tablatura) {\MaiorTablatura {\sextastudo}} 
  >> } 
%%
\pageBreak
\tocItem actVI.sceneII \markup "Sextas Harmônicas"
  \score { 
  \header { 
      title = \markup \center-column 
      { "Sextas Harmônicas" \vspace #1 \with-color "white" "a" }
      tagline = ##f
} % fim header
  <<
    \keepWithTag #'(pauta) {\MaiorPauta {\sextasaomesmotempo}}
    \keepWithTag #'(tablatura) {\MaiorTablatura {\sextasaomesmotempo}} 
  >> } 
}