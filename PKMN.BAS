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
PLAY ">L4D"
LOCATE 6, 8
PRINT "!"

1
setup = 0
PRINT "(N)ew Game START"
PRINT "(C)ontinue START *"
PRINT "(M)ake New START *"
PRINT
PRINT "(R)ules/Instructions"
PRINT "(D)elete Saved Game"
PRINT "(H)ack/Cheat"
PRINT "(E)xit"
PRINT
PRINT
PRINT "* Past files are required. If no past files exist, make new ones."
DO
start$ = INPUT$(1)
IF UCASE$(start$) = "N" THEN GOTO newfiles
IF UCASE$(start$) = "C" THEN GOTO continue
IF UCASE$(start$) = "R" THEN GOTO rulestwo
IF UCASE$(start$) = "D" THEN GOTO delete
IF UCASE$(start$) = "M" THEN GOTO newgame
IF UCASE$(start$) = "H" THEN GOTO cheat
IF UCASE$(start$) = "E" THEN END
LOOP

newgame:
CLS
PRINT "Creating...Do not close application."
PRINT : PRINT "Created - 00/12"
KILL "A:\PIKACHU.DAT"
LOCATE 3, 12
PRINT "1"
KILL "A:\MONEY.DAT"
LOCATE 3, 12
PRINT "2"
KILL "A:\ENEMY.DAT"
LOCATE 3, 12
PRINT "3"
KILL "A:\LEVEL.DAT"
LOCATE 3, 12
PRINT "4"
KILL "A:\WIN.DAT"
LOCATE 3, 12
PRINT "5"
KILL "A:\LOSE.DAT"
LOCATE 3, 12
PRINT "6"
OPEN "A:\PIKACHU.DAT" FOR OUTPUT AS #1
PRINT #1, 23
CLOSE
LOCATE 3, 12
PRINT "7"
OPEN "A:\MONEY.DAT" FOR OUTPUT AS #2
PRINT #2, 3000
CLOSE
LOCATE 3, 12
PRINT "8"
OPEN "A:\ENEMY.DAT" FOR OUTPUT AS #3
PRINT #3, 17
CLOSE
LOCATE 3, 12
PRINT "9"
OPEN "A:\LEVEL.DAT" FOR OUTPUT AS #4
PRINT #4, 1
CLOSE
LOCATE 3, 11
PRINT "10"
OPEN "A:\WIN.DAT" FOR OUTPUT AS #5
PRINT #5, 0
CLOSE
LOCATE 3, 12
PRINT "1"
OPEN "A:\LOSE.DAT" FOR OUTPUT AS #6
PRINT #6, 0
CLOSE
LOCATE 3, 12
PRINT "2"

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
i = bul
CLOSE
OPEN "A:\LEVEL.DAT" FOR INPUT AS #4
INPUT #4, level
CLOSE
OPEN "A:\WIN.DAT" FOR INPUT AS #5
INPUT #5, wins
CLOSE
OPEN "A:\LOSE.DAT" FOR INPUT AS #6
INPUT #6, losses
CLOSE

