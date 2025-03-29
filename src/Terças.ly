%\include "Preâmbulo.ly"
%\include "Backbone.ly"
\bookpart {
\paper { print-page-number = ##t two-sided = ##t 
         ragged-last-bottom = ##f }
\tocItem actIII.sceneI \markup "Padrões em Terças"
\score { 
\header { 
    title = \markup \center-column 
    { "Padrões em Terças" \vspace #1 \with-color "white" "a" }
    tagline = ##f
} % fim header
<<
  \keepWithTag #'(pauta) {\MaiorPauta {\terçastudo}}
  \keepWithTag #'(tablatura) {\MaiorTablatura {\terçastudo}} 
>> } % fim score
} % fim bookpart