'
'**********************************************************************
'
'           Copyright (c) 1997-2013 Jeffrey Carpenter
'                                   <jeffrey.carp@gmail.com>
'           All rights reserved
'
'           Special thanks to David Hartfield
'
'					Press F5 to begin the game!
'
'**********************************************************************
DECLARE SUB intro ()
DECLARE SUB menu ()
DECLARE SUB playgame ()
DECLARE SUB instructions ()
DECLARE SUB goodbye ()
DECLARE SUB About ()
DECLARE SUB level1 ()
DECLARE SUB level2 ()
DECLARE SUB level3 ()
DECLARE SUB boss ()
DECLARE SUB ending ()
DECLARE SUB differboss ()

'intro
menu

SUB About
'Shows information about program

CLS
COLOR 2
' <center>
PRINT "*About Cyber Quest*"
PRINT
PRINT "Cyber Quest (c) 1997"
PRINT
COLOR 11: PRINT "Created By: Lightning Games, inc."
PRINT "Art Director: Jeff Carpenter"
PRINT "Character Movement: Jeff Carpenter"
PRINT "Music: Jeff Carpenter"
PRINT "Sound Effects: Jeff Carpenter"
PRINT "Special Thanks To: David Hartfield"
PRINT
COLOR 20: PRINT "E-Mail @ jeffac3000@aol.com"
PRINT ""
COLOR 15: PRINT "Press any key to continue..."
'</center>

DO
LOOP WHILE INKEY$ = ""

menu
END SUB

SUB boss
CLS
PRINT "Suddenly, you walk through the door of Level 3 and the door was really a trap!"
PRINT
PRINT "You fell into a cave where you then saw a big, ugly face aproach you."
PRINT
PRINT "Yikes!"
SLEEP 500
CLS
GOTO finallevel

finallevel:
x = 27
y = 40
uad = 17
place = 17
j = j + 1
uad2 = 13
place2 = 15
j2 = j2 + 1
place3 = 20
uad3 = 22
j3 = j3 + 1
place4 = 7
uad4 = 7
j4 = j4 + 1
door$ = CHR$(8)

SCREEN 12

mainboss:

DO
IF x = uad AND y = place THEN
END
END IF

IF press$ = CHR$(32) THEN
ending
END IF

IF j = 500 THEN
j = 1
END IF
IF j = 1 THEN ELSE 42
LOCATE uad, place: PRINT " "
IF code = 2 THEN 32
IF place = 80 THEN
32 place = place - 1
code = 2
ELSE
place = place + 1
END IF

IF place = 1 THEN
code = 1
END IF
LOCATE uad, place: PRINT CHR$(157)
42

IF x = uad2 AND y = place2 THEN
END
END IF

IF j2 = 500 THEN
j2 = 1
END IF
IF j2 = 1 THEN ELSE 44
LOCATE uad2, place2: PRINT " "
IF code2 = 2 THEN 33
IF place2 = 80 THEN
33 place2 = place2 - 1
code2 = 2
ELSE
place2 = place2 + 1
END IF

IF place2 = 1 THEN
code2 = 1
END IF
LOCATE uad2, place2: PRINT CHR$(157)
44

IF x = uad3 AND y = place3 THEN
END
END IF

IF j3 = 500 THEN
j3 = 1
END IF
IF j3 = 1 THEN ELSE 444
LOCATE uad3, place3: PRINT " "
IF code3 = 2 THEN 333
IF place3 = 80 THEN
333 place3 = place3 - 1
code3 = 2
ELSE
place3 = place3 + 1
END IF

IF place3 = 1 THEN
code3 = 1
END IF
LOCATE uad3, place3: PRINT CHR$(157)
444

IF x = uad4 AND y = place4 THEN
END
END IF

