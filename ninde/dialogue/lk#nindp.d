// ---------------------------------------------
// Nephele P Dialogue
// ---------------------------------------------
BEGIN LK#NINDP

// Leaving
IF ~Global("LK#NindeJoined","LOCALS",1) !Global("LK#NindeAbducted","GLOBAL",1)~ LK#NP_intro
  SAY ~My father, bless his senile heart, used to say that even the sweetest apples rot.  Perhaps...yes, I could certainly do with a break from the road.  My feet must be restored to their former, delicate selves.  Speak plain, <CHARNAME>, do you desire my company any longer?~
  ++ ~Well your little break from adventuring will have to wait for a while, Ninde.  We still have need of you yet.~ DO ~JoinParty()~ EXIT
  ++ ~Maybe it's time we thought about going our separate ways, Ninde.~ + LK#NP_goplz
END

IF ~~ LK#NP_goplz
  SAY ~Very well.  I shall return to Athkatla...should you change your mind upon realising the peril travelling without me engenders, you might find me in one of the more...colourful...inns of the city.  The Crooked Crane, I believe.  I know it's very hard, but do try not to get yourself killed, <CHARNAME>, you silly creature.~
  IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",0) LeaveParty() EscapeAreaMove("AR0021",585,355,6)~ EXIT
END

// Rejoining
IF ~Global("LK#NindeJoined","LOCALS",0) !Global("LK#NindeAbducted","GLOBAL",1)~ LK#NJ2_intro
  SAY ~Oh, it's you again.  I see you're walking and talking, so congratulations, you've exceeded my expectations.  Have you come about our little...business proposal?~
  ++ ~Indeed I have.  We could use your skills, if you're still interested.~ + LK#NJ2_joinplz
  ++ ~Ha, nope.  I just came to watch a fine lady such as you marinating in this hole.  Amusing to say the least.~ + LK#NJ2_nopes
  ++ ~No, we just happened to be nearby.  It's good to see you again, Ninde.~ + LK#NJ2_niceno
  ++ ~Actually, I've decided to kill you.~ + LK#NJ2_violence
END

IF ~~ LK#NJ2_joinplz
  SAY ~Ah, it's refreshing to know you've some remnant of common sense, Bhaalspawn.  One can go far on a little common sense in this city, it seems.  Very well, onward to glory and wealth, or something equally banal.~
  IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ LK#NJ2_nopes
  SAY ~I suppose simple things amuse the simple-minded.  Get your gawking done and leave, because your fat simian face is rather ruining the otherwise charmingly quaint scenery, peasant.~
  IF ~~ EXIT
  IF ~InParty("Korgan") InParty("Edwin") !StateCheck("Korgan",CD_STATE_NOTVALID) !StateCheck("Edwin",CD_STATE_NOTVALID)~ EXTERN ~KORGANJ~ LK#NJ2_korgan
END

IF ~~ LK#NJ2_niceno
  SAY ~How awfully sentimental.  I have little time for chitchat, Bhaalspawn.  Apologies for curtailing our little discourse, but more important matters call.~
  IF ~~ EXIT
END

IF ~~ LK#NJ2_violence
  SAY ~I knew you were a dimwit the moment I set eyes on you, Bhaalspawn.  Truly, I pity you.  But I'm afraid you'll not have my blood today.  I wish Bodhi luck in gutting you, like she did your friend.  Imoen, is it?  Yes, I remember the little redhead screaming for mercy as her entrails were torn from her.  It did make for spectacular entertainment.  Farewell, my dear.  I'm sure we'll meet again.~
  IF ~~ DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

APPEND ~KORGANJ~
IF ~~ LK#NJ2_korgan
  SAY ~Och, Edwin, the spellchucking wench has a sharper tongue then you!  'Tis a good job she'll not be joining us, since I couldn't bare the both of ye, and she just happens to be a nicer shape.~
  IF ~~ EXIT
END
END


APPEND LK#NINDP

