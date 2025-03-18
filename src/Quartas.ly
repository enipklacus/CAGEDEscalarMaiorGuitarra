%\include "Preâmbulo.ly"
%\include "Backbone.ly"
\bookpart {
\paper { print-page-number = ##t two-sided = ##t 
         ragged-last-bottom = ##f }
\tocItem actIV.sceneI \markup "Padrões em Quartas"
\score { 
  \header { 
      title = \markup \center-column 
      { "Padrões em Quartas" \vspace #1 \with-color "white" "a" }
      tagline = ##f
} % fim header
  <<
    \keepWithTag #'(pauta) {\MaiorPauta {\quartastudo}}
    \keepWithTag #'(tablatura) {\MaiorTablatura {\quartastudo}} 
  >> } 
%%
\pageBreak
\tocItem actIV.sceneII \markup "Quartas Harmônicas"
  \score { 
  \header { 
      title = \markup \center-column 
      { "Quartas Harmônicas" \vspace #1 \with-color "white" "a" }
      tagline = ##f
} % fim header
  <<
    \keepWithTag #'(pauta) {\MaiorPauta {\quartasaomesmotempo}}
    \keepWithTag #'(tablatura) {\MaiorTablatura {\quartasaomesmotempo}} 
  >> } 
}