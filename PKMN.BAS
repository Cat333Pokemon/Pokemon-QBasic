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

1
PRINT "(N)ew Game"
PRINT "(C)ontinue"
DO
start$ = INPUT$(1)
IF UCASE$(start$) = "N" THEN GOTO newgame
IF UCASE$(start$) = "C" THEN GOTO continue
LOOP

newgame:
OPEN "A:\PIKACHU.DAT" FOR OUTPUT AS #1
PRINT #1, 2350
CLOSE
OPEN "A:\MONEY.DAT" FOR OUTPUT AS #2
PRINT #2, 3000
CLOSE
OPEN "A:\ENEMY.DAT" FOR OUTPUT AS #3
PRINT #3, 1750
CLOSE
OPEN "A:\LEVEL.DAT" FOR OUTPUT AS #4
PRINT #4, 1
CLOSE

continue:
OPEN "A:\PIKACHU.DAT" FOR INPUT AS #1
INPUT #1, pik
G = pik
CLOSE
OPEN "A:\MONEY.DAT" FOR INPUT AS #2
INPUT #2, cash
CLOSE
OPEN "A:\ENEMY.DAT" FOR INPUT AS #3
INPUT #3, bul
I = bul
CLOSE
OPEN "A:\LEVEL.DAT" FOR INPUT AS #4
INPUT #4, level
CLOSE

starts:
PRINT "Are you ready??? Press any key to begin."
SLEEP 9999
C = 30
D = 10
E = 30
F = 20
H$ = "NRM"
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
IF G > pik THEN G = pik
IF I > 2000 THEN I = 2000
aa$ = ""
bb$ = ""
IF G < pik * .5 THEN aa$ = "    « HP"
IF G < pik * .25 THEN aa$ = "    ¬ HP"
IF I < bul * .5 THEN bb$ = "    « HP"
IF I < bul * .25 THEN bb$ = "    ¬ HP"
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
PRINT "0 STRUGGLE     - NRM (NO MOVES)"
PRINT
PRINT "A RULES        - HOW TO PLAY"
PRINT
PRINT "B FORFEIT      - LOSE IMMEDIATELY"
PRINT
PRINT "C STORE        - BUY ITEMS"
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
IF UCASE$(B$) = "0" THEN GOTO struggle
IF UCASE$(B$) = "A" THEN GOTO rules
IF UCASE$(B$) = "B" THEN GOTO losea
IF UCASE$(B$) = "C" THEN GOTO store
LOOP

shock:
IF C < 1 THEN GOTO errora
IF H$ = "SLP" THEN GOTO slp
CLS
PRINT "Pikachu used THUNDERSHOCK!"
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
IF D < 1 THEN GOTO errora
IF H$ = "SLP" THEN GOTO slp
CLS
PRINT "Pikachu used THUNDER!"
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
IF E < 1 THEN GOTO errora
IF H$ = "SLP" THEN GOTO slp
CLS
PRINT "Pikachu used QUICK ATTACK!"
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
IF F < 1 THEN GOTO errora
IF H$ = "SLP" THEN GOTO slp
CLS
PRINT "Pikachu used SLAM!"
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
IF G = pik THEN GOTO noeffect
K = K - 1
GA = G
G = G + 50
IF G > pik THEN G = pik
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
IF G = pik THEN GOTO noeffect
N = N - 1
GB = G
G = G + 20
IF G > pik THEN G = pik
GBB = G - GB
PRINT "Pikachu gained"; GBB; "HP!"
PLAY "T250O2L8CCL64<CDEFGAB>CDEFGAB>CDEFGAB>C"
GOTO item

hyper:
CLS
IF X < 1 THEN GOTO errorc
IF G = pik THEN GOTO noeffect
X = X - 1
GC = G
G = G + 200
IF G > pik THEN G = pik
GCC = G - GC
PRINT "Pikachu gained"; GCC; "HP!"
PLAY "T250O2L8CCL64<CDEFGAB>CDEFGAB>CDEFGAB>C"
GOTO item

store:
OPEN "A:\MONEY.DAT" FOR INPUT AS #2
storea:
CLS
PRINT "Welcome."
PRINT "Money -"; cash
PRINT
PRINT ""
PRINT "1 Potion       - 300  - +20 HP"
PRINT "2 Super Potion - 700  - +50 HP"
PRINT "3 Hyper Potion - 1500 - +200 HP"
PRINT "4 Full Heal    - 600  - ERASE SPECIAL STATUS"
PRINT "5 Ether        - 3250 - +10 PP"
PRINT "6 HP Up        - 9800 - MAX HP +23"
PRINT "7 Main Menu"
DO
buy$ = INPUT$(1)
IF UCASE$(buy$) = "1" THEN GOTO buypotion
IF UCASE$(buy$) = "2" THEN GOTO buysuper
IF UCASE$(buy$) = "3" THEN GOTO buyhyper
IF UCASE$(buy$) = "4" THEN GOTO buyfull
IF UCASE$(buy$) = "5" THEN GOTO buyether
IF UCASE$(buy$) = "6" THEN GOTO buyhpup
IF UCASE$(buy$) = "7" THEN EXIT DO
LOOP
CLOSE #2
GOTO begin

