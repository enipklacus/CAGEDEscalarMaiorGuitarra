\include "Preâmbulo.ly"
padrãoDóMaior = {
\relative c {

\goAroundAdd { c8 d8 e8 f8 g8 a8 b8 c8 d8 e8 f8 g8 } a8 
b8 c4 r4 r4
\break
} % fim relative
} % fim variável Maiorcagedla
%%
padrões = {
%%
\tag #'seção { \sectionLabel \markup 
\bold \magnify #1.5 "Lá" }
\padrãoDóMaior
} % fim variável padrões
%%
terçastudo = { % início variável
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ascendentes" }
{\relative c {
\goAroundAdd {
\termaj c8 \termin d8 \termin e8 \termaj f8 \termaj g8 
\termin a8 \termin b8 \termaj c8 \termin d8 } 
{\termin e8 \termaj f8 \termin e8 \break}
\termin b8 c8 e4.
\break
}} % fim relative & variável Maiorcagedla
%%
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Descendentes" }
{\relative c {
\goAroundAdd {
\termajdes c8 \termindes d8 \termindes e8 \termajdes f8 \termajdes g8 
\termindes a8 \termindes b8 \termajdes c8 \termindes d8 } 
{\termindes e8 \termajdes f8 \termindes e8 \break}
\termindes b8 e8 c4.
\break}}
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Asc. Desc." }
{\relative c {
\goAroundAdd {
\termaj c8 \termindes d8 \termin e8 \termajdes f8 
\termaj g8 \termindes a8 \termin b8 \termajdes c8 
\termin d8 }
{\termindes e8 \termaj f8 \termindes e8 \break}
\termindes b8 c8 e4.
\break }}
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Desc. Asc." }
{\relative c {
\goAroundAdd {\termajdes c8 \termin d8 \termindes e8 \termaj f8 
\termajdes g8 \termin a8 \termindes b8 \termaj c8 
\termindes d8}
{\termin e8 \termajdes f8 \termin e8 \break}
\termin b8 e8 c4.
\break }}
%%
} % fim variável terçastudo
%%
quartastudo = { % início variável
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ascendentes" }
{\relative c {
\quarpe c8 \quarpe d8 \quarpe e8 \quaraum f8 
\quarpe g8 \quarpe a8 \quarpe b8 \quarpe c8 
\quarpe d8 \quarpe e8 \quarpe d8 \quarpe c8 
\break
\quarpe b8 \quarpe a8 \quarpe g8 \quaraum f8 
\quarpe e8 \quarpe d8 \quarpe c8 \quarpe b8 
c8 f2..
\break
}} % fim relative & variável Maiorcagedla
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Descendentes" }
{\relative c {
\quarpedes c8 \quarpedes d8 \quarpedes e8 \quaraumdes f8 \quarpedes g8 
\quarpedes a8 \quarpedes b8 \quarpedes c8 
\quarpedes d8
\quarpedes e8 \quarpedes d8 \quarpedes c8 
\break
\quarpedes b8 \quarpedes a8 
\quarpedes g8 \quaraumdes f8 \quarpedes e8 \quarpedes d8 \quarpedes c8 
\quarpedes b8 f'8 c2..
\break }}
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Asc. Desc." }
{\relative c {

\quarpe c8 \quarpedes d8 \quarpe e8 \quaraumdes f8 
\quarpe g8 \quarpedes a8 \quarpe b8 \quarpedes c8 
\quarpe d8 \quarpedes e8 \quarpe d8 \quarpedes c8 
\break
\quarpe b8 \quarpedes a8 \quarpe g8 \quaraumdes f8
\quarpe e8 \quarpedes d8 \quarpe c8 \quarpedes b8
c8 f2..
\break }}
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Desc. Asc." }
{\relative c {

\quarpedes c8 \quarpe d8 \quarpedes e8 \quaraum f8 
\quarpedes g8 \quarpe a8 \quarpedes b8 \quarpe c8 
\quarpedes d8 \quarpe e8 \quarpedes d8 \quarpe c8 
\break
\quarpedes b8 \quarpe a8 \quarpedes g8 \quaraum f8
\quarpedes e8 \quarpe d8 \quarpedes c8 \quarpe b8
f'8 c2.. \break }}
%%
} % fim variável quartastudo
%%
quintastudo = { % início variável
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ascendentes" }
{\relative c {

\quinjus c8 \quinjus d8 \quinjus e8 \quinjus f8 
\quinjus g8 \quinjus a8 \quindim b8 \quinjus c8 
\quinjus d8 \quinjus c8 \quindim b8 \quinjus a8 
\break
\quinjus g8 \quinjus f8 \quinjus e8 \quinjus d8 
\quinjus c8 \quindim b8 c8 g'4.
\break
}} % fim relative & variável Maiorcagedla
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Descendentes" }
{\relative c {

\quinjusdes c8 \quinjusdes d8 \quinjusdes e8 \quinjusdes f8 
\quinjusdes g8 \quinjusdes a8 \quindimdes b8 \quinjusdes c8 
\quinjusdes d8 \quinjusdes c8 \quindimdes b8 \quinjusdes a8 
\break
\quinjusdes g8 \quinjusdes f8 \quinjusdes e8 \quinjusdes d8 \quinjusdes c8 
\quindimdes b8 g'8 c,4.
\break }}
%%
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Asc. Desc." }
{\relative c {

\quinjus c8 \quinjusdes d8 \quinjus e8 \quinjusdes f8 
\quinjus g8 \quinjusdes a8 \quindim b8 \quinjusdes c8 
\quinjus d8 \quinjusdes c8 \quindim b8 \quinjusdes a8 
\break
\quinjus g8 \quinjusdes f8 \quinjus e8 \quinjusdes d8 
\quinjus c8 \quindimdes b8 c8 g'4.
\break }}
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Desc. Asc." }
{\relative c {

\quinjusdes c8 \quinjus d8 \quinjusdes e8 \quinjus f8 
\quinjusdes g8 \quinjus a8 \quindimdes b8 \quinjus c8 
\quinjusdes d8 \quinjus c8 \quindimdes b8 \quinjus a8 
\break
\quinjusdes g8 \quinjus f8 \quinjusdes e8 \quinjus d8 
\quinjusdes c8 \quindim b8 g'8 c,4.
\break }}
%%
} % fim variável quartastudo
%%
sextastudo = { % início variável
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ascendentes" }
{\relative c {

\sexmaj c8 \sexmaj d8 \sexmin e8 \sexmaj f8 
\sexmaj g8 \sexmin a8 \sexmin b8 \sexmaj c8 
\break
\sexmin b8 \sexmin a8 \sexmaj g8 \sexmaj f8 
\sexmin e8 \sexmaj d8 \sexmaj c8 \sexmin b8
c8 a'2..
\break
}} % fim relative & variável Maiorcagedla
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Descendentes" }
{\relative c {

\sexmajdes c8 \sexmajdes d8 \sexmindes e8 \sexmajdes f8 
\sexmajdes g8 \sexmindes a8 \sexmindes b8 \sexmajdes c8 
\break
\sexmindes b8 \sexmindes a8 \sexmajdes g8 \sexmajdes f8 
\sexmindes e8 \sexmajdes d8 \sexmajdes c8 \sexmindes b8 
a'8 c,2.. }}
%%
\break
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Asc. Desc." }
{\relative c {

\sexmaj c8 \sexmajdes d8 \sexmin e8 \sexmajdes f8 
\sexmaj g8 \sexmindes a8 \sexmin b8 \sexmajdes c8
\break
\sexmin b8 \sexmindes a8 \sexmaj g8 \sexmajdes f8
\sexmin e8 \sexmajdes d8 \sexmaj c8 \sexmindes b8
c8 a'2..
\break }}
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Desc. Asc." }
{\relative c {

\sexmajdes c8 \sexmaj d8 \sexmindes e8 \sexmaj f8 
\sexmajdes g8 \sexmin a8 \sexmindes b8 \sexmaj c8 
\break
\sexmindes b8 \sexmin a8 \sexmajdes g8 \sexmaj f8 
\sexmindes e8 \sexmaj d8 \sexmajdes c8 \sexmindes b8 
a'8 c,2.. \break }}
%%
} % fim variável sextastudo
%%
sétimastudo = { % início variável
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ascendentes" }
{\relative c {

\setmaj c8 \setmin d8 \setmin e8 \setmaj f8 
\setmin g8 \setmin a8 \setmin b8 \setmin a8 
\break
\setmin g8 \setmaj f8 \setmin e8 \setmin d8 
\setmaj c8 \setmin b8 c8 b'4.
\break
}} % fim relative & variável Maiorcagedla
%%
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Descendentes" }
{\relative c {

\setmajdes c8 \setmindes d8 \setmindes e8 \setmajdes f8 
\setmindes g8 \setmindes a8 \setmindes b8 \setmindes a8 
\break
\setmindes g8 \setmajdes f8 \setmindes e8 \setmindes d8 
\setmajdes c8 \setmindes b8 b'8 c,4. }}
%%
\break
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Asc. Desc." }
{\relative c {

\setmaj c8 \setmindes d8 \setmin e8 \setmajdes f8
\setmin g8 \setmindes a8 \setmin b8 \setmindes a8 
\break
\setmin g8 \setmajdes f8 \setmin e8 \setmindes d8 
\setmaj c8 \setmindes b8 c8 b'4. \break }}
%%
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Desc. Asc." }
{\relative c {

\setmajdes c8 \setmin d8 \setmindes e8 \setmaj f8 
\setmindes g8 \setmin a8 \setmindes b8 \setmin a8 
\break
\setmindes g8 \setmaj f8 \setmindes e8 \setmin d8 
\setmajdes c8 \setmindes b8 b'8 c,4. \break }}
%%
} % fim variável sétimastudo
%%
oitavastudo = { % início variável
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Ascendentes" }
{\relative c {

\oit c8 \oit d8 \oit e8 \oit f8 
\oit g8 \oit a8 \oit g8 \oit f8 
\oit e8 \oit d8 \oit c8 \oit b8
c8 c'2..
\break
}} % fim relative & variável Maiorcagedla
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Descendentes" }
{\relative c {

\oitdes c8 \oitdes d8 \oitdes e8 \oitdes f8 
\oitdes g8 \oitdes a8 \oitdes g8 \oitdes f8 
\oitdes e8 \oitdes d8 \oitdes c8 \oitdes b8 
c'8 c,2.. }}
%%
\break
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Asc. Desc." }
{\relative c {

\oit c8 \oitdes d8 \oit e8 \oitdes f8
\oit g8 \oitdes a8 \oit g8 \oitdes f8 
\oit e8 \oitdes d8 \oit c8 \oitdes b8
c8 c'2.. \break }}
%%
%%
\tag #'pauta { \sectionLabel \markup 
\bold \magnify #1.5 "Desc. Asc." }
{\relative c {
\oitdes c8 \oit d8 \oitdes e8 \oit f8 
\oitdes g8 \oit a8 \oitdes g8 \oit f8 
\oitdes e8 \oit d8 \oitdes c8 \oit b8 
c'8 c,2.. \break }}
%%
} % fim variável oitavastudo
%%