starts:
PRINT "Are you ready??? Press any key to begin."
SLEEP 9999
c = 30
D = 10
E = 30
F = 20
H$ = "NRM"
J$ = "NRM"
K = 0
IF level > 9 THEN K = 1
IF level > 19 THEN K = 2
L = 0
IF level > 9 THEN L = 1
IF level > 19 THEN L = 2
IF level > 29 THEN L = 3
IF level > 99 THEN L = 10
M = 0
IF level > 24 THEN M = 1
IF level > 49 THEN M = 2
IF level > 99 THEN M = 3
N = 1
IF level > 4 THEN N = 2
IF level > 9 THEN N = 3
IF level > 14 THEN N = 4
IF level > 19 THEN N = 5
X = 0
IF level > 24 THEN X = 1
YZ = 2
IF level > 3 THEN YZ = 1
IF level > 14 THEN YZ = 0
slpa = 3
solarbeam = 0
shockpow = 23
shockpow = (shockpow * level) / 10
shockpower = CLNG(shockpow)
thunderpow = 67
thunderpow = thunderpow * level / 10
thunderpower = CLNG(thunderpow)
quickpow = 45
quickpow = quickpow * level / 10
quickpower = CLNG(quickpow)
slampow = 91
slampow = slampow * level / 10
slampower = CLNG(slampow)
strpow = 20
strpow = strpow * level / 10
strpower = CLNG(strpow)

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
aa$ = ""
bb$ = ""
IF G < pik * .5 THEN aa$ = "    « HP"
IF G < pik * .25 THEN aa$ = "    ¬ HP"
IF i < bul * .5 THEN bb$ = "    « HP"
IF i < bul * .25 THEN bb$ = "    ¬ HP"
PRINT "PIKACHU -", G; H$, aa$
PRINT "BULBASAUR -", i; J$, bb$
PRINT "POK $:"; cash; " LEVEL:"; level; " WINS:"; wins; " LOSSES:"; losses
PRINT
COLOR 14
PRINT "1 THUNDERSHOCK - ELE                              <<< MOVES"
PRINT "", c
PRINT "2 THUNDER      - ELE"
PRINT "", D
PRINT "3 QUICK ATTACK - NRM"
PRINT "", E
PRINT "4 SLAM         - NRM"
PRINT "", F
COLOR 11
PRINT "5 POTION       - +20 HP                           <<< ITEMS"
PRINT "", N
PRINT "6 SUPER POTION - +50 HP"
PRINT "", K
PRINT "7 HYPER POTION - +200 HP"
PRINT "", X
PRINT "8 MAX POTION   - +ALL HP"
PRINT "", YZ
PRINT "9 FULL HEAL    - ERASE SPECIAL STATUS"
PRINT "", L
PRINT "0 ETHER        - RESTORE 10 PP"
PRINT "", M
COLOR 14
PRINT "A STRUGGLE     - NRM (OUT OF MOVES)"
COLOR 15
PRINT
PRINT "B OPTION MENU  - RULES, FORFEIT, AND ITEM STORE"
DO
B$ = INPUT$(1)
IF UCASE$(B$) = "1" THEN GOTO shock
IF UCASE$(B$) = "2" THEN GOTO thunder
IF UCASE$(B$) = "3" THEN GOTO qattack
IF UCASE$(B$) = "4" THEN GOTO slam
IF UCASE$(B$) = "5" THEN GOTO potion
IF UCASE$(B$) = "6" THEN GOTO spotion
IF UCASE$(B$) = "7" THEN GOTO hyper
IF UCASE$(B$) = "8" THEN GOTO max
IF UCASE$(B$) = "9" THEN GOTO fullheal
IF UCASE$(B$) = "0" THEN GOTO ether
IF UCASE$(B$) = "A" THEN GOTO struggle
IF UCASE$(B$) = "B" THEN GOTO mlist
LOOP

mlist:
CLS
PRINT "A RULES        - HOW TO PLAY"
PRINT
PRINT "B FORFEIT      - LOSE IMMEDIATELY"
PRINT
PRINT "C STORE        - BUY ITEMS"
PRINT
PRINT "D MAIN MENU    - RETURN TO MAIN MENU"
DO
xb$ = INPUT$(1)
IF UCASE$(xb$) = "A" THEN GOTO rules
IF UCASE$(xb$) = "B" THEN GOTO losea
IF UCASE$(xb$) = "C" THEN GOTO store
IF UCASE$(xb$) = "D" THEN GOTO begin
LOOP

