'Simulates the battle of two Pok‚mon, Pikachu and Bulbasaur
'by Scott Cheney
'cat333pokemon@aol.com
'¸2004
RANDOMIZE TIMER
SCREEN 12
PRINT "This is a Pok‚mon battle"
PLAY "T192O2L8DDL4AL8DDL4B-L8DDL4AL8DDL4F+"
PRINT "Today's rivals are:  PIKACHU"
PRINT "                        &"
PRINT "                    BULBASAUR"
PRINT
PLAY "L8DDL4AL8DD>L4C+L2D<D>C<CL8DDL4AL8DDL4B-"
PLAY "L8D"
PRINT "P"
PLAY "D"
LOCATE 6, 2
PRINT "o"
PLAY "L4>C"
LOCATE 6, 3
PRINT "k"
PLAY "<L8D"
LOCATE 6, 4
PRINT "‚"
PLAY "D"
LOCATE 6, 5
PRINT "m"
PLAY ">L4C+"
LOCATE 6, 6
PRINT "o"
PLAY "L1D"
LOCATE 6, 7
PRINT "n"
PLAY ">L4DT250"
LOCATE 6, 8
PRINT "!"

new:
INPUT "Are you ready??? Press ENTER to begin.", a
C = 30
D = 10
E = 30
F = 20
G = 2700
H$ = "NRM"
I = 2000
J$ = "NRM"
K = 1
L = 2
M = 1
N = 3
X = 2
slpa = 3
solarbeam = 0

begin:
CLS
IF G > 2700 THEN G = 2700
RANDOMIZE TIMER
hitmissa = INT(RND * 10) + 1
hitmissb = INT(RND * 2) + 1
prz = INT(RND * 10) + 1
critical = INT(RND * 10) + 1
razorch = INT(RND * 3) + 1
bulbattack = INT(RND * 4) + 1
przatk = INT(RND * 2) + 1
criticalbulb = INT(RND * 10) + 1
PLAY "T120"
IF G > 2700 THEN G = 2700
IF I > 2000 THEN I = 2000
aa$ = ""
bb$ = ""
IF G < 2025 THEN aa$ = "    ó HP"
IF G < 1350 THEN aa$ = "    « HP"
IF G < 675 THEN aa$ = "    ¬ HP"
IF I < 1500 THEN bb$ = "    ó HP"
IF I < 1000 THEN bb$ = "    « HP"
IF I < 500 THEN bb$ = "    ¬ HP"
PRINT "STATUS:"
PRINT "PIKACHU -", G; H$, aa$
PRINT "BULBASAUR -", I; J$, bb$
PRINT "WHICH ATTACK/ITEM?"
PRINT "1 THUNDERSHOCK - ELE"
PRINT "", C
PRINT "2 THUNDER      - ELE"
PRINT "", D
PRINT "3 QUICK ATTACK - NRM"
PRINT "", E
PRINT "4 SLAM         - NRM"
PRINT "", F
PRINT "5 POTION       - +20 HP"
PRINT "", N
PRINT "6 SUPER POTION - +50 HP"
PRINT "", K
PRINT "7 HYPER POTION - +200 HP"
PRINT "", X
PRINT "8 FULL HEAL    - ERASE SPECIAL STATUS"
PRINT "", L
PRINT "9 ETHER        - RESTORE 10 PP"
PRINT "", M
PRINT "0 FORFEIT      - LOSE IMMEDIATELY"
PRINT "", " --"
PRINT "A RULES        - HOW TO PLAY"
PRINT "", " --"
PRINT "B STRUGGLE     - NRM (NO MOVES)"
PRINT "", " --"
DO
B$ = INPUT$(1)
IF UCASE$(B$) = "1" THEN GOTO shock
IF UCASE$(B$) = "2" THEN GOTO thunder
IF UCASE$(B$) = "3" THEN GOTO qattack
IF UCASE$(B$) = "4" THEN GOTO slam
IF UCASE$(B$) = "5" THEN GOTO potion
IF UCASE$(B$) = "6" THEN GOTO spotion
IF UCASE$(B$) = "7" THEN GOTO hyper
IF UCASE$(B$) = "8" THEN GOTO fullheal
IF UCASE$(B$) = "9" THEN GOTO ether
IF UCASE$(B$) = "0" THEN GOTO losea
IF UCASE$(B$) = "A" THEN GOTO rules
IF UCASE$(B$) = "B" THEN GOTO struggle
LOOP

