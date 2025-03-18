\include "Preâmbulo.ly"
Maiorcagedla = {
\relative c {
\tag #'tablatura { \minimumFret #2 }
c8 d e f g a b c d e f g a
g f e d c b a g f e d c b a g 
\onceRevertMinimumFretOpen f
g a b c1
\break
} % fim relative
} % fim variável Maiorcagedla
%%
Maiorcagedre = {
\relative c' {
\tag #'tablatura { \minimumFret #9 }
c8 d e f g a b c d e f
e d c b a g f e d c b a g 
\tag #'tablatura { \minimumFret #8 }
f e d c d e f g a b c2.
\break
} % fim relative
} % fim variável Maiorcagedre
%%
Maiorcagedsol = {
\relative c {
\tag #'tablatura { \minimumFret #4 }
c8 d e f g a 
<<
b
\tag #'tablatura {<<b\3 b\4>>}
>>
c d e f g a b
c b a
g f e d c 
<<
b
\tag #'tablatura {<<b\3 b\4>>}
>>
a g f e d c b
a b c d e f g a b c\fermata
\break
} % fim relative
} % fim variável Maiorcagedsol
%%
Maiorcagedmi = {
\relative c {
\tag #'tablatura { \minimumFret #7 }
c8 d e f g a b
c d e f g a b
c d c b a
g f e d c b a g f e d c b
c1
\break
} % fim relative
} % fim variável Maiorcagedmi
%%
Maiorcageddo = {
\relative c' {
\tag #'tablatura { \minimumFret #12 }
c8 d e f g a b c d e f g
f e d c b a g f e d c
b a g f e f g a b c1
\break
} % fim relative
} % fim variável Maiorcageddo
%%
padrões = {
\tag #'seção { \sectionLabel \markup 
\bold \magnify #1.5 "Dó" }
\Maiorcageddo
%%
\tag #'seção { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
\Maiorcagedre
%%
\tag #'seção { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
\Maiorcagedmi
%%
\tag #'seção { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
\Maiorcagedsol
%%
\tag #'seção { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
\Maiorcagedla
} % fim variável padrões
%%
terçastudo = { % início variável
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Terças Ascendentes" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\termaj c8 \termin d \termin e \termaj f \termaj g \termin a \termin b \termaj c \termin d \termin e
\termin d \termaj c \termin b \termin a \termaj g \termaj f \termin e \termin d \termaj c
\termin b \termin a \termaj g \termaj f \termin e \termaj f \termaj g \termin a \termin b c1}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\termaj c8 \termin d \termin e \termaj f \termaj g \termin a \termin b \termaj c \termin d
\termaj c \termin b \termin a \termaj g \termaj f \termin e \termin d \termaj c \termin b \termin a \termaj g 
\tag #'tablatura { \minimumFret #8 }
\termaj f \termin e \termin d \termaj c \termin d \termin e \termaj f \termaj g \termin a \termin b
c2 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\termaj c8 \termin d \termin e \termaj f \termaj g \termin a \termin b
\termaj c \termin d \termin e \termaj f \termaj g \termin a \termin b 
\termin a \termaj g \termaj f \termin e \termin d \termaj c \termin b \termin 
a \termaj g \termaj f \termin e \termin d \termaj c \termin b
c1 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\termaj c8 \termin d \termin e \termaj f \termaj g \termin a \termin b
\termaj c \termin d \termin e \termaj f \termaj g \termin a
\termaj g \termaj f \termin e \termin d \termaj c \termin b
\termin a \termaj g \termaj f \termin e \termin d \termaj c \termin b
\termin a \termin b \termaj c \termin d \termin e \termaj f \termaj g \termin a \termin b c4
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\termaj c8 \termin d \termin e \termaj f \termaj g 
\termin a \termin b \termaj c 
\termin d \termin e \termaj f 
\termin e \termin d \termaj c \termin b \termin a 
\termaj g \termaj f \termin e \termin d \termaj c 
\termin b \termin a \termaj g 
\onceRevertMinimumFretOpen \termaj f
\termaj g \termin a \termin b c1
\break
}} % fim relative & variável Maiorcagedla
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Terças Descendentes" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\termajdes c8 \termindes d \termindes e \termajdes f \termajdes g \termindes a \termindes b \termajdes c \termindes d \termindes e
\termindes d \termajdes c \termindes b \termindes a \termajdes g \termajdes f \termindes e \termindes d \termajdes c
\termindes b \termindes a \termajdes g 
\termajdes f \termindes e \termajdes f \termajdes g
\termindes a \termindes b c1}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\termajdes c8 \termindes d \termindes e \termajdes f \termajdes g \termindes a \termindes b \termajdes c \termindes d
\termajdes c \termindes b \termindes a \termajdes g \termajdes f \termindes e \termindes d \termajdes c \termindes b \termindes a \termajdes g 
\tag #'tablatura { \minimumFret #8 }
\termajdes f \termindes e \termindes d 
\termajdes c \termindes d \termindes e 
\termajdes f \termajdes g \termindes a \termindes b
c2 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\termajdes c8 \termindes d \termindes e \termajdes f \termajdes g \termindes a \termindes b
\termajdes c \termindes d \termindes e \termajdes f \termajdes g \termindes a \termindes b 
\termindes a \termajdes g \termajdes f \termindes e \termindes d \termajdes c \termindes b \termindes 
a \termajdes g \termajdes f \termindes e \termindes d
\termajdes c \termindes b
c1 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\termajdes c8 \termindes d \termindes e \termajdes f \termajdes g \termindes a \termindes b
\termajdes c \termindes d \termindes e \termajdes f \termajdes g \termindes a
\termajdes g \termajdes f \termindes e \termindes d \termajdes c \termindes b
\termindes a \termajdes g \termajdes f \termindes e \termindes d \termajdes c \termindes b
\termindes a \termindes b \termajdes c \termindes d \termindes e \termajdes f \termajdes g \termindes a \termindes b c4
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\termajdes c8 \termindes d \termindes e \termajdes f \termajdes g 
\termindes a \termindes b \termajdes c 
\termindes d \termindes e \termajdes f 
\termindes e \termindes d \termajdes c \termindes b \termindes a 
\termajdes g \termajdes f \termindes e \termindes d \termajdes c 
\termindes b \termindes a \termajdes g 
\minimumFret #1
\termajdes f
\minimumFret #2
\termajdes g \termindes a \termindes b c1
\break }}
%%
\pageTurn
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Terças Asc. Des." "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\goAroundAdd {
  \termaj c8 \termindes d \termin e \termajdes f 
  \termaj g8 \termindes a \termin b \termajdes c 
  \termin d} \termindes e