shock:
IF c < 1 THEN GOTO errora
IF H$ = "SLP" THEN GOTO slp
CLS
PRINT "Pikachu used THUNDERSHOCK!"
c = c - 1
IF critical = 1 THEN GOTO cshock
GOTO shockb
cshock:
i = i - shockpower
PRINT "It's a Critical Hit!"
shockb:
IF J$ = "PRZ" THEN GOTO shocka
IF prz = 1 THEN J$ = "PRZ"
IF prz = 1 THEN PRINT "Enemy Bulbasaur was paralyzed!"
shocka:
i = i - shockpower
PLAY "O1L64CEL32G"
IF i < 1 THEN GOTO win
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
i = i - thunderpower
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
i = i - thunderpower
PLAY "O1L64CEL32G"
IF i < 1 THEN GOTO win
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
i = i - quickpower
PRINT "It's a Critical Hit!"
qattackb:
i = i - quickpower
PLAY "O1L64CEL32G"
IF i < 1 THEN GOTO win
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
i = i - slampower
PRINT "It's a Critical Hit!"
slamb:
i = i - slampower
PLAY "O1L64CEL32G"
IF i < 1 THEN GOTO win
GOTO moved

struggle:
IF 0 = c + D + E + F THEN GOTO strugglea
GOTO begin
strugglea:
IF H$ = "SLP" THEN GOTO slp
CLS
PRINT "Pikachu used STRUGGLE!"
IF critical = 1 THEN GOTO cstruggle
GOTO struggleb
cstruggle:
i = i - strpower
PRINT "It's a Critical Hit!"
struggleb:
i = i - strpower
PLAY "O1L64CEL32G"
PRINT "Pikachu got hit by recoil."
G = G - strpower / 8
IF critical = 1 THEN G = G - 8
IF G < 1 THEN GOTO lose
IF i < 1 THEN GOTO win
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
7 IF c = 30 THEN GOTO noeffecta
c = c + 10
IF c > 30 THEN c = 30
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

max:
CLS
IF YZ < 1 THEN GOTO errorc
IF G = pik THEN GOTO noeffect
N = N - 1
Pok = G
G = pik
Pok = pik - Pok
PRINT "Pikachu gained"; Pok; "HP!"
PLAY "T250O2L8CCL64<CDEFGAB>CDEFGAB>CDEFGAB>C"
GOTO item


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
PRINT "4 Max Potion   - 8000 - +ALL HP"
PRINT "5 Full Heal    - 600  - ERASE SPECIAL STATUS"
PRINT "6 Ether        - 3250 - +10 PP"
PRINT "7 HP Up        - 9800 - MAX HP +53"
PRINT "8 Main Menu"
DO
buy$ = INPUT$(1)
3 IF UCASE$(buy$) = "1" THEN GOTO buypotion
IF UCASE$(buy$) = "2" THEN GOTO buysuper
IF UCASE$(buy$) = "3" THEN GOTO buyhyper
IF UCASE$(buy$) = "5" THEN GOTO buyfull
IF UCASE$(buy$) = "6" THEN GOTO buyether
IF UCASE$(buy$) = "7" THEN GOTO buyhpup
IF UCASE$(buy$) = "8" THEN EXIT DO
LOOP
CLOSE #2
GOTO begin

buypotion:
CLS
INPUT "How many? (300 each) "; potionamount
totala = potionamount * 300
IF totala > cash THEN GOTO errord
cash = cash - totala
N = N + potionamount
GOTO storea

buysuper:
CLS
INPUT "How many? (700 each) "; spotionamount
totalb = spotionamount * 700
IF totalb > cash THEN GOTO errord
cash = cash - totalb
K = K + spotionamount
GOTO storea

buyhyper:
CLS
INPUT "How many? (1500 each) "; hpotionamount
totalc = hpotionamount * 1500
IF totalc > cash THEN GOTO errord
cash = cash - totalc
X = X + hpotionamount
GOTO storea

buyfull:
CLS
INPUT "How many? (600 each) "; fullamount
totald = fullamount * 600
IF totald > cash THEN GOTO errord
cash = cash - totald
L = L + fullamount
GOTO storea