IF j4 = 500 THEN
j4 = 1
END IF
IF j4 = 1 THEN ELSE 4444
LOCATE uad4, place4: PRINT " "
IF code4 = 2 THEN 3333
IF place4 = 80 THEN
3333 place4 = place4 - 1
code4 = 2
ELSE
place4 = place4 + 1
END IF

IF place4 = 1 THEN
code4 = 1
END IF
LOCATE uad4, place4: PRINT CHR$(157)
4444

LINE (0, 0)-(639, 465), 2, B 'Draws a box for boundary lines
COLOR 14: LOCATE 2, 40: PRINT door$
IF x = 2 AND y = 40 THEN
' Gambas fix: PLAY "abcdef"
ending
END IF

press$ = INKEY$

LOCATE x, y: PRINT CHR$(1)

IF press$ = CHR$(0) + CHR$(72) THEN
LOCATE
LOCATE x, y: PRINT " "
x = x - 1
GOTO mainboss
END IF

IF press$ = CHR$(0) + CHR$(75) THEN
LOCATE
LOCATE x, y: PRINT " "
y = y - 1
GOTO mainboss

END IF
IF press$ = CHR$(0) + CHR$(77) THEN
LOCATE
LOCATE x, y: PRINT " "
y = y + 1
GOTO mainboss
END IF

IF press$ = CHR$(0) + CHR$(80) THEN
LOCATE
LOCATE x, y: PRINT " "
x = x + 1
GOTO mainboss
END IF

IF press$ = CHR$(27) THEN
END
END IF

IF x = 28 THEN
LOCATE
LOCATE x, y: PRINT " "
x = x - 1
GOTO mainboss
END IF

IF y = 80 THEN
LOCATE
LOCATE x, y: PRINT " "
y = y - 1
GOTO mainboss
END IF

IF y = 1 THEN
LOCATE
LOCATE x, y: PRINT " "
y = y + 1
GOTO mainboss
END IF

IF x = 1 THEN
LOCATE
LOCATE x, y: PRINT " "
x = x + 1
GOTO mainboss
ELSE GOTO mainboss
END IF

LOOP

END SUB

SUB differboss
boss
END SUB

SUB ending
CLS
PRINT "You beat Cyber Quest -- good job!"
PRINT
PRINT "For that, I'll tell you the secret to Level 2"
PRINT
PRINT "If you touch the spike that is by itself in the corner, you'll skip"
PRINT "Level 3 and go straight to the Boss Level."
PRINT
PRINT "This isn't the only secret to be found -- each level has their own."
' Gambas fix: PLAY "aecg"
PRINT
PRINT
PRINT "Press any key to exit..."
SLEEP 999
SYSTEM
END SUB

SUB goodbye
SCREEN 0 'Text mode
CLS
PRINT ""
COLOR 20, 0: LOCATE 8, 31: PRINT "Thank you for playing Cyber Quest!"
COLOR 2, 0: LOCATE 20, 1: PRINT "Cyber Quest (c) 1997 Lightning Games, Inc."
SLEEP
SYSTEM
END SUB

SUB Instructions
CLS
COLOR 2: LOCATE 2, 1: PRINT "Instructions: "
PRINT ""
COLOR 14, 0: PRINT "The object of the game is to beat each level by obtaining"
COLOR 14, 0: PRINT "each key, unlocking the door to the next level. You will be"
COLOR 14, 0: PRINT "faced with a Boss at the end of the game. You are"; CHR$(1);
COLOR 14, 0: PRINT "and control him by using the arrow keys."
PRINT ""
COLOR 20: PRINT "Note:"
COLOR 2, 0: PRINT "Each level holds a secret -- look at everything!"
PRINT ""
PRINT ""
PRINT "Objects:"
PRINT ""

