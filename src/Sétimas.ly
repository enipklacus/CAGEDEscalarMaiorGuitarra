%\include "Preâmbulo.ly"
%\include "Backbone.ly"
\bookpart {
\paper { print-page-number = ##t two-sided = ##t 
         ragged-last-bottom = ##f }
\tocItem actVI.sceneI \markup "Padrões em Sétimas"
\score { 
  \header { 
      title = \markup \center-column 
      { "Padrões em Sétimas" \vspace #1 \with-color "white" "a" }
      tagline = ##f
} % fim header
  <<
    \keepWithTag #'(pauta) {\MaiorPauta {\sétimastudo}}
    \keepWithTag #'(tablatura) {\MaiorTablatura {\sétimastudo}} 
  >> } 
%%
\pageBreak
\tocItem actVI.sceneII \markup "Sétimas Harmônicas"
  \score { 
  \header { 
      title = \markup \center-column 
      { "Sétimas Harmônicas" \vspace #1 \with-color "white" "a" }
      tagline = ##f
} % fim header
  <<
    \keepWithTag #'(pauta) {\MaiorPauta {\sétimasaomesmotempo}}
    \keepWithTag #'(tablatura) {\MaiorTablatura {\sétimasaomesmotempo}} 
  >> } 
}