buyether:
CLS
INPUT "How many? (3250 each) "; etheramount
totale = etheramount * 3250
IF totale > cash THEN GOTO errord
cash = cash - totale
M = M + etheramount
GOTO storea

buyhpup:
CLS
PRINT "(This will take effect after the battle.)"
INPUT "How many? (9800 each) "; hpamount
totalf = hpamount * 9800
IF totalf > cash THEN GOTO errord
cash = cash - totalf
pika = 53 * hpamount
pik = pik + pika
OPEN "A:\PIKACHU.DAT" FOR OUTPUT AS #1
PRINT #1, pik
CLOSE
GOTO storea

buymax:
CLS
INPUT "How many? (8000 each) "; maxamount
totalg = maxamount * 8000
IF totalg > cash THEN GOTO errord
cash = cash - totalg
YZ = YZ + maxamount
GOTO storea

Bulbasaur:
PRINT
IF solarbeam = 1 THEN GOTO three
IF bulbattack = 4 THEN GOTO zero
IF bulbattack = 1 THEN GOTO one
IF bulbattack = 2 THEN GOTO two
IF bulbattack = 3 THEN GOTO three

zero:
tacklepow = (57 * bul) / 350
tacklepower = CLNG(tacklepow)
PRINT "Enemy Bulbasaur used TACKLE!"
IF J$ = "PRZ" THEN GOTO tackle
GOTO tackled
tackle:
IF przatk = 1 THEN GOTO errorb
tackled:
G = G - tacklepower
IF G < 1 THEN GOTO lose
IF hitmissa = 1 THEN GOTO missb
IF criticalbulb = 1 THEN GOTO ctackle
GOTO tacklea
ctackle:
G = G - tacklepower
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
razorpow = (94 * bul) / 350
razorpower = CLNG(razorpow)
PRINT "Enemy Bulbasaur used RAZOR LEAF!"
IF J$ = "PRZ" THEN GOTO razord
GOTO leaf
razord:
IF przatk = 1 THEN GOTO errorb
leaf:
G = G - razorpower
IF G < 1 THEN GOTO lose
IF hitmissa = 1 THEN GOTO missb
IF criticalbulb = 1 THEN GOTO cleaf
GOTO leafa
cleaf:
G = G - razorpower
PRINT "It's a Critical Hit!"
leafa:
PLAY "O1L64CEL32G"
IF G < 1 THEN GOTO lose
GOTO bottom

three:
solarpow = (204 * bul) / 350
solarpower = CLNG(solarpow)
IF solarbeam = 0 THEN GOTO beamload
PRINT "Enemy Bulbasaur used SOLARBEAM!"
PLAY "O1L64CEL32G"
solarbeam = 0
IF J$ = "PRZ" THEN GOTO beamb
GOTO beam
beamb:
IF przatk = 1 THEN GOTO errorb
beam:
G = G - solarpower
IF G < 1 THEN GOTO lose
IF hitmissa = 1 THEN GOTO missb
IF criticalbulb = 1 THEN GOTO cbeam
GOTO beama
cbeam:
G = G - solarpower
PRINT "It's a Critical Hit!"
beama:
IF G < 1 THEN GOTO lose
GOTO bottom
beamload:
PRINT "Enemy Bulbasaur is taking in sunlight!"
solarbeam = solarbeam + 1

bottom:
PRINT "Pikachu - "; G, "Bulbasaur - "; i

bottoma:
SLEEP 3.5
GOTO begin

errora:
CLS
PRINT "No PP for this move!"
GOTO bottoma

