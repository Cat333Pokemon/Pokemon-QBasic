'Simulates the battle of two Pokemon, Pikachu and Bulbasaur
'by Scott Cheney
'cat333pokemon@aol.com
RANDOMIZE TIMER
SCREEN 13
PRINT "This is a Pokemon battle!!"
PRINT "Today's rivals are:  PIKACHU"
0 PRINT "                        &"
PRINT "                    BULBASAUR"
PRINT
INPUT "Are you ready??? Press enter to begin.", a
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
x = 2
slpa = 3
solarbeam = 0

begin:
IF G > 2700 THEN G = 2700
CLS
RANDOMIZE TIMER
hitmissa = INT(RND * 10) + 1
hitmissb = INT(RND * 2) + 1
prz = INT(RND * 10) + 1
critical = INT(RND * 10) + 1
razorch = INT(RND * 3) + 1
bulbattack = INT(RND * 4) + 1
przatk = INT(RND * 2) + 1
criticalbulb = INT(RND * 10) + 1
PRINT "STATUS:"
PRINT "PIKACHU -", G; H$
PRINT "BULBASAUR -", I; J$
PRINT : PRINT : PRINT "WHICH ATTACK/ITEM?"
PRINT "1 THUNDERSHOCK - ELE"
PRINT "", C
PRINT "2 THUNDER      - ELE"
PRINT "", D
PRINT "3 QUICK ATTACK - NRM"
PRINT "", E
PRINT "4 SLAM         - NRM"
PRINT "", F
PRINT "5 SUPER POTION - +50 HP"
PRINT "", K
PRINT "6 FULL HEAL    - ERASE SPECIAL STATUS"
PRINT "", L
PRINT "7 MAX ETHER    - RESTORE ALL PP"
PRINT "", M
PRINT "8 POTION       - +20 HP"
PRINT "", N
PRINT "9 HYPER POTION - +200 HP"
PRINT "", x
DO
B$ = INPUT$(1)
IF UCASE$(B$) = "1" THEN GOTO shock
IF UCASE$(B$) = "2" THEN GOTO thunder
IF UCASE$(B$) = "3" THEN GOTO qattack
IF UCASE$(B$) = "4" THEN GOTO slam
IF UCASE$(B$) = "5" THEN GOTO spotion
IF UCASE$(B$) = "6" THEN GOTO fullheal
IF UCASE$(B$) = "7" THEN GOTO maxether
IF UCASE$(B$) = "8" THEN GOTO potion
IF UCASE$(B$) = "9" THEN GOTO hyper
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
IF I < 1 THEN GOTO win
PRINT "It's not very effective."
GOTO bulbasaur

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
PRINT "It's a Critical Hit"
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
IF I < 1 THEN GOTO win
PRINT "It's not very effective."
GOTO bulbasaur

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
IF I < 1 THEN GOTO win
GOTO bulbasaur

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
IF I < 1 THEN GOTO win
GOTO bulbasaur

spotion:
CLS
IF K < 1 THEN GOTO errorc
K = K - 1
V = 2700 - G
IF V > 50 THEN V = 50
PRINT "Pikachu gained"; O; "HP!"
V = G + V
GOTO bulbasaur

fullheal:
CLS
IF L < 1 THEN GOTO errorc
L = L - 1
IF H$ = "NRM" THEN GOTO begin
H$ = "NRM"
PRINT "Pikachu's status returned!"
slp = 3
GOTO bulbasaur

maxether:
CLS
IF M < 1 THEN GOTO errorc
M = M - 1
PRINT "MOVE?"
PRINT "THUNDERSHOCK"
PRINT "THUNDER"
PRINT "QUICK ATTACK"
PRINT "SLAM"
B$ = INPUT$(1)
IF UCASE$(B$) = "1" THEN GOTO shockmether
IF UCASE$(B$) = "2" THEN GOTO thundermether
IF UCASE$(B$) = "3" THEN GOTO qattackmether
IF UCASE$(B$) = "4" THEN GOTO slammether
shockmether:
C = 30
GOTO maxetherb
thundermether:
D = 10
GOTO maxetherb
qattackmether:
E = 30
GOTO maxetherb
slammether:
F = 20
maxetherb:
CLS
PRINT "PP was restored!"
GOTO bulbasaur

potion:
CLS
IF N < 1 THEN GOTO errorc
N = N - 1
OT = 2700 - G
IF OT > 20 THEN OT = 20
PRINT "Pikachu gained"; OT; "HP!"
G = G + OT
GOTO bulbasaur

hyper:
CLS
IF x < 1 THEN GOTO errorc
x = x - 1
U = 2700 - G
IF U > 200 THEN U = 200
PRINT "Pikachu gained"; U; "HP!"
U = G + U
GOTO bulbasaur

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
IF G < 1 THEN GOTO lose
GOTO bottom

one:
IF H$ = "SLP" THEN GOTO oneb
PRINT "Enemy Bulbasaur used SLEEP POWDER!"
IF J$ = "PRZ" THEN GOTO sleeppowd
GOTO sleeppow
sleeppowd:
IF przatk = 1 THEN GOTO errorb
sleeppow:
IF hitmissb = 1 THEN GOTO missb
H$ = "SLP"
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
IF G < 1 THEN GOTO lose
GOTO bottom

three:
IF solarbeam = 0 THEN GOTO beamload
PRINT "Enemy Bulbasaur used SOLARBEAM!"
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
PRINT
INPUT a
GOTO begin

errora:
PRINT "No PP for this move!"
GOTO bottom

errorb:
PRINT "Bulbasaur's paralyzed! It can't move!"
GOTO bottom

errorc:
PRINT "No more!"
GOTO bottom

win:
PRINT : PRINT "Enemy Bulbasaur fainted!"
PRINT "You've won the Pokemon battle!"
PRINT "HP:"; G; "0"
END

lose:
PRINT : PRINT "Pikachu fainted!"
PRINT "You've lost the Pokemon battle!"
PRINT "HP:"; I; "0"
END

miss:
PRINT "The attack missed!"
GOTO bulbasaur

missb:
PRINT "The attack missed!"
GOTO bottom

slp:
CLS
slpa = slpa - 1
IF slpa = 0 THEN GOTO aslp
PRINT "Pikachu is asleep!"
GOTO bulbasaur
aslp:
H$ = "NRM"
PRINT "Pikachu woke up!"
slpa = 3
GOTO bulbasaur