buypotion:
CLS
INPUT "How many? (300 each) "; potionamount%
totala = potionamount% * 300
IF totala > cash THEN GOTO errord
cash = cash - totala
N = N + potionamount%
GOTO storea

buysuper:
CLS
INPUT "How many? (700 each) "; spotionamount%
totalb = spotionamount% * 700
IF totalb > cash THEN GOTO errord
cash = cash - totalb
K = K + spotionamount%
GOTO storea

buyhyper:
CLS
INPUT "How many? (1500 each) "; hpotionamount%
totalc = hpotionamount% * 1500
IF totalc > cash THEN GOTO errord
cash = cash - totalc
X = X + hpotionamount%
GOTO storea

buyfull:
CLS
INPUT "How many? (600 each) "; fullamount%
totald = fullamount% * 600
IF totald > cash THEN GOTO errord
cash = cash - totald
L = L + fullamount%
GOTO storea

buyether:
CLS
INPUT "How many? (3250 each) "; etheramount%
totale = etheramount% * 3250
IF totale > cash THEN GOTO errord
cash = cash - totale
M = M + etheramount%
GOTO storea

buyhpup:
CLS
INPUT "How many? (9800 each) "; hpamount%
totalf = hpamount% * 9800
IF totalf > cash THEN GOTO errord
cash = cash - totalf
pika = 23 * hpamount
pik = pik + pika
OPEN "A:\PIKACHU.DAT" FOR INPUT AS #1
INPUT #1, pik
CLOSE
GOTO storea

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

bottom:
PRINT "Pikachu - "; G, "Bulbasaur - "; I

bottoma:
SLEEP 3.5
GOTO begin

errora:
CLS
PRINT "No PP for this move!"
GOTO bottoma

errorb:
PLAY "O1L6C"
PRINT "Bulbasaur's paralyzed! It can't move!"
GOTO bottom

errorc:
PRINT "No more!"
GOTO bottoma

errord:
PRINT : PRINT "I'm sorry! You can't afford that many."
SLEEP 1
GOTO storea

win:
level = level + 1
cashb = G * 11
casha = cash + cashb
I = 0
pik = pik + 23
bul = bul + 21
PRINT : PRINT "Enemy Bulbasaur fainted!"
PRINT "You've won the Pok‚mon battle!"
PRINT "You have earned"; cashb; "money for winning!"
PRINT "Your level is now"; level; "!"
PRINT "HP: (PIK/BUL)"; G; I
PLAY "T120O3L4C<L8GGL4G+L2GL4B>C"
OPEN "A:\PIKACHU.DAT" FOR INPUT AS #1
INPUT #1, pik
CLOSE
OPEN "A:\MONEY.DAT" FOR INPUT AS #2
INPUT #2, casha
CLOSE
OPEN "A:\ENEMY.DAT" FOR INPUT AS #3
INPUT #3, bul
CLOSE
OPEN "A:\LEVEL.DAT" FOR INPUT AS #4
INPUT #4, level
CLOSE
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
GOTO bulbasaur

item:
PRINT "Pikachu - "; G
GOTO bulbasaur

noeffect:
PRINT "It will have no effect."
GOTO bottom

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
PRINT "does something different. They are erased when you save."
PRINT "Buy more from the store. ***USE THEM WISELY***"
PRINT
PRINT "MOVES"
PRINT "4 moves are available for damaging your opponent. Some are more"
PRINT "powerful than others. Also, some moves are not very effective"
PRINT "while others are super effective. Pay attention to the type!"
PRINT
PRINT "STORE"
PRINT "This is where you can get more items. The price and use are"
PRINT "listed to the right of each item. To accumulate more money, win"
PRINT "more battles. Also, HP Up is used immediately."
PRINT
PRINT "SAVING"
PRINT "A 3« floppy must be inserted in the drive to play and save."
PRINT "Only one save file can exist at a time. If you choose New Game,"
PRINT "the previous save file will be erased. To erase all save game"
PRINT "data, open A:\ and delete all .DAT files. New ones will be"
PRINT "created when you choose New Game. Don't erase PKMNBAT.EXE,"
PRINT "INSTRUC.TXT, RULES1.LIS, RULES2.LIS, or PKMNBATT.OBJ."
PRINT
PRINT "Press any key to return to the main menu."
SLEEP 1000
GOTO begin

again:
SLEEP 5
CLS
PRINT "Do you wish to play this game again?"
againc:
againb$ = INPUT$(1)
IF UCASE$(againb$) = "Y" THEN GOTO 1
IF UCASE$(againb$) = "N" THEN GOTO ends
GOTO againc

ends:
CLOSE #1
CLOSE #2
END