errorb:
PLAY "T250O4L64CP64EP64CP64EP64CP64EP64CP64EP64CP64EP64C"
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
wins = wins + 1
level = level + 1
cashb = G * 3
casha = cash + cashb
i = 0
pik = pik + 23
bul = bul + 7
PRINT : PRINT "Enemy Bulbasaur fainted!"
PRINT "You've won the Pok‚mon battle!"
PRINT "You have earned"; cashb; "Pok‚ Dollars for winning!"
PRINT "Your level is now"; level; "!"
PRINT "HP: (PIK/BUL)"; G; i
PLAY "T120O3L4C<L8GGL4G+L2GL4B>C"
PRINT "Press any key to save."
SLEEP 1000
CLS
PRINT "Saving...Do not close application."
PRINT : PRINT "Saved - 0/5"
OPEN "A:\PIKACHU.DAT" FOR OUTPUT AS #1
PRINT #1, pik
CLOSE
LOCATE 3, 9
PRINT "1"
OPEN "A:\MONEY.DAT" FOR OUTPUT AS #2
PRINT #2, casha
CLOSE
LOCATE 3, 9
PRINT "2"
OPEN "A:\ENEMY.DAT" FOR OUTPUT AS #3
PRINT #3, bul
CLOSE
LOCATE 3, 9
PRINT "3"
OPEN "A:\LEVEL.DAT" FOR OUTPUT AS #4
PRINT #4, level
CLOSE
LOCATE 3, 9
PRINT "4"
OPEN "A:\WIN.DAT" FOR OUTPUT AS #5
PRINT #5, wins
CLOSE
LOCATE 3, 9
PRINT "5"
PLAY "O3L32C<G>C>L8E"
PRINT "Game saved. Press any key."
GOTO again

lose:
G = 0
PRINT : PRINT "Pikachu fainted!"
losea:
bul = bul + 24
cash = cash / 2
cash = CLNG(cash)
losses = losses + 1
PRINT "You've lost the Pok‚mon battle!"
PRINT "HP: (PIK/BUL)"; G; i
PLAY "T150O1L4L4CCL8CL4CDL8CL4CL8<BL4BL8B-L2B"
PRINT "Press any key to save"
SLEEP 1000
CLS
PRINT "Saving...Do not close application."
PRINT : PRINT "Saved - 0/3"
OPEN "A:\MONEY.DAT" FOR OUTPUT AS #2
PRINT #2, cash
CLOSE
LOCATE 3, 9
PRINT "1"
OPEN "A:\ENEMY.DAT" FOR OUTPUT AS #3
PRINT #3, bul
CLOSE
LOCATE 3, 9
PRINT "2"
OPEN "A:\LOSE.DAT" FOR OUTPUT AS #6
PRINT #6, losses
CLOSE
LOCATE 3, 9
PRINT "3"
PLAY "O3L32C<G>C>L8E"
PRINT "Game saved. Press any key."
GOTO again

moved:
GOTO Bulbasaur

item:
PRINT "Pikachu - "; G
GOTO Bulbasaur

noeffect:
PRINT "It will have no effect."
GOTO bottom

miss:
PRINT "The attack missed!"
PLAY "O1L4C"
GOTO Bulbasaur

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
GOTO Bulbasaur
aslp:
H$ = "NRM"
PRINT "Pikachu woke up!"
slpa = 3
GOTO Bulbasaur

rulestwo:
setup = 1
GOTO rules

newfiles:
CLS
PRINT "Creating...Do not close application."
PRINT : PRINT "Created - 0/6"
OPEN "A:\PIKACHU.DAT" FOR OUTPUT AS #1
PRINT #1, 23
CLOSE
LOCATE 3, 11
PRINT "1"
OPEN "A:\MONEY.DAT" FOR OUTPUT AS #2
PRINT #2, 3000
CLOSE
LOCATE 3, 11
PRINT "2"
OPEN "A:\ENEMY.DAT" FOR OUTPUT AS #3
PRINT #3, 17
CLOSE
LOCATE 3, 11
PRINT "3"
OPEN "A:\LEVEL.DAT" FOR OUTPUT AS #4
PRINT #4, 1
CLOSE
LOCATE 3, 11
PRINT "4"
OPEN "A:\WIN.DAT" FOR OUTPUT AS #5
PRINT #5, 0
CLOSE
LOCATE 3, 11
PRINT "5"
OPEN "A:\LOSE.DAT" FOR OUTPUT AS #6
PRINT #6, 0
CLOSE
LOCATE 3, 11
PRINT "6"
PLAY "O2T120L16C>L8C"
PRINT "Game created. Press any key."
SLEEP 1000
CLS
GOTO continue