shock:
IF H$ = "SLP" THEN GOTO slp
CLS
PRINT "Pikachu used THUNDERSHOCK!"
IF C < 1 THEN GOTO errora
C = C - 1
IF critical = 1 THEN GOTO cshock
GOTO shockb
cshock:
I = I - 23
PRINT "It's a Critical Hit!"
shockb:
IF J$ = "PRZ" THEN GOTO shocka
IF prz = 1 THEN J$ = "PRZ"
IF prz = 1 THEN PRINT "Enemy Bulbasaur was paralyzed!"
shocka:
I = I - 22
PLAY "O1L64CEL32G"
IF I < 1 THEN GOTO win
PRINT "It's not very effective."
GOTO moved

thunder:
IF H$ = "SLP" THEN GOTO slp
CLS
PRINT "Pikachu used THUNDER!"
IF D < 1 THEN GOTO errora
D = D - 1
IF hitmissb = 1 THEN GOTO miss
IF critical = 1 THEN GOTO cthunder
GOTO thunderb
cthunder:
I = I - 67
PRINT "It's a Critical Hit!"
thunderb:
IF J$ = "PRZ" THEN GOTO thundera
IF prz = 1 THEN J$ = "PRZ"
IF prz = 2 THEN J$ = "PRZ"
IF prz = 3 THEN J$ = "PRZ"
IF prz = 1 THEN PRINT "Enemy Bulbasaur was paralyzed!"
IF prz = 2 THEN PRINT "Enemy Bulbasaur was paralyzed!"
IF prz = 3 THEN PRINT "Enemy Bulbasaur was paralyzed!"
thundera:
I = I - 68
PLAY "O1L64CEL32G"
IF I < 1 THEN GOTO win
PRINT "It's not very effective."
GOTO moved

qattack:
IF H$ = "SLP" THEN GOTO slp
CLS
PRINT "Pikachu used QUICK ATTACK!"
IF E < 1 THEN GOTO errora
E = E - 1
IF critical = 1 THEN GOTO cqattack
GOTO qattackb
cqattack:
I = I - 45
PRINT "It's a Critical Hit!"
qattackb:
I = I - 45
PLAY "O1L64CEL32G"
IF I < 1 THEN GOTO win
GOTO moved

slam:
IF H$ = "SLP" THEN GOTO slp
CLS
PRINT "Pikachu used SLAM!"
IF F < 1 THEN GOTO errora
F = F - 1
IF hitmissb = 1 THEN GOTO miss
IF critical = 1 THEN GOTO cslam
GOTO slamb
cslam:
I = I - 91
PRINT "It's a Critical Hit!"
slamb:
I = I - 91
PLAY "O1L64CEL32G"
IF I < 1 THEN GOTO win
GOTO moved

struggle:
IF 0 = C + D + E + F THEN GOTO strugglea
GOTO begin
strugglea:
IF H$ = "SLP" THEN GOTO slp
CLS
PRINT "Pikachu used STRUGGLE!"
IF critical = 1 THEN GOTO cstruggle
GOTO struggleb
cstruggle:
I = I - 32
PRINT "It's a Critical Hit!"
struggleb:
I = I - 32
PLAY "O1L64CEL32G"
PRINT "Pikachu got hit by recoil."
G = G - 8
IF critical = 1 THEN G = G - 8
IF I < 1 THEN GOTO win
GOTO moved

spotion:
CLS
IF K < 1 THEN GOTO errorc
IF G = 2700 THEN GOTO noeffect
K = K - 1
GA = G
G = G + 50
IF G > 2700 THEN G = 2700
GAA = G - GA
PRINT "Pikachu gained"; GAA; "HP!"
PLAY "T250O2L8CCL64<CDEFGAB>CDEFGAB>CDEFGAB>C"
GOTO item

fullheal:
CLS
IF L < 1 THEN GOTO errorc
IF H$ = "NRM" THEN GOTO noeffect
L = L - 1
IF H$ = "NRM" THEN GOTO begin
H$ = "NRM"
PLAY "T250O2L8CCL64<CDEFGAB>CDEFGAB>CDEFGAB>C"
PRINT "Pikachu's status returned!"
slpa = 3
GOTO item