COLOR 3: PRINT ". "; "Use the key to unlock the passage way onto the next level." ' . = 952
PRINT ""
COLOR 7: PRINT CHR$(1); " "; "Your character"
PRINT ""
COLOR 4: PRINT "*"; " "; "These are deadly spikes!"
COLOR 14: PRINT CHR$(8); " "; "The passage way door, unlocked with keys."
PRINT ""
COLOR 2: PRINT "Press any key to continue..."
DO
LOOP WHILE INKEY$ = ""
' Gambas fix: DO LOOP WHILE INKEYS = ""
CLS
COLOR 2: PRINT "U"; " "; "A blocking character" ' U = 987
PRINT ""
COLOR 14: PRINT CHR$(2); " "; "Demons from Hell -- watch out!"
PRINT ""
COLOR 15: PRINT CHR$(5); " "; "Cannot be slain with a sword"
PRINT ""
COLOR 6: PRINT "A"; " "; "A sword that can be used to slay your enemies."
PRINT ""
COLOR 6: PRINT "x"; " "; "A boat used to get across rivers."
PRINT ""
COLOR 8: PRINT "o"; " "; "Bombs used for ... "; CHR$(5)
PRINT
PRINT
PRINT "Menu:"
PRINT ""
COLOR 2
PRINT "Play Cyber Quest"
PRINT ""
PRINT "Instructions"
PRINT ""
PRINT "About Cyber Quest"
PRINT ""
PRINT "Quit"
PRINT ""
COLOR 2, 0: PRINT "Press any key to continue..."
DO
LOOP WHILE INKEY$ = ""
' Gambas fix: LOOP WHILE INKEYS = ""
CLS
menu
END SUB

SUB intro
RANDOMIZE TIMER
SCREEN 9 'Mode 12 (15 colors)
FOR t = 1 TO 4000
t = INT(RND * 15) + 1
r = RND * 640
d = RND * 350
PSET (r, d), c
NEXT t
FOR t = 1 TO 31
c = INT(RND * 15) + 1
COLOR c
LOCATE 13, 33: PRINT "Cyber Quest"
NEXT t
' Gambas fix: PLAY "<<<<113mlbebdbcbebdbcbebdbcbefedcc>>>>"
CLS
menu
END SUB

SUB level1
CLS
SCREEN 12 'Mode 12 (15 colors)
x = 2
gotkey$ = "no"
y = 2
COLOR 3: LOCATE 9, 10: PRINT "."

main:
IF x = 16 AND y = 78 AND gotkey$ = "no" THEN
' Gambas fix: SOUND 45, 1
y = y - 1
x = x - 1
END IF

IF x = 9 AND y = 10 THEN 'Character is on the key, so make it disappear
LOCATE 9, 10:
gotkey$ = "yes"
END IF

LINE (0, 0)-(639, 465), 2, B 'Dras a box for boundary lines
LOCATE x, y
COLOR 15: PRINT CHR$(1) 'Happy face
COLOR 4: LOCATE 5, 15: PRINT "*"
COLOR 4: LOCATE 15, 11: PRINT "*"
COLOR 4: LOCATE 10, 34: PRINT "*"
COLOR 4: LOCATE 25, 25: PRINT "*"
COLOR 4: LOCATE 23, 56: PRINT "*"
COLOR 4: LOCATE 8, 64: PRINT "*"
COLOR 2: LOCATE 15, 79: PRINT "U"
COLOR 2: LOCATE 17, 79: PRINT "U"
COLOR 2: LOCATE 16, 80: PRINT "U"
COLOR 14: LOCATE 16, 78: PRINT CHR$(8)
COLOR 14: LOCATE 15, 23: PRINT CHR$(2)
COLOR 14: LOCATE 10, 6: PRINT CHR$(2)

