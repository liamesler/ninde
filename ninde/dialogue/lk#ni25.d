// ---------------------------------------------
// Ninde ToB Out-of-Party Dialogue
// ---------------------------------------------
BEGIN LK#NI25

// FATE SPIRIT

EXTEND_TOP FATESP 6
+ ~!Dead("Ninde") !InMyArea("Ninde") CheckStatGT(Player1,12,CHR) Gender(Player1,MALE) Global("LK#NindeSummoned","GLOBAL",0)~ + ~Bring me my lover, Ninde.~ 
	DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
	Wait(2)
	CreateCreature("lk#ni25",[1999.1228],1)
	SetGlobal("LK#NindeRomanceActive","GLOBAL",2)
	SetGlobal("LK#NindeRestored","GLOBAL",1)
	SetGlobal("LK#NindeSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("Ninde") !InMyArea("Ninde") Global("LK#NindeSummoned","GLOBAL",0)~ + ~Bring me Ninde, the elven necromancer.~ 
 	DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
	Wait(2)
	CreateCreature("lk#ni25",[1999.1228],1)
	SetGlobal("LK#NindeSummoned","GLOBAL",1)~ GOTO 8
END
	
APPEND LK#NI25

IF ~NumTimesTalkedTo(0)~ join1
 SAY ~Hello there, Bhaalspawn.  This was not...quite how I envisioned our next meeting, though perhaps a trek through the Nine Hells should not surprise me by now.~
 	++ ~If you're done gaping, I need your help.~ + join2
 	++ ~At least you won't be bored.~ + join3
 	++ ~It's nice to see you too, Ninde.~ + join4
END

IF ~~ join2
 SAY ~Do you?  How very fascinating.  Given your current company, however, I can't say that I'm particularly surprised.~
 	++ ~That's nice.  Join up, please.~ + join5
 	++ ~Could you wait here awhile?  I may need you later.~ + join6
END

IF ~~ join3
 SAY ~I think that rather depends on you, darling.  From this delightful summoning of yours, shall I take it you want my help again for some bother or another?~
 	++ ~Indeed, I do.  Join up, please.~ + join5
 	++ ~Could you wait here awhile?  I may need you later.~ + join6
END

IF ~~ join4
 SAY ~Yes, I'm sure it is.  But from this delightful summoning of yours, shall I take it you want my help again for some bother or another?~
 	++ ~Indeed, I do.  Join up, please.~ + join5
 	++ ~Could you wait here awhile?  I may need you later.~ + join6
END

IF ~~ join5
 SAY ~I'm sure it will continue to be a pleasure, darling.  At least, I certainly hope so.~
IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ join6
 SAY ~Hmph.  I would have much preferred a place with a view--or decent carpeting, at the very least--but I don't expect that I have much of a choice now.  Do be a dear and make a decision quickly, would you?~
IF ~~ EXIT
END

// joining later

IF ~NumTimesTalkedToGT(0)~ join7
 SAY ~Oh, it's you.  I see you're walking and talking, so congratulations, you've exceeded my expectations.  Have you finally changed your mind?~
  ++ ~Indeed I have.  We could use your skills, if you're still interested.~ + join8
  ++ ~No, not yet.  It's good to see you again, Ninde.~ + join9
END

IF ~~ join8
  SAY ~Ah, it's refreshing to know you've some remnant of common sense, Bhaalspawn.  One can go far on a little common sense, it seems.  Very well, onward to glory and wealth, or something equally banal.~
  IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ join9
 SAY ~How awfully sentimental.  I have little interest in chitchat, Bhaalspawn.  Now, if you would excuse me...~
IF ~~ EXIT
END
END