ether:
CLS
IF M < 1 THEN GOTO errorc
M = M - 1
PRINT "MOVE?"
PRINT "1 THUNDERSHOCK"
PRINT "2 THUNDER"
PRINT "3 QUICK ATTACK"
PRINT "4 SLAM"
kk:
B$ = INPUT$(1)
IF UCASE$(B$) = "1" THEN GOTO shockether
IF UCASE$(B$) = "2" THEN GOTO thunderether
IF UCASE$(B$) = "3" THEN GOTO qattackether
IF UCASE$(B$) = "4" THEN GOTO slamether
GOTO kk
shockether:
IF C = 30 THEN GOTO noeffecta
C = C + 10
IF C > 30 THEN C = 30
PLAY "T250O2L8CCL64<CDEFGAB>CDEFGAB>CDEFGAB>C"
GOTO etherb
thunderether:
IF D = 10 THEN GOTO noeffecta
D = 10
PLAY "T250O2L8CCL64<CDEFGAB>CDEFGAB>CDEFGAB>C"
GOTO etherb
qattackether:
IF E = 30 THEN GOTO noeffecta
E = E + 10
IF E > 30 THEN E = 30
PLAY "T250O2L8CCL64<CDEFGAB>CDEFGAB>CDEFGAB>C"
GOTO etherb
slamether:
IF F = 20 THEN GOTO noeffecta
F = F + 10
IF F > 20 THEN F = 20
PLAY "T250O2L8CCL64<CDEFGAB>CDEFGAB>CDEFGAB>C"
etherb:
CLS
PRINT "PP was restored!"
GOTO item
noeffecta:
M = M + 1
GOTO noeffect

potion:
CLS
IF N < 1 THEN GOTO errorc
IF G = 2700 THEN GOTO noeffect
N = N - 1
GB = G
G = G + 20
IF G > 2700 THEN G = 2700
GBB = G - GB
PRINT "Pikachu gained"; GBB; "HP!"
PLAY "T250O2L8CCL64<CDEFGAB>CDEFGAB>CDEFGAB>C"
GOTO item

hyper:
CLS
IF X < 1 THEN GOTO errorc
IF G = 2700 THEN GOTO noeffect
X = X - 1
GC = G
G = G + 200
IF G > 2700 THEN G = 2700
GCC = G - GC
PRINT "Pikachu gained"; GCC; "HP!"
PLAY "T250O2L8CCL64<CDEFGAB>CDEFGAB>CDEFGAB>C"
GOTO item

bulbasaur:
PRINT
IF solarbeam = 1 THEN GOTO three
IF bulbattack = 4 THEN GOTO zero
IF bulbattack = 1 THEN GOTO one
IF bulbattack = 2 THEN GOTO two
IF bulbattack = 3 THEN GOTO three

zero:
PRINT "Enemy Bulbasaur used TACKLE!"
IF J$ = "PRZ" THEN GOTO tackle
GOTO tackled
tackle:
IF przatk = 1 THEN GOTO errorb
tackled:
G = G - 57
IF G < 1 THEN GOTO lose
IF hitmissa = 1 THEN GOTO missb
IF criticalbulb = 1 THEN GOTO ctackle
GOTO tacklea
ctackle:
G = G - 57
PRINT "It's a Critical Hit!"
tacklea:
PLAY "O1L64CEL32G"
IF G < 1 THEN GOTO lose
GOTO bottom

one:
PRINT "Enemy Bulbasaur used SLEEP POWDER!"
IF H$ = "SLP" THEN GOTO oneb
IF J$ = "PRZ" THEN GOTO sleeppowd
GOTO sleeppow
sleeppowd:
IF przatk = 1 THEN GOTO errorb
sleeppow:
IF hitmissb = 1 THEN GOTO missb
H$ = "SLP"
PLAY "O1L64CEL32G"
PRINT "Pikachu fell asleep!"
GOTO bottom
oneb:   
PRINT "Pikachu is already asleep."
GOTO bottom

two:
PRINT "Enemy Bulbasaur used RAZOR LEAF!"
IF J$ = "PRZ" THEN GOTO razord
GOTO leaf
razord:
IF przatk = 1 THEN GOTO errorb
leaf:
G = G - 94
IF G < 1 THEN GOTO lose
IF hitmissa = 1 THEN GOTO missb
IF criticalbulb = 1 THEN GOTO cleaf
GOTO leafa
cleaf:
G = G - 93
PRINT "It's a Critical Hit!"
leafa:
PLAY "O1L64CEL32G"
IF G < 1 THEN GOTO lose
GOTO bottom