IF x = 5 AND y = 15 THEN SLEEP 1: menu
IF x = 15 AND y = 11 THEN SLEEP 1: menu
IF x = 10 AND y = 34 THEN SLEEP 1: menu
IF x = 25 AND y = 25 THEN SLEEP 1: menu
IF x = 23 AND y = 56 THEN SLEEP 1: menu
IF x = 8 AND y = 64 THEN SLEEP 1: menu
IF x = 15 AND y = 23 THEN SLEEP 1: menu
' Gambas fix: IF x = 5 AND y = 15 THEN : PLAY "116mfccc > cc": SLEEP 1: menu
' Gambas fix: IF x = 15 AND y = 11 THEN : PLAY "116mbccc > cc": SLEEP 1: menu
' Gambas fix: IF x = 10 AND y = 34 THEN : PLAY "116mbccc > cc": SLEEP 1: menu
' Gambas fix: IF x = 25 AND y = 25 THEN : PLAY "116mbccc > cc": SLEEP 1: menu
' Gambas fix: IF x = 23 AND y = 56 THEN : PLAY "116mbccc > cc": SLEEP 1: menu
' Gambas fix: IF x = 8 AND y = 64 THEN : PLAY "116mbccc > cc": SLEEP 1: menu
' Gambas fix: IF x = 15 AND y = 23 THEN : PLAY "116mbccc > cc": SLEEP 1: menu
IF x = 16 AND y = 79 THEN
GOSUB level
END IF
IF x = 15 AND y = 79 THEN y = y - 1
' Gambas fix: IF x = 15 AND y = 79 THEN y = y - 1: SOUND 45, 1

IF x = 17 AND y = 79 THEN y = y - 1
' Gambas fix: IF x = 17 AND y = 79 THEN : y = y - 1: SOUND 45, 1

IF x = 16 AND  y = 78 AND gotkey$ = "yes" THEN
IF press$ = CHR$(42) THEN level2 'Secret

LOCATE
LOCATE 16, 78: PRINT CHR$(0)
END IF

IF x = 10 AND y = 6 THEN SLEEP 1: menu
' Gambas fix: IF x = 10 AND y = 6 THEN : PLAY "116mbccc > cc": SLEEP 1: menu
press$ = INKEY$
IF press$ = CHR$(0) + CHR$(72) THEN
LOCATE
LOCATE x, y: PRINT " "
x = x - 1
GOTO main
END IF

IF press$ = CHR$(0) + CHR$(75) THEN
LOCATE
LOCATE x, y: PRINT " "
y = y - 1
GOTO main
END IF

IF press$ = CHR$(0) + CHR$(77) THEN
LOCATE
LOCATE x, y: PRINT " "
y = y + 1
GOTO main
END IF

IF press$ = CHR$(0) + CHR$(80) THEN
LOCATE
LOCATE x, y: PRINT " "
x = x + 1
GOTO main
END IF

IF press$ = CHR$(27) THEN SYSTEM

IF press$ = CHR$(42) THEN level2 'Secret

IF x = 28 THEN
LOCATE
LOCATE x, y: PRINT " "
x = x - 1
GOTO main
END IF

if y = 80 THEN
LOCATE
LOCATE x, y: PRINT " "
y = y - 1
GOTO main
END IF
IF y = 1 THEN
LOCATE
LOCATE x, y: PRINT " "
y = y + 1
GOTO main
END IF
IF x = 1 THEN
LOCATE
LOCATE x, y: PRINT " "
x = x + 1
GOTO main
ELSE GOTO main
END IF

level:
' Gambas fix: PLAY "aecg"
SLEEP 1
level2
END SUB

SUB level2
CLS
SCREEN 12
x = 2
y = 2
gotkey$ = "no"
gotsword$ = "no"
COLOR 3: LOCATE 27, 78: PRINT "."
COLOR 6: LOCATE 2, 67: PRINT "A"
COLOR 14: LOCATE 5, 34: PRINT CHR$(2)
COLOR 14: LOCATE 27, 77: PRINT CHR$(2)
main2:
IF x = 16 AND y = 78 AND gotkey$ = "no" THEN
' Gambas fix: SOUND 45, 1
y = y - 1
END IF