delete:
CLS
PRINT "Deleting...Do not close application."
PRINT : PRINT "Deleted - 0/6"
KILL "A:\PIKACHU.DAT"
LOCATE 3, 11
PRINT "1"
KILL "A:\MONEY.DAT"
LOCATE 3, 11
PRINT "2"
KILL "A:\ENEMY.DAT"
LOCATE 3, 11
PRINT "3"
KILL "A:\LEVEL.DAT"
LOCATE 3, 11
PRINT "4"
KILL "A:\WIN.DAT"
LOCATE 3, 11
PRINT "5"
KILL "A:\LOSE.DAT"
LOCATE 3, 11
PRINT "6"
FOR c% = 1000 TO 50 STEP -5
SOUND c%, c% / 3000
NEXT c%
PLAY "O1T120L4C"
PRINT "Game deleted. Press any key."
SLEEP 1000
CLS
GOTO 1

cheat:
CLS
PRINT "You want to cheat, do you? What do you want to edit?"
PRINT "Please edit ALL values."
PRINT
PRINT "# EDITABLES        GAMEPLAY EFFECTS"
PRINT "1 Your Max HP    - How much time you can stay in"
PRINT "2 Enemy's Max HP - How much time Bulbasaur can stay in"
PRINT "3 Your Money     - How much you can buy"
PRINT "4 Your Level     - How much damage you inflict"
PRINT "5 Win Count      - Nothing"
PRINT "6 Loss Count     - Nothing"
PRINT
PRINT "7 Leave and save changes"
PRINT "8 Leave and not save changes"
DO
ch$ = INPUT$(1)
IF UCASE$(ch$) = "1" THEN GOTO hpedit
IF UCASE$(ch$) = "2" THEN GOTO buledit
IF UCASE$(ch$) = "3" THEN GOTO monedit
IF UCASE$(ch$) = "4" THEN GOTO levedit
IF UCASE$(ch$) = "5" THEN GOTO winedit
IF UCASE$(ch$) = "6" THEN GOTO losedit
IF UCASE$(ch$) = "7" THEN GOTO savecheat
IF UCASE$(ch$) = "8" THEN GOTO aaaaaa
LOOP
hpedit:
CLS
INPUT "Your HP: ", valone
GOTO cheat
buledit:
CLS
INPUT "Enemy's HP: ", valthr
GOTO cheat
monedit:
CLS
INPUT "Your Money: ", valtwo
GOTO cheat
levedit:
CLS
INPUT "Your Level: ", valfou
GOTO cheat
winedit:
CLS
INPUT "Win Count: ", valfiv
GOTO cheat
losedit:
CLS
INPUT "Lose Count: ", valsix
GOTO cheat
savecheat:
CLS
PRINT "Saving...Do not close application."
PRINT : PRINT "Saved - 0/6"
OPEN "A:\PIKACHU.DAT" FOR OUTPUT AS #1
PRINT #1, valone
CLOSE
LOCATE 3, 9
PRINT "1"
OPEN "A:\MONEY.DAT" FOR OUTPUT AS #2
PRINT #2, valtwo
CLOSE
LOCATE 3, 9
PRINT "2"
OPEN "A:\ENEMY.DAT" FOR OUTPUT AS #3
PRINT #3, valthr
CLOSE
LOCATE 3, 9
PRINT "3"
OPEN "A:\LEVEL.DAT" FOR OUTPUT AS #4
PRINT #4, valfou
CLOSE
LOCATE 3, 9
PRINT "4"
OPEN "A:\WIN.DAT" FOR OUTPUT AS #5
PRINT #5, valfiv
CLOSE
LOCATE 3, 9
PRINT "5"
OPEN "A:\LOSE.DAT" FOR OUTPUT AS #6
PRINT #6, valsix
CLOSE
LOCATE 3, 9
PRINT "6"
PLAY "O2T120L16C>L8C"
PRINT "Cheats saved. Press any key."
SLEEP 1000
CLS
GOTO 1
aaaaaa:
CLS
GOTO 1