// After abduction
IF WEIGHT #-1 ~Global("LK#NindeAbducted","GLOBAL",1)~ LK#NindeBAbd_intro
  SAY ~There you are.  I don't say this often, but by Shar, I'm glad to see you.~
  ++ ~Ninde!  Are you alright?~ DO ~IncrementGlobal("LK#NindeAbducted","GLOBAL",1)~ + LK#NindeBAbd_SOKAY
  ++ ~And it's good to see you again, to.  I trust you are unscathed?~ DO ~IncrementGlobal("LK#NindeAbducted","GLOBAL",1)~ + LK#NindeBAbd_SOKAY
  ++ ~What happened?  They just...left you here?  Didn't torture you or anything?~ DO ~IncrementGlobal("LK#NindeAbducted","GLOBAL",1)~ + LK#NindeBAbd_TORCHA
  ++ ~Oh, don't put on that damsel-in-distress show, it doesn't look as though your feathers have been particularly ruffled.~ DO ~IncrementGlobal("LK#NindeAbducted","GLOBAL",1)~ + LK#NindeBAbd_RUFFLED
  ++ ~Glad to see me?  I fought tooth and nail through this damnable crypt to fetch you and that's all you can think to say?~ DO ~IncrementGlobal("LK#NindeAbducted","GLOBAL",1)~ + LK#NindeBAbd_THINSAY
END

IF ~~ LK#NindeBAbd_SOKAY
  SAY ~I'm ridiculously bored, but otherwise, everything is just peachy.  Peachy.~
  ++ ~You don't look terribly happy.~ + LK#NindeBAbd_RUFFLED 
  ++ ~If I'm not mistaken, you don't really seem your usual, wordy self.~ + LK#NindeBAbd_RUFFLED
  ++ ~Well, if you are sure.  Lets get out of here.~ + LK#NindeBAbd_OUTTAHER
  ++ ~You might be bored, but you could've been dead.  Why not look on the bright side?~ + LK#NindeBAbd_BRITESID
  ++ ~I hope you're not irritated with me, Ninde.  I came as fast as I could.~ + LK#NindeBAbd_FASTACOULD
END

IF ~~ LK#NindeBAbd_TORCHA
  SAY ~No?  I think they were probably a little pre-occupied with you.  They just threw me in here, and I've been having lots of fun re-acquainting myself with the sorts of things vampires hide in wooden boxes.~
  ++ ~Lovely.  Despite the sterling time you've been having, we should get out of here.  Come.  ~ + LK#NindeBAbd_STERLING
  ++ ~Odd.  I thought Bodhi would have been eager to break out the thumbscrews with you paying a visit.  ~ + LK#NindeBAbd_UVEESIT
  ++ ~Are you sure you're alright?  You seem a little...off.  ~ + LK#NindeBAbd_RUFFLED
  ++ ~Well, if you are sure.  Lets get out of here.~ + LK#NindeBAbd_OUTTAHER
END

IF ~~ LK#NindeBAbd_RUFFLED
  SAY ~It is just this place.  I'd forgotten how much like a charnel house it smells.  Can we leave, <CHARNAME>?~
  ++ ~There are still a few things we need to do, but we will leave as soon as .~ + LK#NindeBAbd_OUTTAHER
  ++ ~I have no liking for it either.  Come.~ + LK#NindeBAbd_OUTTAHER
  ++ ~That's strange, I assumed you'd be in your element in a place like this.~ + LK#NindeBAbd_ELEMENT
  ++ ~Perhaps we should think about examining this place a little more thoroughly before we leave.  There could be some clues as to Irenicus' plans.~ + LK#NindeBAbd_EXAMIREN
  ++ ~Stop your complaining and fall into formation.  We leave when I say we leave.~ + LK#NindeBAbd_LEVWENLEV
END