IF x = 27 AND y = 78 THEN
LOCATE
LOCATE 28, 78:
gotkey$ = "yes"
END IF

IF x = 2 AND y = 67 THEN
LOCATE
LOCATE 2, 67:
gotsword$ = "yes"
END IF

LINE (0, 0)-(639,465), 2, B 'Draws boundary lines
LOCATE x, y
COLOR 15: PRINT CHR$(1) 'Happy face
IF x = 5 AND y = 34 AND gotsword$ = "no" THEN
SLEEP 1: menu
' Gambas fix: PLAY "116mfccc > cc": SLEEP 1: menu
END IF
IF x = 5 AND y = 34 AND gotsword$ = "yes" THEN
LOCATE
LOCATE 5, 34:
END IF
IF x = 27 AND y = 77 AND gotsword$ = "no" THEN
SLEEP 1: menu
' Gambas fix: PLAY "116mfccc > cc": SLEEP 1: menu
END IF
IF x = 27 AND y = 77 AND gotsword$ = "yes" THEN
LOCATE 23, 45: COLOR 14: PRINT CHR$(8)
END IF
IF x = 23 AND y = 45 AND gotkey$ = "yes" THEN
' Gambas fix: PLAY "aecg"
SLEEP 1
CALL level3
' Gambas fix: GOTO level3
END IF
IF x = 23 AND y = 45 AND gotkey$ = "no" THEN
' Gambas fix: SOUND 45, 1
END IF
IF x = 28 AND y = 3 THEN GOTO levelb 'Secret
IF x = 2 AND y = 68 THEN SLEEP 1: menu
IF x = 5 AND y = 15 THEN SLEEP 1: menu
IF x = 24 AND y = 45 THEN SLEEP 1: menu
' Gambas fix: IF x = 2 AND y = 68 THEN : PLAY "116mfccc > cc": SLEEP 1: menu
' Gambas fix: IF x = 5 AND y = 15 THEN : PLAY "116mfccc > cc": SLEEP 1: menu
' Gambas fix: IF x = 24 AND y = 45 THEN : PLAY "116mfccc > cc": SLEEP 1: menu

COLOR 4: LOCATE 28, 3: PRINT "*"
COLOR 4: LOCATE 2, 68: PRINT "*"
COLOR 4: LOCATE 5, 15: PRINT "*"
COLOR 4: LOCATE 24, 45: PRINT "*"

press$ = INKEY$
IF press$ = CHR$(0) + CHR$(72) THEN
LOCATE
LOCATE x, y: PRINT " "
x = x - 1
GOTO main2
END IF
IF press$ = CHR$(0) + CHR$(75) THEN
LOCATE
LOCATE x, y: PRINT " "
y = y - 1
GOTO main2
END IF
IF press$ = CHR$(0) + CHR$(77) THEN
LOCATE
LOCATE x, y: PRINT " "
y = y + 1
GOTO main2
END IF
IF press$ = CHR$(0) + CHR$(80) THEN
LOCATE
LOCATE x, y: PRINT " "
x = x + 1
GOTO main2
END IF
IF x = 28 THEN
LOCATE
LOCATE x, y: PRINT " "
x = x - 1
GOTO main2
END IF
IF y = 80 THEN
LOCATE
LOCATE x, y: PRINT " "
y = y - 1
GOTO main2
END IF
IF press$ = CHR$(27) THEN SYSTEM

IF y = 1 THEN
LOCATE
LOCATE x, y: PRINT " "
y = y + 1
GOTO main2
END IF
IF x = 1 THEN
LOCATE
LOCATE x, y: PRINT " "
x = x + 1
GOTO main2
ELSE GOTO main2
END IF

level3:
CLS
CALL level3

levelb:
CLS
CALL differboss
END SUB

SUB level3
'Credit to David Hartfield