three:
IF solarbeam = 0 THEN GOTO beamload
PRINT "Enemy Bulbasaur used SOLARBEAM!"
PLAY "O1L64CEL32G"
solarbeam = 0
IF J$ = "PRZ" THEN GOTO beamb
GOTO beam
beamb:
IF przatk = 1 THEN GOTO errorb
beam:
G = G - 204
IF G < 1 THEN GOTO lose
IF hitmissa = 1 THEN GOTO missb
IF criticalbulb = 1 THEN GOTO cbeam
GOTO beama
cbeam:
G = G - 204
PRINT "It's a Critical Hit!"
beama:
IF G < 1 THEN GOTO lose
GOTO bottom
beamload:
PRINT "Enemy Bulbasaur is taking in sunlight!"
solarbeam = solarbeam + 1
GOTO bottom

bottom:
PRINT "Pikachu - "; G
SLEEP 3
GOTO begin

errora:
PRINT "No PP for this move!"
GOTO bottom

errorb:
PLAY "T210"
PRINT "Bulbasaur's paralyzed! It can't move!"
GOTO bottom

errorc:
PRINT "No more!"
GOTO bottom

win:
I = 0
PRINT : PRINT "Enemy Bulbasaur fainted!"
PRINT "You've won the Pok‚mon battle!"
PRINT "HP: (PIK/BUL)"; G; I
PLAY "T120O3L4C<L8GGL4G+L2GL4B>C"
GOTO again

lose:
G = 0
PRINT : PRINT "Pikachu fainted!"
losea:
PRINT "You've lost the Pok‚mon battle!"
PRINT "HP: (PIK/BUL)"; G; I
PLAY "T150O1L4L4CCL8CL4CDL8CL4CL8<BL4BL8B-L2B"
GOTO again

moved:
PRINT "Bulbasaur - "; I
GOTO bulbasaur

item:
PRINT "Pikachu - "; G
GOTO bulbasaur

noeffect:
PRINT "It will have no effect."
INPUT aaaa
GOTO begin

miss:
PRINT "The attack missed!"
PLAY "O1L4C"
GOTO bulbasaur

missb:
PRINT "The attack missed!"
PLAY "O1L4C"
GOTO bottom

slp:
CLS
slpa = slpa - 1
IF slpa = 0 THEN GOTO aslp
PRINT "Pikachu is asleep!"
PLAY "O1T250L64EP64EP64EP64EP64EP64EP64EP64EP64EP64EP64EP64EP64EP64EP64EP64EP64EP64EP64EP64EP64E"
PLAY "O1T250L64Cp64Cp64Cp64Cp64Cp64Cp64Cp64Cp64Cp64Cp64Cp64Cp64Cp64Cp64Cp64Cp64Cp64Cp64Cp64Cp64C"
GOTO bulbasaur
aslp:
H$ = "NRM"
PRINT "Pikachu woke up!"
slpa = 3
GOTO bulbasaur

rules:
CLS
PRINT "How to play the Pok‚mon Battle"
PRINT
PRINT "This game is for one player. The controls are rather simple."
PRINT "The number indicated to the side of the move, item, or option"
PRINT "initiates it. To the right is a short description of the"
PRINT "control. Below that is the PP (Pok‚mon Power) or amount of the"
PRINT "item."
PRINT
PRINT "Example:"
PRINT "5 POTION       - +20 HP"
PRINT "               3"
PRINT
PRINT "ITEMS"
PRINT "5 different types of items can be used while playing. Each one"
PRINT "does something different. ***USE THEM WISELY***"
PRINT
PRINT "MOVES"
PRINT "4 moves are available for damaging your opponent. Some are more"
PRINT "powerful than others. Also, some moves are not very effective"
PRINT "while others are super effective. Pay attention to the type!"
PRINT
INPUT "Press ENTER to return to the main menu.", abcd
GOTO begin

again:
INPUT ccdc
CLS
PRINT "Do you wish to play this game again?"
aaaaaa:
againb$ = INPUT$(1)
IF UCASE$(againb$) = "Y" THEN GOTO new
IF UCASE$(againb$) = "N" THEN END
GOTO aaaaaa