IF ~~ LK#NindeBAbd_THINSAY
  SAY ~I suppose you wanted me to throw my arms about your neck in raptures of delight.  The truth is, this has been no great ordeal.  I simply wish to leave as soon as .  I'd forgotten how much like a charnel house it smells down here.~
  ++ ~There are still a few things we need to do, but we will leave as soon as.~ + LK#NindeBAbd_OUTTAHER
  ++ ~I have no liking for it either.  Come.~ + LK#NindeBAbd_OUTTAHER
  ++ ~Still, a few kind words for your gallant rescuer wouldn't go amiss!~ + LK#NindeBAbd_AEMISS
  ++ ~That's strange, I assumed you'd be in your element in a place like this.~ + LK#NindeBAbd_ELEMENT
  ++ ~Perhaps we should think about examining this place a little more thoroughly before we leave.  There could be some clues as to Irenicus' plans.~ + LK#NindeBAbd_EXAMIREN
  ++ ~Stop your complaining and fall into formation.  We leave when I say we leave.~ + LK#NindeBAbd_LEVWENLEV
END

IF ~~ LK#NindeBAbd_OUTTAHER
  SAY ~Some haste would be appreciated, Bhaalspawn.  This place and everything in it makes me feel sick, including you.~
  ++ ~What?  That was a bit of an unwarranted attack, don't you think?~ + LK#NindeBAbd_UNWARRANT
  ++ ~What in the realms have I done to you, woman, to deserve such venom?~ + LK#NindeBAbd_UNWARRANT
  ++ ~If I've done something to offend you, I'm certainly unaware of it.  Care to clarify for me why, exactly, I sicken you?~ + LK#NindeBAbd_UNWARRANT
  ++ ~If this is how you treat your rescuer I'll know to leave you to your own devices next time.  ~ + LK#NindeBAbd_OWNDEV
  ++ ~Fine.  You can make your own way out, then.~ + LK#NindeBAbd_WAYOUTDEN
END

IF ~~ LK#NindeBAbd_BRITESID
  SAY ~I do not look on the bright side because this place and everything in it makes me feel sick.  Including you, Bhaalspawn.~
  ++ ~What?  That was a bit of an unwarranted attack, don't you think?~ + LK#NindeBAbd_UNWARRANT
  ++ ~What in the realms have I done to you, woman, to deserve such venom?~ + LK#NindeBAbd_UNWARRANT
  ++ ~If I've done something to offend you, I'm certainly unaware of it.  Care to clarify for me why, exactly, I sicken you?~ + LK#NindeBAbd_UNWARRANT
  ++ ~If this is how you treat your rescuer I'll know to leave you to your own devices next time.  ~ + LK#NindeBAbd_OWNDEV
  ++ ~Fine.  You can make your own way out, then.~ + LK#NindeBAbd_WAYOUTDEN
END

IF ~~ LK#NindeBAbd_FASTACOULD
  SAY ~Frankly, this place and everything in it sickens me, including you, Bhaalspawn.~
  ++ ~What?  That was a bit of an unwarranted attack, don't you think?~ + LK#NindeBAbd_UNWARRANT
  ++ ~What in the realms have I done to you, woman, to deserve such venom?~ + LK#NindeBAbd_UNWARRANT
  ++ ~If I've done something to offend you, I'm certainly unaware of it.  Care to clarify for me why, exactly, I sicken you?~ + LK#NindeBAbd_UNWARRANT
  ++ ~If this is how you treat your rescuer I'll know to leave you to your own devices next time.  ~ + LK#NindeBAbd_OWNDEV
  ++ ~Fine.  You can make your own way out, then.~ + LK#NindeBAbd_WAYOUTDEN
END

IF ~~ LK#NindeBAbd_STERLING
  SAY ~Yes, let's go.  I'd forgotten how much like a charnel house this place smells.~
  IF ~~ DO ~JoinParty() SetGlobal("LK#NindeJoined","GLOBAL",1) EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and attempting to steal from me the one person that is dearest to my heart: Ninde.  Of course, Ninde would not be so easily taken; apparently the Ankh she wears protects her from being vampirised.  Nonetheless, she has been taken from me.  Before Bodhi vanished and unleashed more of her undead creations upon me, she threatened Ninde's life.  I cannot give up on the Rhynn Lanthorn...but now the life and immortal soul of the one I love is at stake.  I must save her before it becomes too late.%)~ SOLVED_JOURNAL ~The Final Battle with Bodhi.