start: CLS
time = 0
throw = 0
x = 2
y = 2
'ap = 2
'bp = 1
ccess = 1
BAD1KILL$ = "n"
gotkey$ = "no"
bombposition$ = "n"
bombthere$ = "n"
SCREEN 12
'LOCATE 2, 5
'PRINTCHR$(2)
BAD1 = 7
code$ = "no"
bombthere$ = "N"
access$ = "no"
d = 0
lead$ = "no"
show = 51
move:
'PRINT x, y

COLOR 14: LOCATE 17, 28: PRINT CHR$(8)
IF x = 17 AND y = 28 AND gotkey$ = "yes" THEN
access$ = "yes"
GOTO beatlevel
END IF

COLOR 3: LOCATE 13, 45: PRINT "."

IF x = 13 AND y = 45 THEN
LOCATE 13, 45: PRINT " "
gotkey$ = "yes"
END IF


COLOR 3: LOCATE 15, 27: PRINT "o"
IF x = 15 AND y = 27 THEN
' Gambas fix: PLAY "O> O> O> g"
time = time + 1
IF time = 10 THEN GOSUB timerup
lead$ = "yes"
END IF

IF lead$ = "no" THEN
LOCATE 10, 2: PRINT "U"
ELSE
LOCATE 10, 2: PRINT "x"
END IF

LOCATE 8, 20: PRINT "U"
IF x = 8 AND y = 20 THEN
x = x - 2
END IF

IF BAD1 = 10 AND bombposition$ = "Y" THEN GOSUB bad1dead
IF x = 2 AND y = 10 AND bombthere$ = "was" THEN GOSUB esplod
IF x = 3 AND y = 10 AND bombthere$ = "y" THEN GOSUB esplod
IF x = 4 AND y = 10 AND bombthere$ = "y" THEN 'MOVE BOMB
LOCATE 2, 10: PRINT "o"
LOCATE 3, 10: PRINT CHR$(24)
LOCATE 3, 10: PRINT " "
bombposition$ = "Y"
bombthere$ = "was"
END IF
LOCATE 4, 10: PRINT CHR$(24) 'BOINGER TO BOMB
COLOR 3
LOCATE 10, 20: PRINT "U" 'BOMB CONDUCTOR
COLOR 15
IF x = 10 AND y = 20 THEN
' Gambas fix: PLAY "O> O> O> g"
LOCATE 3, 10: PRINT "o"
time = time + 1
IF time = 10 THEN GOSUB timerup

bombthere$ = "y"
END IF

IF access$ = "yes" AND ccess = 1 THEN
ccess = 5
LOCATE 7, 2: PRINT "    "
LOCATE 6, 6:
PRINT "																			   "
END IF
layerbombs = layerbombs + 1 'bombs rang 1
IF layerbombs = 5 AND access$ = "no" THEN
layerbombs = 0
END IF
IF layerbombs < 2 AND access$ = "no" THEN
IF x = 7 THEN GOSUB runintorang1 ' bomb's there
LOCATE 7, 2: PRINT "*"; "*"; "*"

'CHR '*' ... 10 times
'CHR 42 ... 64 times
LOCATE 7, 6: PRINT "*"; "*"; "*"; "*"; "*"; "*"; "*"; "*"; "*"; "*"; CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42); CHR$(42);
END IF

'sideline = 9
'IF layerbombs = 4 THEN
'FOR i
'LOCATE sideline, 8: PRINT "U"
'sideline = sideline + 1
'NEXT i
'END IF

COLOR 3
LOCATE 8, 8: PRINT CHR$(16) 'arrows!!
COLOR 2
LOCATE 8, 9: PRINT CHR$(16)
IF x = 8 AND y = 8 THEN
y = y + 1
END IF
IF x = 8 AND y = 9 THEN
y = y + 1
END IF
'bombposition$ = "n"
'bombthere$ = "n"