\goAroundAdd {\termindes b \termin a \termajdes g \termaj f 
\termindes e \termaj f \termajdes g \termin a } \termindes b
c1}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\goAroundAdd {\termaj c8 \termindes d 
\termin e \termajdes f \termaj g \termindes a 
\termin b \termajdes c} \termin d 
\goAroundAdd {\termindes b \termin a \termajdes g 
\tag #'tablatura { \minimumFret #8 }
\termaj f \termindes e \termin d }
\termajdes c 
c2 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\termaj c8 \termindes d \termin e \termajdes f 
\termaj g \termindes a \termin b \termajdes c 
\termin d \termindes e \termaj f \termajdes g
\termin a \termindes b \termin a \termajdes g 
\termaj f \termindes e \termin d \termajdes c 
\termin b \termindes a \termaj g \termajdes f 
\termin e \termindes d \termaj c \termindes b
c1 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\termaj c8 \termindes d \termin e \termajdes f 
\termaj g \termindes a \termin b \termajdes c 
\termin d \termindes e \termaj f \termajdes g 
\termin a \termajdes g 
\termaj f \termindes e \termin d \termajdes c 
\termin b \termindes a \termaj g \termajdes f 
\termin e \termindes d \termaj c \termindes b
\termin a \termindes b \termaj c \termindes d 
\termin e \termajdes f \termaj g \termindes a 
\termin b c4
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\termaj c8 \termindes d \termin e \termajdes f 
\termaj g \termindes a \termin b \termajdes c 
\termin d \termindes e 
\termaj f \termindes e \termin d \termajdes c 
\termin b \termindes a \termaj g \termajdes f
\termin e \termindes d \termaj c \termindes b
\termin a \termajdes g
\minimumFret #1 
\termaj f
\minimumFret #2
\termajdes g
\termaj g \termindes a \termin b \termajdes c c2
\break }}
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Terças Des. Asc." "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\termajdes c8 \termin d \termindes e \termaj f \termajdes g 
\termin a \termindes b \termaj c \termindes d \termin e
\termindes d \termaj c \termindes b \termin a 
\termajdes g \termaj f \termindes e \termin d \termajdes c
\termin b \termindes a \termaj g 
\termajdes f \termin e \termajdes f \termaj g
\termindes a \termin b c1}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\termajdes c8 \termin d \termindes e \termaj f \termajdes g 
\termin a \termindes b \termaj c \termindes d 
\termaj c \termindes b \termin a 
\termajdes g \termaj f \termindes e \termin d \termajdes c
\termin b \termindes a \termaj g 
\tag #'tablatura { \minimumFret #8 }
\termajdes f \termin e
\termindes d \termaj c \termindes d \termin e 
\termajdes f \termaj g \termindes a \termin b
c2 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\termajdes c8 \termin d \termindes e \termaj f 
\termajdes g \termin a \termindes b \termaj c 
\termindes d \termin e \termajdes f \termaj g
\termindes a \termin b \termindes a \termaj g 
\termajdes f \termin e \termindes d \termaj c 
\termindes b \termin a \termajdes g \termaj f 
\termindes e \termin d \termajdes c \termin b
c1 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\termajdes c8 \termin d \termindes e \termaj f 
\termajdes g \termin a \termindes b \termaj c 
\termindes d \termin e \termajdes f \termaj g 
\termindes a \termaj g 
\termajdes f \termin e \termindes d \termaj c 
\termindes b \termin a \termajdes g \termaj f 
\termindes e \termin d \termajdes c \termin b
\termindes a \termin b \termajdes c \termin d 
\termindes e \termaj f \termajdes g \termin a 
\termindes b c4
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\termajdes c8 \termin d \termindes e \termaj f 
\termajdes g \termin a \termindes b \termaj c 
\termindes d \termin e 
\termajdes f \termin e \termindes d \termaj c 
\termindes b \termin a \termajdes g \termaj f
\termindes e \termin d \termajdes c \termin b
\termindes a \termaj g
\minimumFret #1 
\termajdes f
\minimumFret #2
\termaj g
\termindes a \termin b \termajdes c c2.
\break }}
%%
} % fim variável terçastudo
%%
quartastudo = { % início variável
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Quartas Ascendentes" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\quarpe c8 \quarpe d \quarpe e \quaraum f \quarpe g \quarpe a \quarpe b \quarpe c \quarpe d 
\quarpe c \quarpe b \quarpe a \quarpe g \quaraum f \quarpe e \quarpe d \quarpe c
\quarpe b \quarpe a \quarpe g \quaraum f \quarpe e \quaraum f \quarpe g \quarpe a \quarpe b c2}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\quarpe c8 \quarpe d \quarpe e \quaraum f \quarpe g \quarpe a \quarpe b
\quarpe c \quarpe b \quarpe a \quarpe g \quaraum f \quarpe e \quarpe d \quarpe c \quarpe b \quarpe a \quarpe g 
\tag #'tablatura { \minimumFret #8 }
\quaraum f \quarpe e \quarpe d \quarpe c \quarpe d \quarpe e \quaraum f \quarpe g \quarpe a \quarpe b
c1 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\quarpe c8 \quarpe d \quarpe e \quaraum f \quarpe g \quarpe a \quarpe b
\quarpe c \quarpe d \quarpe e \quaraum f \quarpe g 
\break
\quarpe a \quarpe g \quaraum f \quarpe e 
\quarpe d \quarpe c \quarpe b \quarpe 
a \quarpe g \quaraum f \quarpe e \quarpe d \quarpe c \quarpe b
c2 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\quarpe c8 \quarpe d \quarpe e \quaraum f \quarpe g \quarpe a \quarpe b
\quarpe c \quarpe d \quarpe e \quaraum f
\quarpe g \quaraum f \quarpe e \quarpe d \quarpe c \quarpe b
\quarpe a \quarpe g \quaraum f \quarpe e \quarpe d \quarpe c \quarpe b
\quarpe a \quarpe b \quarpe c \quarpe d \quarpe e \quaraum f \quarpe g \quarpe a \quarpe b \quarpe c c2
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\quarpe c8 \quarpe d \quarpe e \quaraum f \quarpe g 
\quarpe a \quarpe b 
c
<<
f
\tag #'tablatura {\onceRevertMinimumFretOpen <<f\1 f\2>>}
>>
\quarpe d
\quarpe e \quarpe d \quarpe c 
\break
\quarpe b \quarpe a 
\quarpe g \quaraum f \quarpe e \quarpe d \quarpe c 
\quarpe b \quarpe a \quarpe g 
\onceRevertMinimumFretOpen \quaraum f
\quarpe g \quarpe a \quarpe b c2
\break
}} % fim relative & variável Maiorcagedla
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Quartas Descendentes" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\quarpedes c8 \quarpedes d \quarpedes e \quaraumdes f \quarpedes g \quarpedes a \quarpedes b \quarpedes c
\quarpedes d \quarpedes c \quarpedes b \quarpedes a \quarpedes g \quaraumdes f \quarpedes e \quarpedes d \quarpedes c
\quarpedes b \quarpedes a \quarpedes g 
\quaraumdes f \quarpedes e \quaraumdes f \quarpedes g
\quarpedes a \quarpedes b c2}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\quarpedes c8 \quarpedes d \quarpedes e \quaraumdes f \quarpedes g \quarpedes a \quarpedes b 
\quarpedes c \quarpedes b \quarpedes a \quarpedes g \quaraumdes f \quarpedes e \quarpedes d \quarpedes c \quarpedes b \quarpedes a \quarpedes g 
\tag #'tablatura { \minimumFret #8 }
\quaraumdes f \quarpedes e \quarpedes d 
\quarpedes c \quarpedes d \quarpedes e 
\quaraumdes f \quarpedes g \quarpedes a \quarpedes b
c1 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\quarpedes c8 \quarpedes d \quarpedes e \quaraumdes f \quarpedes g \quarpedes a \quarpedes b
\quarpedes c \quarpedes d \quarpedes e \quaraumdes f \quarpedes g
\quarpedes a \quarpedes g \quaraumdes f \quarpedes e \quarpedes d \quarpedes c \quarpedes b \quarpedes 
a \quarpedes g \quaraumdes f \quarpedes e \quarpedes d
\quarpedes c \quarpedes b
c2 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\quarpedes c8 \quarpedes d \quarpedes e 
\tag #'tablatura {\minimumFret #5 } \quaraumdes f
\tag #'tablatura { \minimumFret #4 }
\quarpedes g \quarpedes a \quarpedes b
\quarpedes c \quarpedes d \quarpedes e \quaraumdes f
\quarpedes g \quaraumdes f \quarpedes e \quarpedes d \quarpedes c \quarpedes b
\quarpedes a \quarpedes g \quaraumdes f \quarpedes e \quarpedes d \quarpedes c \quarpedes b
\quarpedes a \quarpedes b \quarpedes c \quarpedes d \quarpedes e \quaraumdes f \quarpedes g \quarpedes a \quarpedes b \quarpedes c c2
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\quarpedes c8 \quarpedes d \quarpedes e \quaraumdes f \quarpedes g 
\quarpedes a \quarpedes b \quarpedes c 
\quarpedes d
\quarpedes e \quarpedes d \quarpedes c 
\break
\quarpedes b \quarpedes a 
\quarpedes g \quaraumdes f \quarpedes e \quarpedes d \quarpedes c 
\quarpedes b \quarpedes a \quarpedes g 
\minimumFret #1
\quaraumdes f
\minimumFret #2
\quarpedes g \quarpedes a \quarpedes b c2
\break }}
%%
\pageTurn
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Quartas Asc. Des." "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\quarpe c8 \quarpedes d \quarpe e \quaraumdes f \quarpe g 
\quarpedes a \quarpe b \quarpedes c
\quarpe d \quarpedes c \quarpe b \quarpedes a 
\quarpe g \quaraumdes f \quarpe e \quarpedes d 
\break
\quarpe c \quarpedes b \quarpe a \quarpedes g 
\quaraum f \quarpedes e \quaraum f \quarpedes g
\quarpe a \quarpedes b c2}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\quarpe c8 \quarpedes d \quarpe e \quaraumdes f \quarpe g 
\quarpedes a \quarpe b
\quarpedes c \quarpe b \quarpedes a 
\quarpe g \quaraumdes f \quarpe e \quarpedes d \quarpe c
\quarpedes b \quarpe a \quarpedes g 
\tag #'tablatura { \minimumFret #8 }
\quaraum f \quarpedes e
\quarpe d \quarpedes c \quarpe d \quarpedes e 
\quaraum f \quarpedes g \quarpe a \quarpedes b
c1 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\quarpe c8 \quarpedes d \quarpe e \quaraumdes f 
\quarpe g \quarpedes a \quarpe b \quarpedes c 
\quarpe d \quarpedes e \quaraum f \quarpedes g
\quarpe a \quarpedes g 
\quaraum f \quarpedes e 
\break
\quarpe d \quarpedes c 
\quarpe b \quarpedes a \quarpe g \quaraumdes f 
\quarpe e \quarpedes d \quarpe c \quarpedes b
c2 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\quarpe c8 \quarpedes d \quarpe e \quaraumdes f 
\quarpe g \quarpedes a \quarpe b \quarpedes c 
\quarpe d \quarpedes e \quaraum f \quarpedes g 
\quaraum f \quarpedes e \quarpe d \quarpedes c
\quarpe b \quarpedes a 
\quarpe g \quaraumdes f 
\quarpe e \quarpedes d \quarpe c \quarpedes b
\quarpe a \quarpedes b \quarpe c \quarpedes d 
\quarpe e \quaraumdes f \quarpe g \quarpedes a 
\quarpe b \quarpe c c2
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\quarpe c8 \quarpedes d \quarpe e \quaraumdes f 
\quarpe g \quarpedes a \quarpe b \quarpedes c 
\quarpe d \quarpedes e \quarpe d \quarpedes c 
\quarpe b \quarpedes a \quarpe g \quaraumdes f
\break
\quarpe e \quarpedes d \quarpe c \quarpedes b
\quarpe a \quarpedes g
\minimumFret #1 
\quaraum f
\minimumFret #2
\quarpedes g
\quarpe a \quarpedes b c2
\break }}
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Quartas Des. Asc." "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\quarpedes c8 \quarpe d \quarpedes e \quaraum f \quarpedes g 
\quarpe a \quarpedes b \quarpe c
\quarpedes d \quarpe c \quarpedes b \quarpe a 
\quarpedes g \quaraum f \quarpedes e \quarpe d 
\break
\quarpedes c \quarpe b \quarpedes a \quarpe g 
\quaraumdes f \quarpe e \quaraumdes f \quarpe g
\quarpedes a \quarpe b c2}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\quarpedes c8 \quarpe d \quarpedes e \quaraum f \quarpedes g 
\quarpe a \quarpedes b
\quarpe c \quarpedes b \quarpe a 
\quarpedes g \quaraum f \quarpedes e \quarpe d \quarpedes c
\quarpe b \quarpedes a \quarpe g 
\tag #'tablatura { \minimumFret #8 }
\quaraumdes f \quarpe e
\quarpedes d \quarpe c \quarpedes d \quarpe e 
\quaraumdes f \quarpe g \quarpedes a \quarpe b
c1 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\quarpedes c8 \quarpe d \quarpedes e \quaraum f 
\quarpedes g \quarpe a \quarpedes b \quarpe c 
\quarpedes d \quarpe e \quaraumdes f \quarpe g
\quarpedes a \quarpe g \quaraumdes f \quarpe e 
\break \quarpedes d \quarpe c 
\quarpedes b \quarpe a \quarpedes g \quaraum f 
\quarpedes e \quarpe d \quarpedes c \quarpe b
c2 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\quarpedes c8 \quarpe d \quarpedes e \quaraum f 
\quarpedes g \quarpe a \quarpedes b \quarpe c 
\quarpedes d \quarpe e \quaraumdes f \quarpe g 
\quaraumdes f \quarpe e \quarpedes d \quarpe c 
\quarpedes b \quarpe a \quarpedes g \quaraum f 
\quarpedes e \quarpe d \quarpedes c \quarpe b
\quarpedes a \quarpe b \quarpedes c \quarpe d 
\quarpedes e \quaraum f \quarpedes g \quarpe a 
\quarpedes b \quarpe c c2
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\quarpedes c8 \quarpe d \quarpedes e \quaraum f 
\quarpedes g \quarpe a \quarpedes b \quarpe c 
\quarpedes d \quarpe e \quarpedes d \quarpe c 
\quarpedes b \quarpe a \quarpedes g \quaraum f
\break
\quarpedes e \quarpe d \quarpedes c \quarpe b
\quarpedes a \quarpe g
\minimumFret #1 
\quaraumdes f
\minimumFret #2
\quarpe g
\quarpedes a \quarpe b c2
\break }}
%%
} % fim variável quartastudo
%%
quintastudo = { % início variável
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Quintas Ascendentes" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\quinjus c8 \quinjus d \quinjus e \quinjus f 
\quinjus g \quinjus a \quindim b \quinjus c 
\quindim b \quinjus a \quinjus g \quinjus f 
\quinjus e \quinjus d \quinjus c \quindim b 
\break
\quinjus a \quinjus g \quinjus f \quinjus e 
\quinjus f \quinjus g \quinjus a \quindim b c1}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\quinjus c8 \quinjus d \quinjus e \quinjus f \quinjus g \quinjus a
\quindim b \quinjus a \quinjus g \quinjus f \quinjus e \quinjus d \quinjus c \quindim b \quinjus a \quinjus g 
\tag #'tablatura { \minimumFret #8 }
\break
\quinjus f \quinjus e \quinjus d \quinjus c \quinjus d \quinjus e \quinjus f \quinjus g \quinjus a \quindim b
c2 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\quinjus c8 \quinjus d \quinjus e \quinjus f 
\quinjus g \quinjus a \quindim b \quinjus c 
\quinjus d \quinjus e \quinjus f \quinjus g 
\quinjus f \quinjus e \quinjus d \quinjus c 
\break
\quindim b \quinjus a \quinjus g \quinjus f 
\quinjus e \quinjus d \quinjus c \quindim b
c1 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\quinjus c8 \quinjus d \quinjus e \quinjus f \quinjus g \quinjus a \quindim b
\quinjus c \quinjus d \quinjus e \quinjus f
\quinjus e \quinjus d \quinjus c \quindim b
\quinjus a \quinjus g \quinjus f \quinjus e \quinjus d \quinjus c \quindim b
\quinjus a \quindim b \quinjus c \quinjus d 
\quinjus e \quinjus f \quinjus g \quinjus a 
\quindim b \quinjus c c1
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\quinjus c8 \quinjus d \quinjus e \quinjus f 
\quinjus g \quinjus a \quindim b \quinjus c 
\quinjus d \quinjus c \quindim b \quinjus a 
\quinjus g \quinjus f \quinjus e \quinjus d 
\break
\quinjus c \quindim b \quinjus a \quinjus g 
\onceRevertMinimumFretOpen \quinjus f
\quinjus g \quinjus a \quindim b \quinjus c1
\break
}} % fim relative & variável Maiorcagedla
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Quintas Descendentes" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\quinjusdes c8 \quinjusdes d \quinjusdes e \quinjusdes f
\quinjusdes g \quinjusdes a \quindimdes b \quinjusdes c
\quindimdes b \quinjusdes a \quinjusdes g \quinjusdes f 
\quinjusdes e \quinjusdes d \quinjusdes c \quindimdes b 
\break
\quinjusdes a \quinjusdes g \quinjusdes f \quinjusdes e 
\quinjusdes f \quinjusdes g
\quinjusdes a \quindimdes b c1}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\quinjusdes c8 \quinjusdes d \quinjusdes e \quinjusdes f \quinjusdes g \quinjusdes a \quindimdes b 
\quinjusdes a \quinjusdes g \quinjusdes f \quinjusdes e \quinjusdes d \quinjusdes c \quindimdes b \quinjusdes a \quinjusdes g 
\tag #'tablatura { \minimumFret #8 }
\break
\quinjusdes f \quinjusdes e \quinjusdes d 
\quinjusdes c \quinjusdes d \quinjusdes e 
\quinjusdes f \quinjusdes g \quinjusdes a \quindimdes b
c2 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\quinjusdes c8 \quinjusdes d \quinjusdes e \quinjusdes f 
\quinjusdes g \quinjusdes a \quindimdes b \quinjusdes c 
\quinjusdes d \quinjusdes e \quinjusdes f \quinjusdes g
\quinjusdes f \quinjusdes e \quinjusdes d \quinjusdes c 
\break
\quindimdes b \quinjusdes a \quinjusdes g \quinjusdes f 
\quinjusdes e \quinjusdes d \quinjusdes c \quindimdes b
c1 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\quinjusdes c8 \quinjusdes d \quinjusdes e 
\tag #'tablatura {\minimumFret #5 } \quinjusdes f
\tag #'tablatura { \minimumFret #4 }
\quinjusdes g \quinjusdes a \quindimdes b
\quinjusdes c \quinjusdes d \quinjusdes e \quinjusdes f
\quinjusdes e \quinjusdes d \quinjusdes c \quindimdes b
\quinjusdes a \quinjusdes g \quinjusdes f \quinjusdes e \quinjusdes d \quinjusdes c \quindimdes b
\quinjusdes a \quindimdes b \quinjusdes c \quinjusdes d \quinjusdes e \quinjusdes f \quinjusdes g 
\quinjusdes a \quindimdes b \quinjusdes c c1
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\quinjusdes c8 \quinjusdes d \quinjusdes e \quinjusdes f 
\quinjusdes g \quinjusdes a \quindimdes b \quinjusdes c 
\quinjusdes d \quinjusdes c \quindimdes b \quinjusdes a 
\break
\quinjusdes g \quinjusdes f \quinjusdes e \quinjusdes d \quinjusdes c 
\quindimdes b \quinjusdes a \quinjusdes g 
\minimumFret #1
\quinjusdes f
\minimumFret #2
\quinjusdes g \quinjusdes a \quindimdes b c1
\break }}
%%
\pageTurn
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Quintas Asc. Des." "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\quinjus c8 \quinjusdes d \quinjus e \quinjusdes f 
\quinjus g \quinjusdes a \quindim b \quinjusdes c
\quindim b \quinjusdes a \quinjus g \quinjusdes f 
\quinjus e \quinjusdes d \quinjus c \quindimdes b 
\break
\quinjus a \quinjusdes g \quinjus f \quinjusdes e 
\quinjus f \quinjusdes g \quinjus a \quindimdes b 
c1}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\quinjus c8 \quinjusdes d \quinjus e \quinjusdes f \quinjus g 
\quinjusdes a \quindim b \quinjusdes a 
\quinjus g \quinjusdes f \quinjus e \quinjusdes d \quinjus c
\quindimdes b \quinjus a \quinjusdes g 
\tag #'tablatura { \minimumFret #8 }
\break
\quinjus f \quinjusdes e
\quinjus d \quinjusdes c \quinjus d \quinjusdes e 
\quinjus f \quinjusdes g \quinjus a \quindimdes b
c2 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\quinjus c8 \quinjusdes d \quinjus e \quinjusdes f 
\quinjus g \quinjusdes a \quindim b \quinjusdes c 
\quinjus d \quinjusdes e \quinjus f \quinjusdes g
\quinjus a \quinjusdes g 
\quinjus f \quinjusdes e 
\break
\quinjus d \quinjusdes c 
\quindim b \quinjusdes a \quinjus g \quinjusdes f 
\quinjus e \quinjusdes d \quinjus c \quindimdes b
c2 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\quinjus c8 \quinjusdes d \quinjus e \quinjusdes f 
\quinjus g \quinjusdes a \quindim b \quinjusdes c 
\quinjus d \quinjusdes e \quinjus f \quinjusdes g 
\quinjus f \quinjusdes e \quinjus d \quinjusdes c
\quindim b \quinjusdes a 
\quinjus g \quinjusdes f 
\quinjus e \quinjusdes d \quinjus c \quindimdes b
\quinjus a \quindimdes b \quinjus c \quinjusdes d 
\quinjus e \quinjusdes f \quinjus g \quinjusdes a 
\quindim b \quinjusdes c c2
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\quinjus c8 \quinjusdes d \quinjus e \quinjusdes f 
\quinjus g \quinjusdes a \quindim b \quinjusdes c 
\quinjus d \quinjusdes e \quinjus d \quinjusdes c 
\quindim b \quinjusdes a \quinjus g \quinjusdes f
\break
\quinjus e \quinjusdes d \quinjus c \quindimdes b
\quinjus a \quinjusdes g
\minimumFret #1 
\quinjus f
\minimumFret #2
\quinjusdes g
\quinjus a \quindimdes b c2
\break }}
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Quintas Des. Asc." "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\quinjusdes c8 \quinjus d \quinjusdes e \quinjus f 
\quinjusdes g \quinjus a \quindimdes b \quinjus a 
\quinjusdes g \quinjus f \quinjusdes e \quinjus d 
\break
\quinjusdes c \quindim b \quinjusdes a \quinjus g 
\quinjusdes f \quinjus e \quinjusdes f \quinjus g
\quinjusdes a \quindim b c2}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\quinjusdes c8 \quinjus d \quinjusdes e \quinjus f 
\quinjusdes g \quinjus a \quindimdes b \quinjus a 
\quinjusdes g \quinjus f \quinjusdes e \quinjus d 
\quinjusdes c \quindim b \quinjusdes a \quinjus g 
\break
\tag #'tablatura { \minimumFret #8 }
\quinjusdes f \quinjus e \quinjusdes d \quinjus c 
\quinjusdes d \quinjus e \quinjusdes f \quinjus g 
\quinjusdes a \quindim b c2 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\quinjusdes c8 \quinjus d \quinjusdes e \quinjus f 
\quinjusdes g \quinjus a \quindimdes b \quinjus c 
\quinjusdes d \quinjus e \quinjusdes f \quinjus g
\quinjusdes f \quinjus e \quinjusdes d \quinjus c 
\break
\quindimdes b \quinjus a \quinjusdes g \quinjus f 
\quinjusdes e \quinjus d \quinjusdes c \quindim b
c1 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\quinjusdes c8 \quinjus d \quinjusdes e \quinjus f 
\quinjusdes g \quinjus a \quindimdes b \quinjus c 
\quinjusdes d \quinjus e \quinjusdes f \quinjus e 
\quinjusdes d \quinjus c 
\quindimdes b \quinjus a \quinjusdes g \quinjus f 
\quinjusdes e \quinjus d \quinjusdes c \quindim b
\quinjusdes a \quindim b \quinjusdes c \quinjus d 
\quinjusdes e \quinjus f \quinjusdes g \quinjus a 
\quindimdes b \quinjus c 
c1
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\quinjusdes c8 \quinjus d \quinjusdes e \quinjus f 
\quinjusdes g \quinjus a \quindimdes b \quinjus c 
\quinjusdes d \quinjus c \quindimdes b \quinjus a 
\quinjusdes g \quinjus f \quinjusdes e \quinjus d 
\break
\quinjusdes c \quindim b \quinjusdes a \quinjus g
\minimumFret #1 \quinjusdes f
\minimumFret #2 \quinjus g
\quinjusdes a \quindim b 
c1
\break }}
%%
} % fim variável quartastudo
%%
sextastudo = { % início variável
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Sextas Ascendentes" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\sexmaj c8 \sexmaj d \sexmin e \sexmaj f 
\sexmaj g \sexmin a \sexmin b \sexmin a 
\sexmaj g \sexmaj f \sexmin e \sexmaj d 
\break
\sexmaj c \sexmin b 
\sexmin a \sexmaj g \sexmaj f \sexmin e 
\sexmaj f \sexmaj g \sexmin a \sexmin b c2}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\sexmaj c8 \sexmaj d \sexmin e \sexmaj f 
\sexmaj g \sexmin a \sexmaj g \sexmaj f 
\sexmin e \sexmaj d \sexmaj c \sexmin b 
\break
\sexmin a \sexmaj g 
\tag #'tablatura { \minimumFret #8 }
\sexmaj f \sexmin e 
\sexmaj d \sexmaj c \sexmaj d \sexmin e 
\sexmaj f \sexmaj g \sexmin a \sexmin b
c1 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\sexmaj c8 \sexmaj d \sexmin e \sexmaj f 
\sexmaj g \sexmin a \sexmin b \sexmaj c 
\sexmaj d \sexmin e
\sexmaj f \sexmin e 
\break
\sexmaj d \sexmaj c 
\sexmin b \sexmin a \sexmaj g \sexmaj f 
\sexmin e \sexmaj d \sexmaj c \sexmin b c2 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\sexmaj c8 \sexmaj d \sexmin e \sexmaj f \sexmaj g \sexmin a \sexmin b
\sexmaj c \sexmaj d \sexmin e \sexmaj d \sexmaj c \sexmin b
\sexmin a \sexmaj g \sexmaj f \sexmin e \sexmaj d \sexmaj c \sexmin b
\sexmin a \sexmin b \sexmaj c \sexmaj d 
\sexmin e \sexmaj f \sexmaj g \sexmin a 
\sexmin b \sexmaj c c2
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\sexmaj c8 \sexmaj d \sexmin e \sexmaj f 
\sexmaj g \sexmin a \sexmin b \sexmaj c 
\sexmin b \sexmin a \sexmaj g \sexmaj f 
\break
\sexmin e \sexmaj d \sexmaj c \sexmin b
\sexmin a \sexmaj g 
\onceRevertMinimumFretOpen \sexmaj f
\sexmaj g 
\sexmin a \sexmin b c2
\break
}} % fim relative & variável Maiorcagedla
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Sextas Descendentes" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\sexmajdes c8 \sexmajdes d \sexmindes e \sexmajdes f
\sexmajdes g \sexmindes a \sexmindes b \sexmindes a 
\sexmajdes g \sexmajdes f \sexmindes e \sexmajdes d 
\break
\sexmajdes c \sexmindes b \sexmindes a \sexmajdes g 
\sexmajdes f \sexmindes e \sexmajdes f \sexmajdes g
\sexmindes a \sexmindes b c2}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\sexmajdes c8 \sexmajdes d \sexmindes e \sexmajdes f \sexmajdes g 
\sexmindes a \sexmajdes g \sexmajdes f \sexmindes e \sexmajdes d \sexmajdes c \sexmindes b \sexmindes a \sexmajdes g 
\tag #'tablatura { \minimumFret #8 }
\sexmajdes f \sexmindes e \sexmajdes d 
\sexmajdes c \sexmajdes d \sexmindes e 
\sexmajdes f \sexmajdes g \sexmindes a \sexmindes b
c1 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\sexmajdes c8 \sexmajdes d \sexmindes e \sexmajdes f 
\sexmajdes g \sexmindes a \sexmindes b \sexmajdes c 
\sexmajdes d \sexmindes e \sexmajdes f \sexmajdes g
\sexmajdes f \sexmindes e \sexmajdes d \sexmajdes c 
\break
\sexmindes b \sexmindes a \sexmajdes g \sexmajdes f 
\sexmindes e \sexmajdes d \sexmajdes c \sexmindes b
c1 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\sexmajdes c8 \sexmajdes d \sexmindes e 
\tag #'tablatura {\minimumFret #5 } \sexmajdes f
\tag #'tablatura { \minimumFret #4 }
\sexmajdes g \sexmindes a \sexmindes b
\sexmajdes c \sexmajdes d \sexmindes e 
\sexmajdes d \sexmajdes c \sexmindes b
\sexmindes a \sexmajdes g \sexmajdes f \sexmindes e \sexmajdes d \sexmajdes c \sexmindes b
\sexmindes a \sexmindes b \sexmajdes c \sexmajdes d \sexmindes e \sexmajdes f \sexmajdes g 
\sexmindes a \sexmindes b \sexmajdes c c2
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\sexmajdes c8 \sexmajdes d \sexmindes e \sexmajdes f 
\sexmajdes g \sexmindes a \sexmindes b \sexmajdes c 
\sexmindes b \sexmindes a \sexmajdes g \sexmajdes f 
\break
\sexmindes e \sexmajdes d \sexmajdes c \sexmindes b 
\sexmindes a \sexmajdes g 
\minimumFret #1
\sexmajdes f
\minimumFret #2
\sexmajdes g \sexmindes a \sexmindes b c2 }}
%%
\pageTurn
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Sextas Asc. Des." "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\sexmaj c8 \sexmajdes d \sexmin e \sexmajdes f 
\sexmaj g \sexmindes a \sexmin b \sexmindes a 
\sexmaj g \sexmajdes f \sexmin e \sexmajdes d 
\break
\sexmaj c \sexmindes b \sexmin a \sexmajdes g 
\sexmaj f \sexmindes e \sexmaj f \sexmajdes g 
\sexmin a \sexmindes b c2}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\sexmaj c8 \sexmajdes d \sexmin e \sexmajdes f \sexmaj g 
\sexmindes a
\sexmaj g \sexmajdes f \sexmin e \sexmajdes d \sexmaj c
\sexmindes b \sexmin a \sexmajdes g 
\tag #'tablatura { \minimumFret #8 }
\sexmaj f \sexmindes e
\sexmaj d \sexmajdes c \sexmaj d \sexmindes e 
\sexmaj f \sexmajdes g \sexmin a \sexmindes b
c1 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\sexmaj c8 \sexmajdes d \sexmin e \sexmajdes f 
\sexmaj g \sexmindes a \sexmin b \sexmajdes c 
\sexmaj d \sexmindes e \sexmaj f \sexmajdes g 
\break
\sexmaj f \sexmindes e 
\sexmaj d \sexmajdes c 
\sexmin b \sexmindes a \sexmaj g \sexmajdes f 
\sexmin e \sexmajdes d \sexmaj c \sexmindes b
c1 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\sexmaj c8 \sexmajdes d \sexmin e \sexmajdes f 
\sexmaj g \sexmindes a \sexmin b \sexmajdes c 
\sexmaj d \sexmindes e \sexmaj d \sexmajdes c
\sexmin b \sexmindes a \sexmaj g \sexmajdes f 
\sexmin e \sexmajdes d \sexmaj c \sexmindes b
\sexmin a \sexmindes b \sexmaj c \sexmajdes d 
\sexmin e \sexmajdes f \sexmaj g \sexmindes a 
\sexmin b \sexmaj c c2
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\sexmaj c8 \sexmajdes d \sexmin e \sexmajdes f 
\sexmaj g \sexmindes a \sexmin b \sexmajdes c 
\sexmin b \sexmindes a \sexmaj g \sexmajdes f
\break
\sexmin e \sexmajdes d \sexmaj c \sexmindes b
\sexmin a \sexmajdes g
\minimumFret #1 
\sexmaj f
\minimumFret #2
\sexmajdes g
\sexmin a \sexmindes b c2
\break }}
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Sextas Des. Asc." "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\sexmajdes c8 \sexmaj d \sexmindes e \sexmaj f 
\sexmajdes g \sexmin a \sexmindes b \sexmin a 
\sexmajdes g \sexmaj f \sexmindes e \sexmaj d 
\break
\sexmajdes c \sexmin b \sexmindes a \sexmaj g 
\sexmajdes f \sexmin e \sexmajdes f \sexmaj g
\sexmindes a \sexmin b c2}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\sexmajdes c8 \sexmaj d \sexmindes e \sexmaj f 
\sexmajdes g \sexmin a \sexmajdes g \sexmaj f 
\sexmindes e \sexmaj d \sexmajdes c \sexmin b 
\sexmindes a \sexmaj g 
\tag #'tablatura { \minimumFret #8 }
\sexmajdes f \sexmin e 
\sexmajdes d \sexmaj c \sexmajdes d \sexmin e 
\sexmajdes f \sexmaj g \sexmindes a \sexmin b 
c1 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\sexmajdes c8 \sexmaj d \sexmindes e \sexmaj f 
\sexmajdes g \sexmin a \sexmindes b \sexmaj c 
\sexmajdes d \sexmin e \sexmajdes f \sexmin e 
\break
\sexmajdes d \sexmaj c \sexmindes b \sexmin a 
\sexmajdes g \sexmaj f \sexmindes e \sexmaj d 
\sexmajdes c \sexmin b c2 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\sexmajdes c8 \sexmaj d \sexmindes e \sexmaj f 
\sexmajdes g \sexmin a \sexmindes b \sexmaj c 
\sexmajdes d \sexmin e \sexmajdes d \sexmaj c 
\sexmindes b \sexmin a \sexmajdes g \sexmaj f 
\sexmindes e \sexmaj d \sexmajdes c \sexmin b
\sexmindes a \sexmin b \sexmajdes c \sexmaj d 
\sexmindes e \sexmaj f \sexmajdes g \sexmin a 
\sexmindes b \sexmaj c c2
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\sexmajdes c8 \sexmaj d \sexmindes e \sexmaj f 
\sexmajdes g \sexmin a \sexmindes b \sexmaj c 
\sexmindes b \sexmin a \sexmajdes g \sexmaj f 
\break
\sexmindes e \sexmaj d \sexmajdes c \sexmindes b 
\sexmindes a \sexmaj g
\minimumFret #1 \sexmajdes f
\minimumFret #2 \sexmaj g
\sexmindes a \sexmindes b c2
\break }}
%%
} % fim variável sextastudo
%%
sétimastudo = { % início variável
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Sétimas Ascendentes" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\setmaj c8 \setmin d \setmin e \setmaj f 
\setmin g \setmin a 
\setmin g \setmaj f \setmin e \setmin d 
\setmaj c \setmin b 
\break
\setmin a \setmin g \setmaj f \setmin e 
\setmaj f \setmin g \setmin a \setmin b 
c1}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\setmaj c8 \setmin d \setmin e \setmaj f 
\setmin g \setmaj f 
\setmin e \setmin d \setmaj c \setmin b 
\setmin a \setmin g 
\tag #'tablatura { \minimumFret #8 }
\break
\setmaj f \setmin e 
\setmin d \setmaj c \setmin d \setmin e 
\setmaj f \setmin g \setmin a \setmin b
c2 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\setmaj c8 \setmin d \setmin e \setmaj f 
\setmin g \setmin a \setmin b \setmaj c 
\setmin d \setmin e
\setmin d \setmaj c 
\break
\setmin b \setmin a \setmin g \setmaj f 
\setmin e \setmin d \setmaj c \setmin b 
c1 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\setmaj c8 \setmin d \setmin e \setmaj f 
\setmin g \setmin a \setmin b \setmaj c 
\setmin d \setmaj c \setmin b \setmin a 
\setmin g \setmaj f \setmin e \setmin d 
\break
\setmaj c \setmin b \setmin a \setmin b 
\setmaj c \setmin d \setmin e \setmaj f 
\setmin g \setmin a \setmin b \setmaj c 
c1
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\setmaj c8 \setmin d \setmin e \setmaj f 
\setmin g \setmin a
\setmin b \setmin a \setmin g \setmaj f 
\setmin e \setmin d 
\break
\setmaj c \setmin b
\setmin a \setmin g 
\onceRevertMinimumFretOpen \setmaj f
\setmin g 
\setmin a \setmin b 
c1
\break
}} % fim relative & variável Maiorcagedla
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Sétimas Descendentes" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\setmajdes c8 \setmindes d \setmindes e \setmajdes f
\setmindes g \setmindes a
\setmindes g \setmajdes f 
\setmindes e \setmindes d \setmajdes c \setmindes b 
\break
\setmindes a \setmindes g \setmajdes f \setmindes e 
\setmajdes f \setmindes g
\setmindes a \setmindes b 
c1}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\setmajdes c8 \setmindes d \setmindes e \setmajdes f \setmindes g 
\setmajdes f \setmindes e \setmindes d \setmajdes c \setmindes b \setmindes a \setmindes g 
\tag #'tablatura { \minimumFret #8 }
\break
\setmajdes f \setmindes e \setmindes d 
\setmajdes c \setmindes d \setmindes e 
\setmajdes f \setmindes g \setmindes a \setmindes b c2 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\setmajdes c8 \setmindes d \setmindes e \setmajdes f 
\setmindes g \setmindes a \setmindes b \setmajdes c 
\setmindes d \setmindes e 
\setmindes d \setmajdes c 
\break
\setmindes b \setmindes a \setmindes g \setmajdes f 
\setmindes e \setmindes d \setmajdes c \setmindes b
c1 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\setmajdes c8 \setmindes d \setmindes e 
\tag #'tablatura {\minimumFret #5 } \setmajdes f
\tag #'tablatura { \minimumFret #4 }
\setmindes g \setmindes a \setmindes b \setmajdes c
\setmindes d \setmajdes c \setmindes b
\setmindes a \setmindes g \setmajdes f \setmindes e \setmindes d 
\break
\setmajdes c \setmindes b
\setmindes a \setmindes b \setmajdes c \setmindes d \setmindes e \setmajdes f \setmindes g 
\setmindes a \setmindes b \setmajdes c 
c1
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\setmajdes c8 \setmindes d \setmindes e \setmajdes f 
\setmindes g \setmindes a \setmindes b \setmajdes c 
\setmindes b \setmindes a \setmindes g \setmajdes f 
\break
\setmindes e \setmindes d \setmajdes c \setmindes b 
\setmindes a \setmindes g 
\minimumFret #1
\setmajdes f
\minimumFret #2
\setmindes g \setmindes a \setmindes b c2 }}
%%
\pageTurn
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Sétimas Asc. Des." "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\setmaj c8 \setmindes d \setmin e \setmajdes f 
\setmin g \setmindes a
\setmin g \setmajdes f \setmin e \setmindes d 
\setmaj c \setmindes b 
\break
\setmin a \setmindes g 
\setmaj f \setmindes e \setmaj f \setmindes g 
\setmin a \setmindes b 
c1}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\setmaj c8 \setmindes d \setmin e \setmajdes f
\setmin g \setmajdes f \setmin e \setmindes d \setmaj c
\setmindes b \setmin a \setmindes g 
\tag #'tablatura { \minimumFret #8 }
\break
\setmaj f \setmindes e
\setmin d \setmajdes c \setmin d \setmindes e 
\setmaj f \setmindes g \setmin a \setmindes b
c2 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\setmaj c8 \setmindes d \setmin e \setmajdes f 
\setmin g \setmindes a \setmin b \setmajdes c 
\setmin d \setmindes e \setmaj f \setmindes e 
\break
\setmin d \setmajdes c \setmin b \setmindes a 
\setmin g \setmajdes f \setmin e \setmindes d 
\setmaj c \setmindes b c2 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\setmaj c8 \setmindes d \setmin e \setmajdes f 
\setmin g \setmindes a \setmin b \setmajdes c 
\setmin d \setmajdes c
\setmin b \setmindes a \setmin g \setmajdes f 
\setmin e \setmindes d \setmaj c \setmindes b
\setmin a \setmindes b \setmaj c \setmindes d 
\setmin e \setmajdes f \setmin g \setmindes a 
\setmin b \setmaj c 
c1
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\setmaj c8 \setmindes d 
\setmin g \setmindes a
\setmin b \setmindes a \setmin g \setmajdes f
\setmin e \setmindes d \setmaj c \setmindes b
\break
\setmin a \setmindes g
\minimumFret #1 
\setmaj f
\minimumFret #2
\setmindes g
\setmin a \setmindes b c2 \break }}
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Sétimas Des. Asc." "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\setmajdes c8 \setmin d \setmindes e \setmaj f 
\setmindes g \setmin a 
\setmindes g \setmaj f \setmindes e \setmin d 
\setmajdes c \setmin b 
\break
\setmindes a \setmin g 
\setmajdes f \setmin e \setmajdes f \setmin g
\setmindes a \setmin b c1}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\setmajdes c8 \setmin d \setmindes e \setmaj f 
\setmindes g \setmaj f 
\setmindes e \setmin d \setmajdes c \setmin b 
\setmindes a \setmin g 
\break
\tag #'tablatura { \minimumFret #8 }
\setmajdes f \setmin e 
\setmindes d \setmaj c \setmindes d \setmin e 
\setmajdes f \setmin g \setmindes a \setmin b 
c2 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\setmajdes c8 \setmin d \setmindes e \setmaj f 
\setmindes g \setmin a \setmindes b \setmaj c 
\setmindes d \setmin e
\setmindes d \setmaj c 
\break
\setmindes b \setmin a \setmindes g \setmaj f 
\setmindes e \setmin d \setmajdes c \setmin b 
c1 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\setmajdes c8 \setmin d \setmindes e \setmaj f 
\setmindes g \setmin a \setmindes b \setmaj c 
\setmindes d \setmaj c 
\setmindes b \setmin a \setmindes g \setmaj f 
\setmindes e \setmin d 
\break
\setmajdes c \setmin b
\setmindes a \setmin b \setmajdes c \setmin d 
\setmindes e \setmaj f \setmindes g \setmin a 
\setmindes b \setmaj c 
c1 \break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\setmajdes c8 \setmin d \setmindes e \setmaj f 
\setmindes g \setmin a \setmindes b \setmin a 
\setmindes g \setmaj f \setmindes e \setmin d 
\break
\setmajdes c \setmindes b \setmindes a \setmin g
\minimumFret #1 \setmajdes f
\minimumFret #2 \setmin g
\setmindes a \setmindes b 
c1 \break }}
%%
} % fim variável sétimastudo
%%
oitavastudo = { % início variável
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Oitavas Ascendentes" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\goAroundAdd {\oit c8 \oit d \oit e \oit f }
\oit g 
\oit b  \oit a \oit g 
\break
\oit f
\oit e \oit f \oit g \oit a \oit b
c2}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\goAroundAdd {\oit c8 \oit d \oit e} \oit f
\oit b 
\oit a \oit g 
\tag #'tablatura { \minimumFret #8 }
\oit f \oit e 
\break
\oit d \oit c \oit d \oit e 
\oit f \oit g \oit a \oit b
c1 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\oit c8 \oit d \oit e \oit f 
\oit g \oit a \oit b \oit c 
\oit d \oit c 
\oit b \oit a 
\break
\oit g \oit f 
\oit e \oit d \oit c \oit b 
c2 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\oit c8 \oit d \oit e \oit f 
\oit g \oit a \oit b \oit c 
\oit b \oit a \oit g \oit f 
\oit e \oit d \oit c \oit b
\break
\oit a \oit b \oit c \oit d 
\oit e \oit f \oit g \oit a 
\oit b \oit c c2
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\oit c8 \oit d \oit e \oit f 
\oit g \oit a \oit g \oit f 
\oit e \oit d \oit c \oit b
\break
\oit a \oit g 
\onceRevertMinimumFretOpen \oit f
\oit g 
\oit a \oit b c2
\break
}} % fim relative & variável Maiorcagedla
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Oitavas Descendentes" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\oitdes c8 \oitdes d \oitdes e \oitdes f
\oitdes g \oitdes f \oitdes e \oitdes d 
\oitdes c \oitdes b \oitdes a \oitdes g 
\break
\oitdes f \oitdes e \oitdes f \oitdes g
\oitdes a \oitdes b c2}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\oitdes c8 \oitdes d \oitdes e \oitdes f 
\oitdes e \oitdes d \oitdes c \oitdes b 
\oitdes a \oitdes g 
\tag #'tablatura { \minimumFret #8 }
\oitdes f \oitdes e 
\break
\oitdes d \oitdes c \oitdes d \oitdes e 
\oitdes f \oitdes g \oitdes a \oitdes b 
c1 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\oitdes c8 \oitdes d \oitdes e \oitdes f 
\oitdes g \oitdes a \oitdes b \oitdes c 
\oitdes d \oitdes c \oitdes b \oitdes a 
\break
\oitdes g \oitdes f \oitdes e \oitdes d 
\oitdes c \oitdes b c2 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\oitdes c8 \oitdes d \oitdes e 
\tag #'tablatura {\minimumFret #5 } \oitdes f
%
\tag #'tablatura { \minimumFret #4 } \oitdes g 
\oitdes a \oitdes b \oitdes c 
\oitdes b \oitdes a \oitdes g \oitdes f 
\oitdes e \oitdes d \oitdes c \oitdes b
\break
\oitdes a \oitdes b \oitdes c \oitdes d 
\oitdes e \oitdes f \oitdes g \oitdes a 
\oitdes b \oitdes c c2
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\oitdes c8 \oitdes d \oitdes e \oitdes f 
\oitdes g \oitdes a \oitdes g \oitdes f 
\oitdes e \oitdes d \oitdes c \oitdes b 
\break
\oitdes a \oitdes g 
\minimumFret #1
\oitdes f
\minimumFret #2
\oitdes g 
\oitdes a \oitdes b c2 }}
%%
\pageTurn
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Oitavas Asc. Des." "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\oit c8 \oitdes d \oit e \oitdes f 
\oit g \oitdes f \oit e \oitdes d 
\oit c \oitdes b \oit a \oitdes g 
\break
\oit f \oitdes e \oit f \oitdes g 
\oit a \oitdes b c2}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\oit c8 \oitdes d \oit e \oitdes f
\oit e \oitdes d \oit c \oitdes b 
\oit a \oitdes g 
\tag #'tablatura { \minimumFret #8 }
\oit f \oitdes e
\break
\oit d \oitdes c \oit d \oitdes e 
\oit f \oitdes g \oit a \oitdes b
c1 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\oit c8 \oitdes d \oit e \oitdes f 
\oit g \oitdes a \oit b \oitdes c 
\oit d \oitdes c \oit b \oitdes a
\break
\oit g \oitdes f \oit e \oitdes d 
\oit c \oitdes b c2 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\oit c8 \oitdes d \oit e \oitdes f 
\oit g \oitdes a \oit b \oitdes c 
\oit b \oitdes a \oit g \oitdes f 
\oit e \oitdes d \oit c \oitdes b
\break
\oit a \oitdes b \oit c \oitdes d 
\oit e \oitdes f \oit g \oitdes a 
\oit b \oit c c2
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\oit c8 \oitdes d \oit g \oitdes a
\oit g \oitdes f \oit e \oitdes d 
\oit c \oitdes b \oit a \oitdes g
\break
\minimumFret #1 \oit f
\minimumFret #2 \oitdes g
\oit a \oitdes b 
c1 \break }}
%%
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Oitavas Des. Asc." "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\oitdes c8 \oit d \oitdes e \oit f 
\oitdes g \oit f \oitdes e \oit d 
\oitdes c \oit b \oitdes a \oit g 
\break
\oitdes f \oit e \oitdes f \oit g
\oitdes a \oit b c2}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\oitdes c8 \oit d \oitdes e \oit f 
\oitdes e \oit d \oitdes c \oit b 
\oitdes a \oit g 
\tag #'tablatura { \minimumFret #8 }
\oitdes f \oit e 
\break
\oitdes d \oit c \oitdes d \oit e 
\oitdes f \oit g \oitdes a \oit b 
c1 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\oitdes c8 \oit d \oitdes e \oit f 
\oitdes g \oit a \oitdes b \oit c 
\oitdes d \oit c \oitdes b \oit a 
\break
\oitdes g \oit f \oitdes e \oit d 
\oitdes c \oit b c2 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\oitdes c8 \oit d \oitdes e \oit f 
\oitdes g \oit a \oitdes b \oit c 
\oitdes b \oit a \oitdes g \oit f 
\oitdes e \oit d \oitdes c \oit b
\break
\oitdes a \oit b \oitdes c \oit d 
\oitdes e \oit f \oitdes g \oit a 
\oitdes b \oit c c2 \break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\oitdes c8 \oit d \oitdes e \oit f 
\oitdes g \oit a \oitdes g \oit f 
\oitdes e \oit d \oitdes c \oitdes b 
\break
\oitdes a \oit g
\minimumFret #1 \oitdes f
\minimumFret #2 \oit g
\oitdes a \oitdes b c2 \break }}
%%
} % fim variável oitavastudo
%%
quartasaomesmotempo = {
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Quartas Harmônicas" "Dó" }}}
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\quarpejun c8 \quarpejun d \quarpejun e 
<<f b \tag #'tablatura {<<f\4 b\3>>}>>
\quarpejun g \quarpejun a \quarpejun b \quarpejun c \quarpejun d 
\quarpejun c \quarpejun b \quarpejun a \quarpejun g 
<<f b \tag #'tablatura {<<f\4 b\3>>}>>
\quarpejun e \quarpejun d \quarpejun c
\quarpejun b \quarpejun a \quarpejun g \quaraumjun f \quarpejun e \quaraumjun f \quarpejun g \quarpejun a \quarpejun b \quarpejun c2.}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\quarpejun c8 \quarpejun d \quarpejun e \quaraumjun f \quarpejun g \quarpejun a \quarpejun b
\quarpejun c \quarpejun b \quarpejun a \quarpejun g \quaraumjun f \quarpejun e \quarpejun d \quarpejun c \quarpejun b \quarpejun a \quarpejun g 
\tag #'tablatura { \minimumFret #8 }
\quaraumjun f \quarpejun e \quarpejun d \quarpejun c \quarpejun d \quarpejun e \quaraumjun f \quarpejun g \quarpejun a \quarpejun b
\quarpejun c2 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\quarpejun c8 \quarpejun d \quarpejun e \quaraumjun f \quarpejun g \quarpejun a \quarpejun b
\quarpejun c \quarpejun d \quarpejun e \quaraumjun f \quarpejun g 
\quarpejun a \quarpejun g \quaraumjun f \quarpejun e 
\quarpejun d \quarpejun c \quarpejun b \quarpejun 
a \quarpejun g \quaraumjun f \quarpejun e \quarpejun d \quarpejun c \quarpejun b
\quarpejun c2. }}
%%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\quarpejun c8 \quarpejun d \quarpejun e 
<<f b \tag #'tablatura {<<f\5 b\4>>}>>
\quarpejun g \quarpejun a \quarpejun b
\quarpejun c \quarpejun d \quarpejun e \quaraumjun f
\quarpejun g \quaraumjun f \quarpejun e \quarpejun d \quarpejun c \quarpejun b
\quarpejun a \quarpejun g 
<<f b \tag #'tablatura {<<f\5 b\4>>}>>
\quarpejun e, \quarpejun d \quarpejun c \quarpejun b
\quarpejun a \quarpejun b \quarpejun c \quarpejun d \quarpejun e
<<f b \tag #'tablatura {<<f\5 b\4>>}>>
\quarpejun g \quarpejun a \quarpejun b \quarpejun c2..
} % fim relative
} % fim variável
%%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\quarpejun c8 \quarpejun d \quarpejun e \quaraumjun f \quarpejun g 
\quarpejun a \quarpejun b 
\tag #'tablatura { \minimumFret #3 }
\quarpejun c \quarpejun d
\quarpejun e \quarpejun d \quarpejun c 
\quarpejun b \tag #'tablatura { \minimumFret #2 }
\quarpejun a \quarpejun g 
\quaraumjun f \quarpejun e \quarpejun d \quarpejun c 
\quarpejun b \quarpejun a \quarpejun g 
\onceRevertMinimumFretOpen \quaraumjun f
\quarpejun g \quarpejun a \quarpejun b \quarpejun c2.
}} % fim relative & variável Maiorcagedla
\break
} % fim variável quintastudo
%%
quintasaomesmotempo = {
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Quintas Juntas" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\quinjusjun c8 \quinjusjun d \quinjusjun e \quinjusjun f 
\quinjusjun g \quinjusjun a \quindimjun b \quinjusjun c 
\quindimjun b \quinjusjun a \quinjusjun g \quinjusjun f 
\quinjusjun e \quinjusjun d \quinjusjun c \quindimjun b 
\quinjusjun a \quinjusjun g \quinjusjun f \quinjusjun e 
\quinjusjun f \quinjusjun g \quinjusjun a \quindimjun b c1}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\quinjusjun c8 \quinjusjun d \quinjusjun e \quinjusjun f \quinjusjun g \quinjusjun a
\quindimjun b \quinjusjun a \quinjusjun g \quinjusjun f \quinjusjun e \quinjusjun d \quinjusjun c \quindimjun b \quinjusjun a \quinjusjun g 
\tag #'tablatura { \minimumFret #8 }
\quinjusjun f \quinjusjun e \quinjusjun d \quinjusjun c \quinjusjun d \quinjusjun e \quinjusjun f \quinjusjun g \quinjusjun a \quindimjun b
c2. }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\quinjusjun c8 \quinjusjun d \quinjusjun e \quinjusjun f 
\quinjusjun g \quinjusjun a \quindimjun b \quinjusjun c 
\quinjusjun d \quinjusjun e \quinjusjun f \quinjusjun g 
\quinjusjun f \quinjusjun e \quinjusjun d \quinjusjun c 
\quindimjun b \quinjusjun a \quinjusjun g \quinjusjun f 
\quinjusjun e \quinjusjun d \quinjusjun c \quindimjun b
c1 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\quinjusjun c8 \quinjusjun d \quinjusjun e \quinjusjun f \quinjusjun g \quinjusjun a \quindimjun b
\quinjusjun c \quinjusjun d \quinjusjun e \quinjusjun f
\quinjusjun e \quinjusjun d \quinjusjun c \quindimjun b
\quinjusjun a \quinjusjun g \quinjusjun f \quinjusjun e \quinjusjun d \quinjusjun c \quindimjun b
\quinjusjun a \quindimjun b \quinjusjun c \quinjusjun d 
\quinjusjun e \quinjusjun f \quinjusjun g \quinjusjun a 
\quindimjun b \quinjusjun c c1
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\quinjusjun c8 \quinjusjun d \quinjusjun e \quinjusjun f 
\quinjusjun g \quinjusjun a \quindimjun b \quinjusjun c 
\quinjusjun d \quinjusjun c \quindimjun b \quinjusjun a 
\quinjusjun g \quinjusjun f \quinjusjun e \quinjusjun d 
\quinjusjun c \quindimjun b \quinjusjun a \quinjusjun g 
\onceRevertMinimumFretOpen \quinjusjun f
\quinjusjun g \quinjusjun a \quindimjun b \quinjusjun c1
\break
}} % fim relative & variável Maiorcagedla
%%
} % fim variável quintasaomesmotempo
%%
sextasaomesmotempo = {
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Sextas Juntas" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\sexmajjun c8 \sexmajjun d \sexminjun e \sexmajjun f 
\sexmajjun g \sexminjun a \sexminjun b \sexminjun a 
\sexmajjun g \sexmajjun f \sexminjun e \sexmajjun d 
\sexmajjun c \sexminjun b \sexminjun a \sexmajjun g 
\sexmajjun f \sexminjun e \sexmajjun f \sexmajjun g 
\sexminjun a \sexminjun b \sexmajjun c4}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\sexmajjun c8 \sexmajjun d \sexminjun e \sexmajjun f 
\sexmajjun g8 \sexminjun a \sexmajjun g \sexmajjun f 
\sexminjun e8 \sexmajjun d \sexmajjun c \sexminjun b 
\sexminjun a \sexmajjun g 
\tag #'tablatura { \minimumFret #8 }
\sexmajjun f \sexminjun e 
\sexmajjun d \sexmajjun c \sexmajjun d \sexminjun e 
\sexmajjun f \sexmajjun g \sexminjun a \sexminjun b
\sexmajjun c1 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\sexmajjun c8 \sexmajjun d \sexminjun e \sexmajjun f 
\sexmajjun g8 \sexminjun a \sexminjun b \sexmajjun c 
\sexmajjun d8 \sexminjun e \sexmajjun f \sexminjun e 
\sexmajjun d8 \sexmajjun c \sexminjun b \sexminjun a 
\sexmajjun g8 \sexmajjun f \sexminjun e \sexmajjun d 
\sexmajjun c8 \sexminjun b \sexmajjun c4 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\tag #'tablatura { \minimumFret #4 }
\sexmajjun c8 \sexmajjun d \sexminjun e \sexmajjun f 
\sexmajjun g \sexminjun a \sexminjun b \sexmajjun c 
\sexmajjun d \sexminjun e \sexmajjun d \sexmajjun c 
\sexminjun b \sexminjun a \sexmajjun g \sexmajjun f 
\sexminjun e \sexmajjun d \sexmajjun c \sexminjun b
\sexminjun a \sexminjun b \sexmajjun c \sexmajjun d 
\sexminjun e \sexmajjun f \sexmajjun g \sexminjun a 
\sexminjun b \sexmajjun c4.
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\sexmajjun c8 \sexmajjun d \sexminjun e \sexmajjun f 
\sexmajjun g \sexminjun a \sexminjun b \sexmajjun c 
\sexminjun b \sexminjun a \sexmajjun g \sexmajjun f 
\sexminjun e \sexmajjun d \sexmajjun c \sexminjun b 
\sexminjun a \sexmajjun g 
\onceRevertMinimumFretClosed \sexmajjun f
\sexmajjun g 
\sexminjun a \sexminjun b \sexmajjun c4
\break
}} % fim relative & variável Maiorcagedla
%%
} % fim variável sextasaomesmotempo
%%
sétimasaomesmotempo = {
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Sétimas Juntas" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\setmajjun c8 \setminjun d \setminjun e \setmajjun f 
\setminjun g \setminjun a
\setminjun g \setmajjun f \setminjun e \setminjun d 
\setmajjun c \setminjun b \setminjun a \setminjun g 
\setmajjun f \setminjun e \setmajjun f \setminjun g 
\setminjun a \setminjun b \setmajjun c2}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\setmajjun c8 \setminjun d \setminjun e \setmajjun f 
\setminjun g8 \setmajjun f 
\setminjun e8 \setminjun d \setmajjun c \setminjun b 
\setminjun a \setminjun g 
\tag #'tablatura { \minimumFret #8 }
\setmajjun f \setminjun e 
\setminjun d \setmajjun c \setminjun d \setminjun e 
\setmajjun f \setminjun g \setminjun a \setminjun b
\setmajjun c4 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\setmajjun c8 \setminjun d \setminjun e \setmajjun f 
\setminjun g8 \setminjun a \setminjun b \setmajjun c 
\setminjun d8 \setminjun e 
\setminjun d8 \setmajjun c \setminjun b \setminjun a 
\setminjun g8 \setmajjun f \setminjun e \setminjun d 
\setmajjun c8 \setminjun b \setmajjun c2 }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\goAroundAdd {\tag #'tablatura { \minimumFret #4 }
\tag #'pauta <c b'>8
\tag #'tablatura <c b'\4 b\3>8
\setminjun d \setminjun e 
\tag #'pauta <f e'>8
\tag #'tablatura <f e'\2 e\3>8
\setminjun g \setminjun a \setminjun b \setmajjun c}
\setminjun d
\setminjun b
\setminjun a \setminjun b 
\tag #'pauta <c b'>8
\tag #'tablatura <c b'\4 b\3>8
\setminjun d \setminjun e 
\tag #'pauta <f e'>8
\tag #'tablatura <f e'\2 e\3>8
\setminjun g \setminjun a 
\setminjun b \setmajjun c8 r2
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\setmajjun c8 \setminjun d \setminjun e \setmajjun f 
\setminjun g \setminjun a
\setminjun b \setminjun a \setminjun g \setmajjun f 
\setminjun e \setminjun d \setmajjun c \setminjun b 
\setminjun a \setminjun g 
\onceRevertMinimumFretClosed \setmajjun f
\setminjun g 
\setminjun a \setminjun b \setmajjun c2
\break
}} % fim relative & variável Maiorcagedla
%%
} % fim variável sétimasaomesmotempo
%%
oitavasaomesmotempo = {
\tag #'pauta { \sectionLabel \markup \left-column {
\bold \magnify #1.5 {"Oitavas Juntas" "Dó" }}}
%
{\relative c' {
\tag #'tablatura { \minimumFret #12 }
\oitjun c8 \oitjun d \oitjun e \oitjun f 
\oitjun g \oitjun a
\oitjun g \oitjun f \oitjun e \oitjun d 
\oitjun c \oitjun b \oitjun a \oitjun g 
\oitjun f \oitjun e \oitjun f \oitjun g 
\oitjun a \oitjun b \oitjun c2}}
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ré" }
{\relative c' {
\tag #'tablatura { \minimumFret #9 }
\oitjun c8 \oitjun d \oitjun e \oitjun f 
\oitjun e8 \oitjun d \oitjun c \oitjun b 
\oitjun a \oitjun g 
\tag #'tablatura { \minimumFret #8 }
\oitjun f \oitjun e 
\oitjun d \oitjun c \oitjun d \oitjun e 
\oitjun f \oitjun g \oitjun a \oitjun b
\oitjun c2 }} % fim relative & variável 
%
\break
%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Mi" }
{\relative c {
\tag #'tablatura { \minimumFret #7 }
\oitjun c8 \oitjun d \oitjun e \oitjun f 
\oitjun g8 \oitjun a \oitjun b \oitjun c 
\oitjun d8 \oitjun c \oitjun b \oitjun a 
\oitjun g8 \oitjun f \oitjun e \oitjun d 
\oitjun c8 \oitjun b \oitjun c2. }}
%
\break
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Sol" }
{\relative c {
\goAroundAdd {\tag #'tablatura { \minimumFret #4 }
\oitjun c8 \oitjun d \oitjun e \oitjun f
\oitjun g \oitjun a \oitjun b } \oitjun c
\oitjun b
\oitjun a \oitjun b \oitjun c \oitjun d
\oitjun e \oitjun f \oitjun g \oitjun a 
\oitjun b \oitjun c r2.
\break
} % fim relative
} % fim variável
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
{\relative c {
\tag #'tablatura { \minimumFret #2 }
\oitjun c8 \oitjun d \oitjun e \oitjun f 
\oitjun g \oitjun a \oitjun g \oitjun f 
\oitjun e \oitjun d \oitjun c \oitjun b 
\oitjun a \oitjun g 
\onceRevertMinimumFretClosed \oitjun f
\oitjun g 
\oitjun a \oitjun b \oitjun c2.
\break
}} % fim relative & variável Maiorcagedla
%%
} % fim variável sétimasaomesmotempo
%%