rules:
CLS
OPEN "A:\RULES1.LIS" FOR INPUT AS #7
INPUT #7, rulesaa$
INPUT #7, rulesab$
INPUT #7, rulesac$
INPUT #7, rulesad$
INPUT #7, rulesae$
INPUT #7, rulesaf$
INPUT #7, rulesag$
INPUT #7, rulesah$
INPUT #7, rulesai$
INPUT #7, rulesaj$
INPUT #7, rulesak$
INPUT #7, rulesal$
INPUT #7, rulesam$
INPUT #7, rulesan$
INPUT #7, rulesao$
CLOSE
OPEN "A:\RULES2.LIS" FOR INPUT AS #8
INPUT #8, rulesba$
INPUT #8, rulesbb$
INPUT #8, rulesbc$
INPUT #8, rulesbd$
INPUT #8, rulesbe$
INPUT #8, rulesbf$
INPUT #8, rulesbg$
INPUT #8, rulesbh$
INPUT #8, rulesbi$
INPUT #8, rulesbj$
INPUT #8, rulesbk$
INPUT #8, rulesbl$
INPUT #8, rulesbm$
INPUT #8, rulesbn$
INPUT #8, rulesbo$
INPUT #8, rulesbp$
INPUT #8, rulesbq$
INPUT #8, rulesbr$
INPUT #8, rulesbs$
INPUT #8, rulesbt$
INPUT #8, rulesbu$
INPUT #8, rulesbv$
INPUT #8, rulesbw$
INPUT #8, rulesbx$
INPUT #8, rulesby$
INPUT #8, rulesbz$
INPUT #8, rulesca$
INPUT #8, rulescb$
INPUT #8, rulescc$
INPUT #8, rulescd$
INPUT #8, rulesce$
INPUT #8, rulescf$
INPUT #8, rulescg$
INPUT #8, rulesch$
INPUT #8, rulesci$
CLOSE
PRINT rulesaa$
PRINT rulesab$
PRINT rulesac$
PRINT rulesad$; ", "; rulesae$; ", "; rulesaf$
PRINT rulesag$
PRINT rulesah$
PRINT rulesai$
PRINT rulesaj$
PRINT rulesak$
PRINT rulesal$
PRINT rulesam$
PRINT rulesan$
PRINT rulesao$
SLEEP 9999
CLS
PRINT rulesba$
PRINT rulesbb$
PRINT rulesbc$
PRINT rulesbd$
PRINT rulesbe$
PRINT rulesbf$
PRINT rulesbg$; ", "; rulesbh$; ", "; rulesbi$
PRINT rulesbj$
PRINT rulesbk$
PRINT rulesbl$
PRINT rulesbm$
PRINT rulesbn$
PRINT rulesbo$
PRINT rulesbp$
PRINT rulesbq$; ", "; rulesbr$
PRINT rulesbs$; ", "; rulesbt$; ", "; rulesbu$; ", "; rulesbv$
PRINT rulesbw$; ", "; rulesbx$; ", "; rulesby$
PRINT rulesbz$; ", "; rulesca$
PRINT rulescb$; ", "; rulescc$
PRINT rulescd$; ", "; rulesce$
PRINT rulescf$
PRINT rulescg$
PRINT rulesch$
PRINT rulesci$
SLEEP 1000
CLS
IF setup = 1 THEN GOTO 1
GOTO begin

again:
SLEEP 500
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
CLOSE #3
CLOSE #4
CLOSE #5
CLOSE #6
END
                                 