COLOR 14
LOCATE 8, 7: PRINT CHR$(16)
IF x = 8 AND y = 7 THEN
y = y + 1
END IF
COLOR 13
LOCATE 8, 6: PRINT CHR$(16)
IF x = 8 AND y = 6 THEN
y = y + 1
END IF
COLOR 12
LOCATE 8, 5: PRINT CHR$(16) 'arrow
COLOR 15
IF x = 8 AND y = 5 THEN
y = y + 1
END IF
COLOR 14
LOCATE 5, 5: PRINT CHR$(25) 'arrow
LOCATE 6, 5: PRINT CHR$(25)
LOCATE 7, 5: PRINT CHR$(25)
COLOR 15
IF x = 6 AND y = 5 THEN
x = x + 2
END IF
IF x = 5 AND y = 5 THEN
x = x + 3
END IF
IF BAD1KILL$ = "N" THEN 106 ELSE
LOCATE 2, BAD1: PRINT " " 'moves enemy
d = d + 1
IF d = 5 THEN ELSE 4
IF BAD1 = 10 THEN
code$ = "no"
END IF
IF code$ = "yes" THEN 3
'END IF
IF BAD1 = 70 THEN
3 BAD1 = BAD1 - 1
code$ = "yes"
GOTO 2
ELSE
BAD1 = BAD1 + 1
2 END IF
COLOR 14
LOCATE 2, BAD1: PRINT CHR$(5)
COLOR 15
4 IF d = 10 THEN
d = 0
END IF
IF y = BAD1 AND x = 2 THEN GOSUB bad1getyou ELSE 106
105 END
SLEEP 1
GOTO start
106

IF press$ = CHR$(13) THEN level1 'secret

'MOVEBAD BAD1KILL$, BAD1, D, CODE$, X, Y, LIVES
COLOR 5
LINE (1, 1)-(637, 463), 3, B 'Draws boundary lines box
LINE (200, 208)-(637, 463), 3, B
PAINT (252, 252), 3
'LOCATE 15, 32: PRINT "+"
'LOCATE 16, 32: PRINT "+" 'makes clay back
'LOCATE 17, 32: PRINT "+"
'LOCATE 16, 31: PRINT "+"
'LOCATE 16, 33: PRINT "+"
COLOR 15
1
IF x = 28 THEN
x = x - 1
END IF

LOCATE x, y
PRINT CHR$(1) 'Happy face
press$ = INKEY$
IF press$ = CHR$(0) + CHR$(72) THEN
IF x = 2 THEN
x = x + 1
ap = ap + 1
END IF
ap = x
bp = y
x = x - 1
LOCATE ap, bp: PRINT " "
LOCATE x, y
GOTO move:
END IF
IF press$ = CHR$(0) + CHR$(75) THEN
IF y = 2 THEN
y = y + 1
bp = bp + 1
END IF
ap = x
bp = y
y = y - 1
LOCATE ap, bp: PRINT " "
IF x > 13 AND y = 50 AND BAD1KILL$ = "n" THEN
y = y + 1
bp = bp + 1
END IF
GOTO move
END IF
IF press$ = CHR$(0) + CHR$(77) THEN
IF y = 79 THEN
y = y - 1
bp = bp - 1
END IF
'if y =
ap = x
bp = y
y = y + 1
LOCATE ap, bp: PRINT " "
IF y = 26 AND x > 13 AND BAD1KILL$ = "n" THEN
y = y - 1
bp = bp - 1
END IF
GOTO move
END IF
IF press$ = CHR$(0) + CHR$(80) THEN
IF x > 35 THEN
x = x - 1
ap = ap - 1
END IF
ap = x
bp = y
x = x + 1
LOCATE ap, bp: PRINT " "
'END IF
IF x = 14 AND y > 25 AND BAD1KILL$ = "n" THEN ELSE 110
x = x - 1
ap = ap + 1
' QB64 fix: CLEAR 0, 0, 10000
' Gambas fix: CLEAR , , 10000
110
END IF
IF press$ = CHR$(27) THEN END
IF x = 36 THEN
x = x - 1
'CLS
GOTO move
END IF
IF y = 80 THEN
y = y - 1
'CLS
GOTO move
END IF
IF y = 1 THEN
LOCATE x, y: PRINT " "
y = y + 1
'CLS
GOTO move
END IF
IF x = 1 THEN
x = x + 1
'CLS
GOTO move
END IF
GOTO move
END