While I had feared that Bodhi's revenge upon me was Ninde's death, she was not physically harmed, but does seem a little disturbed by her ordeal.~ EXIT
END

IF ~~ LK#NindeBAbd_UVEESIT
  SAY ~Unlike yourself.  Bodhi if wise enough to see that being so motivated for revenge can lead to folly.  Anyway, psychoanalysis aside, may we leave?~
  ++ ~There are still a few things we need to do, but we will leave as soon as .~ + LK#NindeBAbd_OUTTAHER
  ++ ~I have no liking for it either.  Come.~ + LK#NindeBAbd_OUTTAHER
  ++ ~Still, a few kind words for your gallant rescuer wouldn't go amiss!~ + LK#NindeBAbd_AEMISS
  ++ ~That's strange, I assumed you'd be in your element in a place like this.~ + LK#NindeBAbd_ELEMENT
  ++ ~Perhaps we should think about examining this place a little more thoroughly before we leave.  There could be some clues as to Irenicus' plans.~ + LK#NindeBAbd_EXAMIREN
  ++ ~Stop your complaining and fall into formation.  We leave when I say we leave.~ + LK#NindeBAbd_LEVWENLEV
END

IF ~~ LK#NindeBAbd_ELEMENT
  SAY ~In a tomb?  Lovely.  Suffice to say I am not in my element.  I simply wish to leave.  Can we, <CHARNAME>?~
  ++ ~There are still a few things we need to do, but we will leave as soon as .~ + LK#NindeBAbd_OUTTAHER
  ++ ~I have no liking for it either.  Come.~ + LK#NindeBAbd_OUTTAHER
  ++ ~Still, a few kind words for your gallant rescuer wouldn't go amiss!~ + LK#NindeBAbd_AEMISS
  ++ ~That's strange, I assumed you'd be in your element in a place like this.~ + LK#NindeBAbd_ELEMENT
  ++ ~Perhaps we should think about examining this place a little more thoroughly before we leave.  There could be some clues as to Irenicus' plans.~ + LK#NindeBAbd_EXAMIREN
  ++ ~Stop your complaining and fall into formation.  We leave when I say we leave.~ + LK#NindeBAbd_LEVWENLEV
END

IF ~~ LK#NindeBAbd_EXAMIREN
  SAY ~As you would have it, but the sooner we leave the sooner I will feel right again.  As it is, everything in this place sickens me, including you, Bhaalspawn.~
  ++ ~What?  That was a bit of an unwarranted attack, don't you think?~ + LK#NindeBAbd_UNWARRANT
  ++ ~What in the realms have I done to you, woman, to deserve such venom?~ + LK#NindeBAbd_UNWARRANT
  ++ ~If I've done something to offend you, I'm certainly unaware of it.  Care to clarify for me why, exactly, I sicken you?~ + LK#NindeBAbd_UNWARRANT
  ++ ~If this is how you treat your rescuer I'll know to leave you to your own devices next time.  ~ + LK#NindeBAbd_OWNDEV
  ++ ~Fine.  You can make your own way out, then.~ + LK#NindeBAbd_WAYOUTDEN
END

IF ~~ LK#NindeBAbd_LEVWENLEV
  SAY ~<<placeholder>>~
  IF ~~ DO ~JoinParty() SetGlobal("LK#NindeJoined","GLOBAL",1) SetGlobal("LK#NindeRomanceActive","GLOBAL",3) EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and attempting to steal from me the one person that is dearest to my heart: Ninde.  Of course, Ninde would not be so easily taken; apparently the Ankh she wears protects her from being vampirised.  Nonetheless, she has been taken from me.  Before Bodhi vanished and unleashed more of her undead creations upon me, she threatened Ninde's life.  I cannot give up on the Rhynn Lanthorn...but now the life and immortal soul of the one I love is at stake.  I must save her before it becomes too late.%)~ SOLVED_JOURNAL ~The Final Battle with Bodhi.

