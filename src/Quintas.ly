%\include "Preâmbulo.ly"
%\include "Backbone.ly"
\bookpart {
\paper { print-page-number = ##t two-sided = ##t 
         ragged-last-bottom = ##f }
\tocItem actV.sceneI \markup "Padrões em Quintas"
\score { 
  \header { 
      title = \markup \center-column 
      { "Padrões em Quintas" \vspace #1 \with-color "white" "a" }
      tagline = ##f
} % fim header
  <<
    \keepWithTag #'(pauta) {\MaiorPauta {\quintastudo}}
    \keepWithTag #'(tablatura) {\MaiorTablatura {\quintastudo}} 
  >> } 
%%
\pageBreak
\tocItem actV.sceneII \markup "Quintas Harmônicas"
  \score { 
  \header { 
      title = \markup \center-column 
      { "Quintas Harmônicas" \vspace #1 \with-color "white" "a" }
      tagline = ##f
} % fim header
  <<
    \keepWithTag #'(pauta) {\MaiorPauta {\quintasaomesmotempo}}
    \keepWithTag #'(tablatura) {\MaiorTablatura {\quintasaomesmotempo}} 
  >> } 
}