esplod:
PRINT "NOOOOOOOO!!!"
FOR lop = 1 TO 15
COLOR lop
PAINT (lop, 1)
NEXT lop
END

bad1dead:
IF throw = 5 THEN 50 ELSE
BAD1KILL$ = "N"
throw = throw + 1
LOCATE 2, 9: PRINT "UUU"
LOCATE 2, 8: PRINT "UUUUU"
LOCATE 2, 7: PRINT "UUUUUUU"
LOCATE 2, 6: PRINT "UUUUUUUUU"
LOCATE 2, 5: PRINT "UUUUUUUUUUU"
LOCATE 2, 5: PRINT " UUUUUUUUU "
LOCATE 2, 5: PRINT "  UUUUUUU  "
LOCATE 2, 5: PRINT "   UUUUU   "
LOCATE 2, 5: PRINT "    UUU    "
LOCATE 2, 5: PRINT "           "
50 bombthere$ = "n"
bombposition$ = "n"
bombthere$ = "n"

RETURN

bad1getyou:
j = BAD1 - 5
					'IF throw = 5 THEN 60 ELSE
					'BAD1KILL$ = "N"
FOR throw = 1 TO 5						'throw = throw + 1
COLOR 14
LOCATE 2, j: PRINT "    UUU    "
LOCATE 2, j: PRINT "   UUUUU   "
LOCATE 2, j: PRINT "  +UUUUU+  "
LOCATE 2, j: PRINT " ++UUUUU++ "
LOCATE 2, j: PRINT "oo+UUUUU+oo"
LOCATE 2, j: PRINT " ++UUUUU++ "
LOCATE 2, j: PRINT "  +UUUUU+  "
LOCATE 2, j: PRINT "   UUUUU   "
LOCATE 2, j: PRINT "    UUU    "
LOCATE 2, j: PRINT "           "
COLOR 14
LOCATE 2, j: PRINT "     "; CHR$(7); "    "
60 COLOR 15
NEXT throw
RETURN

runintorang1:
' Gambas fix: PLAY "O> O> c"
END

timerup:
y2 = y - 2

FOR i = 1 TO 50
LOCATE x, y2: PRINT "U|U|U"
LOCATE x, y2: PRINT "|U|U|"
NEXT i
CLS
END

beatlevel:
' Gambas fix: PLAY "aecg>"
SLEEP 1
boss

END SUB

SUB menu
SCREEN 0, 0 'Text mode
CLS
' Gambas fix: menu:
' Gambas fix: SCREEN 0, 0
COLOR 2
COLOR 20: LOCATE 1, 25: PRINT " -Menu- " 'Flashing in RED
COLOR 2: LOCATE 2, 20: PRINT "(1) Play Cyber Quest"
COLOR 2: LOCATE 3, 20: PRINT "(2) Instructions"
COLOR 2: LOCATE 4, 20: PRINT "(3) About Cyber Quest"
COLOR 2: LOCATE 5, 20: PRINT "(4) Quit"
COLOR 2: LOCATE 6, 15: INPUT "Well? ", stuff$
IF stuff$ = "1" THEN
CALL level1
END IF
IF stuff$ = "2" THEN
CALL instructions
END IF
IF stuff$ = "3" THEN
CALL About
END IF
IF stuff$ = "4" THEN
CALL goodbye
END IF

'ELSE...
CLS
' Gambas fix: SOUND 45, 1
menu
' Gambas fix: GOTO MENU
END SUB