While I had feared that Bodhi's revenge upon me was Ninde's death, she was not physically harmed, but does seem a little disturbed by her ordeal.~ EXIT
END

IF ~~ LK#NindeBAbd_AEMISS
  SAY ~I am not here for your pleasure, <CHARNAME>.  Now let me leave before I UNWARRANT entirely.~
  IF ~~ DO ~JoinParty() SetGlobal("LK#NindeJoined","GLOBAL",1) EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and attempting to steal from me the one person that is dearest to my heart: Ninde.  Of course, Ninde would not be so easily taken; apparently the Ankh she wears protects her from being vampirised.  Nonetheless, she has been taken from me.  Before Bodhi vanished and unleashed more of her undead creations upon me, she threatened Ninde's life.  I cannot give up on the Rhynn Lanthorn...but now the life and immortal soul of the one I love is at stake.  I must save her before it becomes too late.%)~ SOLVED_JOURNAL ~The Final Battle with Bodhi.

While I had feared that Bodhi's revenge upon me was Ninde's death, she was not physically harmed, but does seem a little disturbed by her ordeal.~ EXIT
END

IF ~~ LK#NindeBAbd_UNWARRANT
  SAY ~I really don't know.  I don't know who should disgust me and who should please me anymore.  Get me out of here, <CHARNAME>, I need to breathe real air again before I can think real thoughts.~
  IF ~~ DO ~JoinParty() SetGlobal("LK#NindeJoined","GLOBAL",1) EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and attempting to steal from me the one person that is dearest to my heart: Ninde.  Of course, Ninde would not be so easily taken; apparently the Ankh she wears protects her from being vampirised.  Nonetheless, she has been taken from me.  Before Bodhi vanished and unleashed more of her undead creations upon me, she threatened Ninde's life.  I cannot give up on the Rhynn Lanthorn...but now the life and immortal soul of the one I love is at stake.  I must save her before it becomes too late.%)~ SOLVED_JOURNAL ~The Final Battle with Bodhi.

While I had feared that Bodhi's revenge upon me was Ninde's death, she was not physically harmed, but does seem a little disturbed by her ordeal.~ EXIT
END

IF ~~ LK#NindeBAbd_OWNDEV
  SAY ~If you wish.  I do not wish to discuss this now.  I must breathe real air again before I can think real thoughts.~
  IF ~~ DO ~JoinParty() SetGlobal("LK#NindeJoined","GLOBAL",1) EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and attempting to steal from me the one person that is dearest to my heart: Ninde.  Of course, Ninde would not be so easily taken; apparently the Ankh she wears protects her from being vampirised.  Nonetheless, she has been taken from me.  Before Bodhi vanished and unleashed more of her undead creations upon me, she threatened Ninde's life.  I cannot give up on the Rhynn Lanthorn...but now the life and immortal soul of the one I love is at stake.  I must save her before it becomes too late.%)~ SOLVED_JOURNAL ~The Final Battle with Bodhi.

While I had feared that Bodhi's revenge upon me was Ninde's death, she was not physically harmed, but does seem a little disturbed by her ordeal.~ EXIT
END

IF ~~ LK#NindeBAbd_WAYOUTDEN
  SAY ~I will do so.  I must breathe real air again before I can think real thoughts, whether you are with me or not.  Farewell, <CHARNAME>.~
  IF ~~ DO ~EscapeArea() EraseJournalEntry(%The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and attempting to steal from me the one person that is dearest to my heart: Ninde.  Of course, Ninde would not be so easily taken; apparently the Ankh she wears protects her from being vampirised.  Nonetheless, she has been taken from me.  Before Bodhi vanished and unleashed more of her undead creations upon me, she threatened Ninde's life.  I cannot give up on the Rhynn Lanthorn...but now the life and immortal soul of the one I love is at stake.  I must save her before it becomes too late.%)~ EXIT
END

END