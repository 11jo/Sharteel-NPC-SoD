BEGIN bdshartp

IF ~Global("SharTeelJoined", "GLOBAL", 1)~ THEN BEGIN Rejoin
SAY @500 /* I take it this means I'm through with you idiots? */
	IF ~~ THEN
	REPLY @501 /* Actually, on second thought I still require your services. */
		DO ~SetGlobal("SharTeelJoined", "GLOBAL", 1) JoinParty()~ EXIT
	IF ~~ THEN
	REPLY @502 /* Your respect is endearing, truly, but now that I think about it I still have need of you. */
		DO ~SetGlobal("SharTeelJoined", "GLOBAL", 1) JoinParty()~ EXIT
	IF ~~ THEN
	REPLY @503 /* Yep. */ EXIT
END

IF ~!HappinessLT(Myself,UNHAPPY_ANGRY_BOUNDARY)
Global("KickedOut","LOCALS",1)~ THEN BEGIN 0
  SAY @500 /* I take it this means I'm through with you idiots? */
  IF ~~ THEN REPLY @504 /* Yes, it's time to part ways. */ GOTO 2
  IF ~~ THEN REPLY @505 /* No, I made a mistake. Please stay. */ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @506 /* I'm not here to play games <CHARNAME>. */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @507 /* Finally. */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
~ EXIT
END

IF ~HappinessLT(Myself,UNHAPPY_ANGRY_BOUNDARY)~ THEN BEGIN 3
  SAY @508 /* I've had just about enough of this crap. Our business here is done. */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
ChangeAIScript("",DEFAULT)
EscapeArea()
~ EXIT
END

IF ~!HappinessLT(Myself,UNHAPPY_ANGRY_BOUNDARY)
Global("KickedOut","LOCALS",0)~ THEN BEGIN 4
  SAY @509 /* I'm tired of dealing with idiots. */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
ChangeAIScript("",DEFAULT)
~ EXIT
END
