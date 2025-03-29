%\include "Preâmbulo.ly"
%\include "Backbone.ly"
\bookpart {
\paper { print-page-number = ##t two-sided = ##t 
         ragged-last-bottom = ##f }
\tocItem actII.sceneI \markup "Padrões Fundamentais"
%%
\markup \center-column { 
  \fill-line {
{\bold \magnify #1.5 "Padrões Fundamentais" } }
\vspace #1 \with-color "white" "a" }
%%
\score { 
  \header {tagline = ##f } % fim header
  <<
    \keepWithTag #'(padrões pauta seção) {\MaiorPauta {
\tag #'seção { \textMark \markup 
\bold \magnify #1.5 "Dó" }
\Maiorcageddo} }
    \keepWithTag #'(padrões tablatura) {\MaiorTablatura{
\tag #'seção { \textMark \markup 
\bold \magnify #1.5 "Dó" }
\Maiorcageddo}}
  >> 
\layout {
  \context { \Voice \consists Ambitus_engraver } }
} % fim score
%%
\score { 
  \header {tagline = ##f} % fim header
  <<
    \keepWithTag #'(padrões pauta seção) {\MaiorPauta {
\tag #'seção { \textMark \markup 
\bold \magnify #1.5 "Ré" }
\Maiorcagedre} }
    \keepWithTag #'(padrões tablatura) {\MaiorTablatura{
\tag #'seção { \textMark \markup 
\bold \magnify #1.5 "Ré" }
\Maiorcagedre}}
  >> 
\layout {
  \context { \Voice \consists Ambitus_engraver } }
} % fim score
%%
\score { 
  \header {tagline = ##f} % fim header
  <<
    \keepWithTag #'(padrões pauta seção) {\MaiorPauta {
\tag #'seção { \textMark \markup 
\bold \magnify #1.5 "Mi" }
\Maiorcagedmi} }
    \keepWithTag #'(padrões tablatura) {\MaiorTablatura{
\tag #'seção { \textMark \markup 
\bold \magnify #1.5 "Mi" }
\Maiorcagedmi}}
  >> 
\layout {
  \context { \Voice \consists Ambitus_engraver } }
} % fim score
%%
\score { 
  \header {tagline = ##f} % fim header
  <<
    \keepWithTag #'(padrões pauta seção) {\MaiorPauta {
\tag #'seção { \textMark \markup 
\bold \magnify #1.5 "Sol" }
\Maiorcagedsol} }
    \keepWithTag #'(padrões tablatura) {\MaiorTablatura{
\tag #'seção { \textMark \markup 
\bold \magnify #1.5 "Sol" }
\Maiorcagedsol}}
  >> 
\layout {
  \context { \Voice \consists Ambitus_engraver } }
} % fim score
\score { 
  \header {tagline = ##f} % fim header
  <<
    \keepWithTag #'(padrões pauta seção) {\MaiorPauta {
\tag #'seção { \textMark \markup 
\bold \magnify #1.5 "Lá" }
\Maiorcagedla} }
    \keepWithTag #'(padrões tablatura) {\MaiorTablatura{
\tag #'seção { \textMark \markup 
\bold \magnify #1.5 "Lá" }
\Maiorcagedla}}
  >> 
\layout {
  \context { \Voice \consists Ambitus_engraver } }
} % fim score
} % fim bookpart