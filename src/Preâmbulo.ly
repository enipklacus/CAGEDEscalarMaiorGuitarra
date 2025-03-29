%%Preâmbulo (funções)
%%
%%Todas as funções de pitch_after_note
%%
%%TERÇAS
termaj =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
     $note \transpose c e { $note }
   #}))
%
termin =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
     $note \transpose c ees { $note }
   #}))
%
termajdes =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
     \transpose c e { $note } $note
   #}))
%
termindes =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
     \transpose c ees { $note } $note
   #}))
%%
%%QUARTAS
%%
quarpe =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
     $note \transpose c f { $note }
   #}))
%
quaraum =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
     $note \transpose c fis { $note }
   #}))
%
quarpedes =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
     \transpose c f { $note } $note 
   #}))
%
quaraumdes =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
     \transpose c fis { $note } $note 
   #}))
%
quarpejun =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    << $note \transpose c f { $note } >>
   #}))
%
quaraumjun =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    << $note \transpose c fis { $note } >>
   #}))
%
%%QUINTAS
%
quinjus =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    $note \transpose c g { $note }
   #}))
%
quindim =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    $note \transpose c ges { $note }
   #}))
%
quinjusdes =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    \transpose c g { $note } $note
   #}))
%
quindimdes =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    \transpose c ges { $note } $note
   #}))
%
quinjusjun =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    << $note \transpose c g { $note } >>
   #}))
%
quindimjun =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    << $note \transpose c ges { $note } >>
   #}))
%%%
%%%Sextas
%%%
sexmaj =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    $note \transpose c a { $note }
   #}))
%
sexmin =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    $note \transpose c aes { $note }
   #}))
%
sexmajdes =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    \transpose c a { $note } $note
   #}))
%
sexmindes =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    \transpose c aes { $note } $note
   #}))
%
sexmajjun =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    << $note \transpose c a { $note } >>
   #}))
%
sexminjun =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    << $note \transpose c aes { $note } >>
   #}))
%
setmaj =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    $note \transpose c b { $note }
   #}))
%
setmin =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    $note \transpose c bes { $note }
   #}))
%
setmajdes =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    \transpose c b { $note } $note
   #}))
%
setmindes =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    \transpose c bes { $note } $note
   #}))
%
setmajjun =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    << $note \transpose c b { $note } >>
   #}))
%
setminjun =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    << $note \transpose c bes { $note } >>
   #}))
%
oit =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    $note \transpose c c' { $note }
   #}))
%
oitdes =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    \transpose c c' { $note } $note
   #}))
%
oitjun =
#(define-music-function
  (note)
  (ly:music?)
  (make-relative (note) note
   #{
    << $note \transpose c c' { $note } >>
   #}))
%
%%
%%Todas as funções de minimum_fret_for_tab
%%
minimumFret = 
#(define-music-function
     (casa)
     (number?)
#{
\set TabStaff.minimumFret = #casa
\set TabStaff.restrainOpenStrings = ##t
#})

onceRevertMinimumFretOpen =
#(define-music-function
     ()
     ()
#{
\once \set TabStaff.minimumFret = #0
\once \set TabStaff.restrainOpenStrings = ##f
#})

onceRevertMinimumFretClosed =
#(define-music-function
     ()
     ()
#{
\once \set TabStaff.minimumFret = #1
\once \set TabStaff.restrainOpenStrings = ##t
#})
%%
%%Todas as funções de goAround
%%
%%USE WRAP LINE
%%Esta função serve para executar uma expressão musical duas vezes: a primeira originalmente (primo) e a segunda em retrógrado.
%%ex: c1 d, \goAround {e8 f g d}
%%goAround original literalmente vai usar uma expressão e repetir ela, independentemente.
%%goAroundAdd deixa você colocar algo entre primo e retrógrado.
%%
goAround = 
#(define-music-function
  (musica)
  (ly:music?)
  (make-relative (musica) musica
#{
  $musica \retrograde { $musica }
#}))
%%
goAroundAdd = 
#(define-music-function
  (musica adicional)
  (ly:music? ly:music?)
  (make-relative (musica) musica adicional)
#{
  $musica $adicional \retrograde { $musica }
#})
%%
%%
%%
tocAct =
  #(define-music-function (label text) (symbol? markup?)
     (add-toc-item! 'tocActMarkup text label))
%%
%%
%%
MaiorPauta =
#(define-music-function
  (musica) (ly:music?)
#{
\new Staff = "MaiorPauta" {
\transpose c c' { 
\removeWithTag #'tablatura { $musica }
} % fim transpose
} % fim Staff
#})
%%
%%
%%
MaiorTablatura =
#(define-music-function
  (musica) (ly:music?)
#{
\new TabStaff = "tablatura"
\with { alignBelowContext = "MaiorPauta" }
{ % início TabStaff
\clef "moderntab"
\removeWithTag #'(pauta seção) { $musica }
} % fim TabStaff
#})