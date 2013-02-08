// ---------------------------------------------
// Ninde J File
// ---------------------------------------------
BEGIN LK#NI25J

// ---------------------------------------------
// Ninde Lovetalks
// ---------------------------------------------
// 1.
CHAIN IF ~Global("LK#NindeLoveTalksTOB","GLOBAL",1)~ THEN LK#NI25J n1
~<CHARNAME>, my lord... my love.  Would you join me for a short time tonight?  I...do not believe that I have properly thanked you for what you did for me.~
DO ~IncrementGlobal("LK#NindeLoveTalksTOB","GLOBAL",1)
RealSetGlobalTimer("LK#NindeLoveTalksTOBTimer","GLOBAL",2700)~
END
	++ ~'A short time?'  Ninde, darling, I can assure you that absolutely nothing about tonight is going to be short.~ + n1.1
	++ ~Couldn't we skip the talk and get straight to the gratitude?~ + n1.2
	++ ~I'm your love again, am I?  I can never tell from one day to the next whether you love me or loathe me.~ + n1.3
	++ ~You would be wrong about that, Ninde. You've thanked me quite sufficiently.~ + n1.4

APPEND LK#NI25J

IF ~~ n1.1
 SAY ~Dear me, am I to be subjected to yet more of your masculine bravado, Bhaalspawn?  It is good that you have such charm, as I am not certain I could stomach another soft, civilized cretin.  And yet... and yet stomach you I do.~
IF ~~ + n1.5
END

IF ~~ n1.2
 SAY ~Tsk, an impatient man is a poor lover, Bhaalspawn.  You will get your wish soon enough, but first... we must speak, you and I.~ 
IF ~~ + n1.5
END

IF ~~ n1.3
 SAY ~I...I have treated you poorly in the past, I admit.  But tonight... tonight the time is ripe for new beginnings, I think.~
IF ~~ + n1.5
END

IF ~~ n1.4
 SAY ~Have I?  I am not entirely convinced. 'Tis no small matter, the restoration of a... of a soul.  I owe you more than I could ever put into words.~
IF ~~ + n1.5
END

IF ~~ n1.5
 SAY ~I did not believe that this moment would come to pass... that I would ever wish you to touch me again, but what you have done for me... <CHARNAME>, you have already earned every sweet caress, every breath that passes between us, every...every... hmm.~
 = ~You are no deity to command my devotion. Not yet. But I fear... were I any younger, I fear that I could find myself worshipping you.  The child who would be a god... there is more truth there than many realise.  Than I once realised.~
	++ ~You're too caught up in prophecy, Ninde.  I'd rather be mortal... and be with you.~ + n1.6
	++ ~I'm no child, Ninde.  Surely you've realised that by now.~ + n1.7
	++ ~And another joins the ranks of my horde of helpless admirers!~ + n1.8
	++ ~I thought my ambition was the only thing you did recognise.~ + n1.9
END

IF ~~ n1.6
 SAY ~And shall I swoon at such words, Bhaalspawn?  The prophesies... I will not say that they are all that matters, but do not discount them.  They are far too important for that, as you should well be aware.~
IF ~!Global("LK#NindeSelfish","GLOBAL",1)~ + n1.10a
IF ~Global("LK#NindeSelfish","GLOBAL",1)~ + n1.10b
END

IF ~~ n1.7
 SAY ~The past months have aged you, 'tis true... beyond your years, mayhap, but in some ways you remain... so very young.  I'm afraid that you will always be a child to me.~
IF ~!Global("LK#NindeSelfish","GLOBAL",1)~ + n1.10a
IF ~Global("LK#NindeSelfish","GLOBAL",1)~ + n1.10b
END

IF ~~ n1.8
 SAY ~Horde, <CHARNAME>? If a horde of lovers is part of your fevered imaginings, then know that I am not one to live amongst a crowd.  Yet... you are not entirely wrong... but that does not quite mean that you are right, Bhaalspawn.~
IF ~!Global("LK#NindeSelfish","GLOBAL",1)~ + n1.10a
IF ~Global("LK#NindeSelfish","GLOBAL",1)~ + n1.10b
END

IF ~~ n1.9
 SAY ~Your ambition... many have ambition, Bhaalspawn, and yet so few see those dreams reach fruition.  I had thought... but it no longer matters what I once thought.  You have long since proved yourself to me.~
IF ~!Global("LK#NindeSelfish","GLOBAL",1)~ + n1.10a
IF ~Global("LK#NindeSelfish","GLOBAL",1)~ + n1.10b
END

IF ~~ n1.10a
 SAY ~But the day has been long, and the days that are to come will surely be longer still... longer than any that have come before, I fear.  Shall we then set aside words and worries for this night, my lord?  The time has come instead for pleasure... for desire...~
IF ~~ + n1.10
END

IF ~~ n1.10b
 SAY ~But the day has been long, and the days that are to come will surely be longer still... longer than any that have come before, I fear.  Shall we then set aside words and worries for this night, my lord?  The time has come instead for what you deserve... what you desire...~
IF ~~ + n1.10
END

IF ~~ n1.10
 SAY ~(Ninde's cherry lips graze against your cheek as she speaks, one hand trailing lightly down your chest... and then markedly lower.  You feel her breath against your ear as she laughs throatily.)~
 = ~My handsome Bhaalspawn, you never could hide anything from me. Especially not something so... concrete.~
	++ ~(Kiss her.)~ + n1.11
	++ ~(Begin to unfasten her clothing.)~ + n1.12
	++ ~(Pull her closer.)~ + n1.12
	++ ~Hide?  I dare say the time for hiding things has long since passed.~ + n1.13
	++ ~Ninde... not tonight.  I'm sorry.~ + n1.14
END

IF ~~ n1.11
 SAY ~(She pulls up and away suddenly, the motion vaguely feline, and your lips find the upper curve of her breast in place of of her mouth.  With an amused murmur, she pushes you aside, parting the fabric of her robes in tantalisingly slow fashion.  She observes you through lidded eyes as her clothing finally falls free, as she presses your hands against her silken skin.)~
IF ~~ + n1.15
END

IF ~~ n1.12
 SAY ~(With an amused murmur, she pushes your hands aside, parting the fabric of her robes herself in tantalisingly slow fashion.  She observes you through lidded eyes as her clothing finally falls free, as she presses your hands against her silken skin.)~
IF ~~ + n1.15
END

IF ~~ n1.13
 SAY ~So it has... I fear I am somewhat overdressed for the occasion.~
 = ~(Her voice is a lilting murmur, and she hovers tantalisingly out of reach whilst slowly parting the fabric of her robes.  She observes you through lidded eyes as her clothing finally falls free, as she presses your hands against her silken skin.)~
IF ~~ + n1.15
END

IF ~~ n1.14
 SAY ~I shall leave you to your solitude, then, if you would prefer your own sullen company this night.  Enjoy the stars and your cold bedroll.~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ n1.15
 SAY ~Do not deny me, <CHARNAME>... do not deny yourself.  I feel the heat of your skin.~
 	++ ~I wouldn't dream of it, Ninde.~ + n1.16
 	++ ~Dearest, I would never deny myself anything.~ + n1.16
 	++ ~As always, my lady, I am honoured.~ + n1.16
 	++ ~I... don't think so, Ninde.  Not tonight.  I'm sorry.~ + n1.14
END

IF ~~ n1.16
 SAY ~Then this is a night for romance... a night for passion.  A night to make memorable no matter what horror the gods may have in store for us tomorrow.~
IF ~~ DO ~SetGlobal("LK#NindeMorningTOB","GLOBAL",1) RestParty()~ EXIT
END
END

// morning after
CHAIN IF ~Global("LK#NindeMorningTOB","GLOBAL",1)~ THEN LK#NI25J n1.17
~(You awaken to find Ninde still asleep beside you, her dark hair veiling her face, throwing slender shadows across it that seem to dance as she breathes.  She shivers slightly, waking all at once.)~
DO ~SetGlobal("LK#NindeMorningTOB","GLOBAL",2)~
END
IF ~!Global("LK#NindeSelfish","GLOBAL",1)~ + n1.18
IF ~Global("LK#NindeSelfish","GLOBAL",1)~ + n1.22

APPEND LK#NI25J

// unselfish
IF ~~ n1.18
 SAY ~Morning comes far too quickly after such a night, my Bhaalspawn.~
	++ ~You're not going to say something terrible now, are you?~ + n1.19
	++ ~No nightmares last night?~ + n1.20
	++ ~If you say so.  I was still expecting more.~ + n1.21
	++ ~Not quickly enough.  Come, we have things to do.~ EXIT
END

IF ~~ n1.19
 SAY ~No, <CHARNAME>.  Only to remind you that we mustn't linger overlong... the stars may fade from the sky with the coming of the dawn, but your enemies are as numerous as ever they were.~
IF ~~ EXIT
END

IF ~~ n1.20
 SAY ~No, <CHARNAME>.  Only the dread certainty that we mustn't linger overlong... the stars may fade from the sky with the coming of the dawn, but your enemies are as numerous as ever they were.~
IF ~~ EXIT
END

IF ~~ n1.21
 SAY ~You are yet vengeful, I see.  After the way I treated you, I cannot blame you.  But we mustn't fight today... the stars may fade from the sky with the coming of the dawn, but your enemies are as numerous as ever they were.~
IF ~~ EXIT
END

// selfish
IF ~~ n1.22
 SAY ~I trust you enjoyed last night's activities, my lord?  Though I doubt the rest of our group enjoyed them quite so much.  I suppose into each life must some rain fall.~
  ++ ~Enjoyable is a bit of an understatement, my dear.~ + n1.23
  ++ ~It was pleasant enough an evening.~ + n1.23
  ++ ~Well, the group could do with some voyeuristic thrills every so often.~ + n1.23
  ++ ~Frankly, if this is all I can expect, perhaps I should rethink our little arrangement.~ + n1.24
END

IF ~~ n1.23
 SAY ~(Ninde snuggles up into your chest, her dark hair tickling the underside of your chin.)~
 = ~And what is it you wish for now, I wonder?  I am bound to do as you desire, after all, that was our agreement.  Shall we have a repeat performance?  I'm sure the day can wait a little longer...~
  ++ ~I'm afraid it can't, Ninde.~ + n1.25
  ++ ~You really are quite the delightful temptress, darling.~ + n1.26
  ++ ~A short while longer, perhaps...~ + n1.27
  ++ ~And leave you too spent to face the rest of the day?~ + n1.28
END

IF ~~ n1.24
 SAY ~Passionate by night... and yet come the morning, as cold as ice.  If this is the game you wish to play with me, my Bhaalspawn, so be it.~
IF ~~ EXIT
END
  
IF ~~ n1.25
 SAY ~A pity, sugarplum.  Then I shall simply have to...entertain myself by considering how best to please you when next we rest.  Mmm, I'm sure you will find it all *quite* to your liking...~
IF ~~ EXIT
END

IF ~~ n1.26
 SAY ~I should certainly hope so, my lord.~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ n1.27
  SAY ~A short time, my lord?  I should certainly hope not...~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ n1.28
 SAY ~I am stronger than I look, sugarplum.  Considerably so.  But very well... I shall simply have to...entertain myself by considering how best to please you when next we rest.  Mmm, I'm sure you will find it all *quite* to your liking...~
IF ~~ EXIT
END
END

// 2. Saradush
CHAIN IF ~Global("LK#NindeLoveTalksTOB","GLOBAL",3)~ THEN LK#NI25J n2
~We seem to have finally discovered your native city, Bhaalspawn.  Truth be told, I am really quite underwhelmed by the experience.~
= ~Tell me, dear, how does it feel to know that while once you may have considered yourself unique amongst men, you were merely another speck of sand in the greater--if rather bleak--desert?~
= ~Quite literally, in our case.  Really, Bhaalspawn, *must* your grand destiny constantly drag us to such...such inhospitable places?~
DO ~IncrementGlobal("LK#NindeLoveTalksTOB","GLOBAL",1)~
END
	++ ~It's exotic, Ninde.  Exotic.~ + n2.1
	++ ~I'm not special anymore, am I?  I do hope you're not suddenly planning on leaving me for one of my long lost siblings.~ + n2.2
	++ ~Not unique, she says!  It was never my heritage that made me unique, as I'm sure you would privately agree.~ + n2.3
	++ ~We've been to the Underdark, Ninde, and if I never see another tentacle again, it will be too soon.  This is child's play compared to Ust Natha.~ + n2.4

APPEND LK#NI25J

IF ~~ n2.1
 SAY ~No, <CHARNAME>.  Unther is exotic... though equally unpleasant, I must admit. Calimshan would be preferable... a life of indolent luxury suits me far better than the travelling circus you seem to have acquired.  And your siblings!  They are quite the drab group of cretins, I must say.~
IF ~~ + n2.5
END

IF ~~ n2.2
 SAY ~Hardly.  You have slightly better hygiene than your dubious siblings, and that is more important than you quite obviously realise.  In any case, so many of your kin are rather...lackluster in comparison.~
IF ~~ + n2.5
END

IF ~~ n2.3
 SAY ~It certainly wasn't your fashion sense either, <CHARNAME>... or your dubious taste in travelling companions.  Myself excluded, of course.  However, I must admit... there is a certain quality to you regardless... and one notedly lacking in so many of your kin.~  
IF ~~ + n2.5
END

IF ~~ n2.4
 SAY ~And that is precisely the problem, <CHARNAME>.  That, and the sand, heat, general lack of entertainment, and of course, the ever present threat of being squished underneath one of your dear brother's fiery boulders.  I would not have thought it possible that a place could be so deathly dull even in the midst of a siege, but your kin... they are a most unimpressive bunch. At least Ust Natha had excellent bathing facilities.~
IF ~~ + n2.5
END

IF ~~ n2.5
 SAY ~Old Bhaal wasn't very discerning at all, 'twould seem.  These sheep have not the mental facility to be afraid.  It is as if your great father took only the dull, and the meek.~
	++ ~Tell that to Sarevok.  And Yaga-Shura.~ + n2.6
	++ ~Daddy must have put so much time into me that he had precious little to spare on the rest of the fools.~ + n2.7
	++ ~They're confused and terrified.  How do you expect them to react?~ + n2.8
	++ ~Perhaps that was by design.~ + n2.9
END

IF ~~ n2.6
 SAY ~Yes, an ever diminishing handful seek to rise above the dreary mass... yourself included, dear.  I must allow you that much.  I suppose you deserve no less.~
IF ~~ + n2.10
END

IF ~~ n2.7
 SAY ~You certainly have the arrogance to make up for what your siblings lack, dear.  I must allow you that much. I suppose you deserve no less.~
IF ~~ + n2.10
END

IF ~~ n2.8
 SAY ~I would expect at least some dignity from the child of a god.  If these unimaginative swine are any true example, that was far too much to hope for.~
IF ~~ + n2.10
END

IF ~~ n2.9
 SAY ~Perhaps so... that is not a comforting thought, <CHARNAME>.~
IF ~~ + n2.10
END
 
IF ~~ n2.10
 SAY ~And yet here you are to be filed away with the rest of the multitude.  Nameless, faceless... just another oddly shaped shadow cast by daddy dearest.~ 
 = ~Years ago, when I was still in Lassal's service, I remember him once keeping a human... herd, so to speak.  Each girl was carefully selected, a lovely creature plucked from opulence in her prime... the precious things knew they were doomed. 'Twas merely a question of *when*.~
 = ~Forgive my nostalgia.  This place...this place reminds me of times past.  Dust, sand, smoke, and despair... this city would surely smother us beneath the weight of it all.~
	++ ~Nobody smothers <CHARNAME>!  Whatever this city has to throw at us, we'll weather it with ease, just you watch.~ + n2.11
	++ ~We've been herded, indeed.  By the gods.  This is, after all, where the prophesy is supposed to finally come to fruition.~ + n2.12
	++ ~The rest of the Bhaalspawn can crumble beneath its weight.  I for one don't intend to quietly accept my fate.~ + n2.13
	++ ~You really know how to brighten up my day, don't you?~ + n2.14
END

IF ~~ n2.11
 SAY ~We have weathered very little with ease, Bhaalspawn, but I do so hate to challenge your curious delusions.  They make you who you are.~
IF ~~ + n2.15
END

IF ~~ n2.12
 SAY ~And to what end, Bhaalspawn?  Must we continue to play out our preordained roles before this most uncaring of audiences?  I do so wonder, if we simply... quit, would another dashing hero be at hand to fill your rather unsightly boots?~
IF ~~ + n2.15
END

IF ~~ n2.13
 SAY ~Scream your defiance to the gods, Bhaalspawn.  Perhaps...perhaps they will even listen. But I would not count on it.  I fear you godspawn are one and the same to them.~
IF ~~ + n2.15
END

IF ~~ n2.14
 SAY ~I do so try, Bhaalspawn.~
IF ~~ + n2.15
END

IF ~~ n2.15
 SAY ~For once...for once I do not envy you.  Each of us believes we are special... a precious, singular creature that the Realms could simply not do without.  Even an elven lifespan is the flutter of a firefly's wings in the face of eternity, but... we do enjoy the believing.  I do not think it a conceit held only by the powerful.~
 = ~Yet you are at the mercy of fate in a way such that few others are.  You Bhaalspawn will clamour and climb over each other's corpses, but in the end...in the end, you are like so many wooden soldiers lined up by an overeager child.  Expendable and utterly interchangeable.~
	++ ~The one who survives will be the one who stands above.  We are no different from regular mortals in that regard.~ + n2.16
	++ ~My lady, such half-hearted attempts at getting a rise from me.  If you really thought I was interchangeable, you wouldn't still be here.~ + n2.17
	++ ~I'm no more at the mercy of fate than anyone else is.  I'm simply in the unique position of knowing my destiny beforehand.~ + n2.18
	++ ~Weren't you listening to the Solar?  She said the prophesies hinge upon me specifically.~ + n2.19
	++ ~Saradush is unpleasant enough without you spouting your morbid philosophy at me, woman.~ + n2.20
END

IF ~~ n2.16
 SAY ~No, perhaps not.  But will it be you who rises above? We simply cannot know.~
IF ~~ + n2.21
END

IF ~~ n2.17
 SAY ~No... no, I would not.  Perhaps that is the greatest conceit of all.~
IF ~~ + n2.21
END

IF ~~ n2.18
 SAY ~Ignorance... the sweetest of curses, though a curse nonetheless, dear.~  
IF ~~ + n2.21
END

IF ~~ n2.19
 SAY ~And you would listen to such a creature?  She may well say that to any halfway powerful Bhaalspawn she happens across, dear.  You simply cannot know.~
IF ~~ + n2.21
END

IF ~~ n2.20
 SAY ~I try your patience once again, I see.  Then I shall waste no more time on the topic... it will be what it will be.  In the end, it always is.~
IF ~~ EXIT
END

IF ~~ n2.21
 SAY ~But there is no advantage in wasting time contemplating the gods' meticulous planning... it will be what it will be.  In the end, it always is.~
IF ~~ EXIT
END
END

// 3. Wraith
CHAIN IF ~Global("LK#WraithTalk","GLOBAL",2)~ THEN LK#NI25J n3
~Don't, <CHARNAME>.  Not now.~
DO ~SetGlobal("LK#WraithTalk","GLOBAL",3)~
END
	++ ~What he said... it isn't true, Ninde.~ + n3.1
	++ ~It was a wraith, darling.  Psychological warfare.  Surely you know a thing or two about that yourself by now.~ + n3.1
	++ ~What a lovely man your ex was.~ + n3.2
	++ ~Hah!  How does it feel to be on the other side for once?~ + n3.3

APPEND LK#NI25J

IF ~~ n3.1
  SAY ~So it was all a lie?  And why, because the great <CHARNAME> proclaims it to be so?  Your ignorance is painful.  There is truth in what it said, or I would not--~
  IF ~~ + n3.4
END

IF ~~ n3.2
  SAY ~He was-- it is not for you to say what he was or was not!  I... you know nothing, boy, and your ignorance pains me to the bone.~
  IF ~~ + n3.4
END

IF ~~ n3.3
  SAY ~How very badly you have interpreted my mood, boy.  Be silent.  Now is... now is not the time.~
  IF ~~ + n3.4
END

IF ~~ n3.4
  SAY ~It is nothing I have not heard in the silences deep within.  Nothing I have not already thought a thousand times over.  But that... I had thought myself beyond this.  Beyond that life.~
  = ~How very foolish of me.~
	++ ~Nothing you hadn't thought?  What are you talking about?~ + n3.5
	++ ~You're many things, Ninde, but foolish is not one of them.~ + n3.5
	++ ~But you are beyond that.  You're no longer the silly little girl you may once have been.~ + n3.5
	++ ~Yes, yes.  Is this where I pretend to care?~ + n3.6
END

IF ~~ n3.5
 SAY ~Don't be so very naive, Bhaalspawn.  You know pieces of my story, slivers stitched together in whichever manner I thought most pleasing... enough at least that you should begin to understand.~
 = ~But it does not surprise me that you do not.  If I am still naught but shadow and illusion, then perhaps...perhaps you too see in me simply whatever you wish to see.  Whatever you expect to see.~
	++ ~Or perhaps I know you better now than you know yourself.~ + n3.7
	++ ~I assure you, Ninde, if your...many, many assets were illusory, I think I'd have noticed by now. (grin)~ + n3.8
	++ ~You're a hard woman to pin down beneath the shadows and illusions, but that doesn't mean there's nothing there.~ + n3.9
	++ ~Well, the image I've created for you is certainly preferable to the witch you really are.~ + n3.10
END

IF ~~ n3.6
 SAY ~You needn't pretend anything at all, Bhaalspawn.  If your conversational skills are truly so horrid, then I shan't waste my breath further.~
IF ~~ EXIT
END

IF ~~ n3.7
 SAY ~Or perhaps you are a fool.  A lovely, artless fool... but it has been a long <DAYNIGHT>, and I have much to think upon.  Go find your shadowy temple, my lord; I would speak of this no longer.~
IF ~~ EXIT
END

IF ~~ n3.8
 SAY ~Even for a man, you are singleminded, <CHARNAME>... but it has been a long <DAYNIGHT>, and I have much to think upon.  Go find your shadowy temple, my lord; I would speak of this no longer.~
IF ~~ EXIT
END

IF ~~ n3.9
 SAY ~Does it not?  You are a fool, <CHARNAME>.  A lovely, artless fool... but it has been a long <DAYNIGHT>, and I have much to think upon.  Go find your shadowy temple, my lord; I would speak of this no longer.~
IF ~~ EXIT
END

IF ~~ n3.10
 SAY ~Do you think your words would yet sting, my lord?  After those that came before?  You are a fool, <CHARNAME>.  A simpleminded fool.~
IF ~~ EXIT
END
END

// 4. unselfish
CHAIN IF ~Global("LK#NindeLoveTalksTOB","GLOBAL",5) !Global("LK#NindeSelfish","GLOBAL",1)~ THEN LK#NI25J n4
~It is truly an age of miracles we live in, <CHARNAME>, where one might lose a soul and win it back again... a life snatched from Kelemvor's grasp, as it were.  But perhaps it is less...jarring for you.  Your own divine spirit was only lost for a mere matter of weeks, if that.~
DO ~IncrementGlobal("LK#NindeLoveTalksTOB","GLOBAL",1)~
END
	++ ~Even so, being whole once more has taken some getting used to.~ + n4u.1
	++ ~Jarring?  Is it that difficult to suddenly care about things again?~ + n4u.2
	++ ~I'd say a soul restored is easily the least miraculous event we've been witness to recently.~ + n4u.3
	++ ~And yet that was more than long enough for the Slayer to take up permanent residence inside of me.  I can't imagine that your ordeal has left such side effects.~ + n4u.4

APPEND LK#NI25J

IF ~~ n4u.1
 SAY ~That is somewhat...comforting to know, Bhaalspawn.  I have found the experience... disconcerting.  It is as if the years have shrunk me, as if the soul that once fit so snugly is now overly large instead... ever so slightly out of place.  Uncomfortable.~
IF ~~ + n4u.5
END

IF ~~ n4u.2
 SAY ~You misjudge me, Bhaalspawn.  I have simply found the experience somewhat... disconcerting.  It is as if the years have shrunk me, as if the soul that once fit so snugly is now overly large instead... ever so slightly out of place.  Uncomfortable.~
IF ~~ + n4u.5
END

IF ~~ n4u.3
 SAY ~You have an astonishingly short memory, Bhaalspawn, or perhaps you simply do not wish to remember.  Only weeks ago you were but a mere husk, an empty vessel for a godling's soul... your sanity slipping away moment by moment, day by day.  Or is it that you have already lost it altogether, hmm?~
 = ~And perhaps...perhaps I have as well.  This entire experience has been... somewhat disconcerting, truth be told.  It is as if the years have shrunk me, as if the soul that once fit so snugly is now overly large instead... ever so slightly out of place.  Uncomfortable.~
IF ~~ + n4u.5
END

IF ~~ n4u.4
 SAY ~Shar, no.  Nothing quite so...unsubtle.  I have simply found the experience somewhat disconcerting.  It is as if the years have shrunk me, as if the soul that once fit so snugly is now overly large instead... ever so slightly out of place.  Uncomfortable.~
IF ~~ + n4u.5
END

IF ~~ n4u.5
 SAY ~Perhaps it is true that that which was once broken can never again be whole.~
	++ ~That is the sad truth of it, I'd agree.~ + n4u.6
	+ ~!Global("LK#NindeSelfish","GLOBAL",1)~ + ~If that's the case, you and I would have long since been doomed.~ + n4u.7
	+ ~Global("LK#NindeSelfish","GLOBAL",1)~ + ~If that's the case, you and I would have long since been doomed.~ + n4u.8
	++ ~And yet they say that past sorrow makes happiness all the sweeter.~ + n4u.9
	++ ~Don't regale me with defeatism, woman.  If you court failure, obviously you're going to receive it.~ + n4u.10
END

IF ~~ n4u.6
 SAY ~You are tediously amenable to<DAYNIGHT>, Bhaalspawn.  But this once, I shall not fault you for it.~
IF ~~ + n4u.11
END

IF ~~ n4u.7
 SAY ~This curious romance of ours... we stumble towards the sunlight, blinded and confused by its glare... I know not what to make of it.~
IF ~~ + n4u.11
END

IF ~~ n4u.8
 SAY ~And are we not, my lord?  This curious romance of ours, planted in the soils of damnation and nurtured in selfishness... I know not what to make of it.~
IF ~~ + n4u.11
END

IF ~~ n4u.9
 SAY ~They are easy words to speak for those who have never tasted true suffering.  Spare me the platitude, Bhaalspawn.~
IF ~~ + n4u.11
END

IF ~~ n4u.10
 SAY ~How very clever of you, Bhaalspawn.  Sometimes...sometimes I wonder how much we truly have in common, you and I -- you, who would surely be stricken down the instant you wavered, and myself... hmm.~
IF ~~ + n4u.11
END

IF ~~ n4u.11
 SAY ~I should not bask so in the irony of it all, and yet... hmm.  The whole of my life, I have spent in search of myself... my forgotten elven heritage, my very soul... 'Tis passing strange that every discovery, every victory, has only left me on yet shakier footing.~
	++ ~Welcome to my life.  I suppose there's nothing we can do but weather each storm as it comes.~ + n4u.12
	++ ~Your story may be a bit more...colourful than most, but this is what it means to be mortal.~ + n4u.13
	++ ~Don't tell me you preferred your life as a vicious, soulless harpy.~ + n4u.14
	++ ~Don't worry so, Ninde.  You just need some time to adjust to this.~ + n4u.15
END

IF ~~ n4u.12
 SAY ~Do not think for a moment that I have forgotten your nature, godchild, your own vibrant history.  The memory of it is etched upon my soul.~
IF ~~ + n4u.16
END

IF ~~ n4u.13
 SAY ~And yet we are not mere mortals, godchild.  When one has been violently removed from the masses of humanity, one cannot simply...saunter back into one's old life and expect to be accepted.~
IF ~~ + n4u.16
END

IF ~~ n4u.14
 SAY ~Your piteous attempts at humour are woefully lacking, godchild.  Life without a soul... 'tis a cruel paradox, my lord, a contradiction in terms.  You know that as well as I.~
IF ~~ + n4u.16
END

IF ~~ n4u.15
 SAY ~Time... time that I finally have once more: a true elven lifespan rather than the few paltry years to which I had thought myself condemned.  And you... you may yet attain even more.  As impossible as it may seem.~
IF ~~ + n4u.16
END

IF ~~ n4u.16
 SAY ~We crossed paths in despair, you and I... two shattered wretches, two stringless marionettes... we clutched at each other in the night, and I cannot help but wonder what the daylight shall mean for us.~
	++ ~Daylight?  With the prophecies unfolding around us?  Don't get ahead of yourself.~ + n4u.17
	++ ~Stop being so morose, Ninde.  Daylight usually means growth and joy.~ + n4u.18
	++ ~Usually it means another...thoroughly enjoyable night cut short much too quickly.~ + n4u.19
	++ ~You don't believe that this will actually work out?~ + n4u.20
END

IF ~~ n4u.17
 SAY ~Don't be absurd, darling.  No enemy, no matter how fearsome he thinks himself to be, compares to what we have already endured.  Your memory is dreadfully selective if you would say otherwise.~
IF ~~ EXIT
END

IF ~~ n4u.18
 SAY ~Save for the things it turns to dust and mist instead... things rather close in kinship to myself.  But forgive my pessimism, <CHARNAME>.  It has become something of a way of life for me.~
IF ~~ EXIT
END

IF ~~ n4u.19
 SAY ~(smile) So very like a man... but forgive my pessimism, <CHARNAME>.  I'm afraid it has become something of a way of life for me.~
IF ~~ EXIT
END

IF ~~ n4u.20
 SAY ~I...I do not know, <CHARNAME>.  I am like a child once more learning how to walk, and pessimism... it has become something of a way of life for me.~
IF ~~ EXIT
END
END

// 4. selfish
CHAIN IF ~Global("LK#NindeLoveTalksTOB","GLOBAL",5) Global("LK#NindeSelfish","GLOBAL",1)~ THEN LK#NI25J n4s
~Is there something I can do for you, my lord?  Fetch you a drink, perhaps, or conjure a kitchen and procure you a sandwich?~
DO ~IncrementGlobal("LK#NindeLoveTalksTOB","GLOBAL",1)~
END
  ++ ~Is that sarcasm I detect?~ + n4s.1
  ++ ~The drink certainly sounds nice.~ + n4s.2
  ++ ~It would have to be an undead kitchen to fit your area of expertise.~ + n4s.3
  ++ ~You could do considerably more than that, if you catch my drift.~ + n4s.4

APPEND LK#NI25J

IF ~~ n4s.1
 SAY ~Not at all, my Bhaalspawn.~
IF ~~ + n4s.5
END

IF ~~ n4s.2
 SAY ~Then I am...glad to be of service.~
IF ~~ + n4s.5
END

IF ~~ n4s.3
 SAY ~That would be a rather fascinating accomplishment indeed.~
IF ~~ + n4s.5
END

IF ~~ n4s.4
 SAY ~I am...quite certain that I could.~
IF ~~ + n4s.5
END

IF ~~ n4s.5
  SAY ~As a young maiden, I would have been excited at the prospect of perhaps one day being a thrall to some powerful lord... and here I am, at the feet of one of Toril's finest.  Surely there is something else I can do for you, oh lord Bhaalspawn, to take your pain and troubles away?~
  ++ ~Do you need to be so...difficult about this?~ + n4s.6
  ++ ~There are quite a number other things you could do, Ninde.~ + n4s.7
  ++ ~Well, I was thinking if you wove your hair into one of those intricate plaits we used to see in Amn...~ + n4s.8
  ++ ~You could drop the passive aggressive mockery, for one.~ + n4s.9
END

IF ~~ n4s.6
 SAY ~Difficult, my lord?~
IF ~~ + n4s.10
END

IF ~~ n4s.7
 SAY ~And so very few that you can manage by yourself, it would seem.~
IF ~~ + n4s.10
END

IF ~~ n4s.8
 SAY ~Am I to be your porcelain doll now, my lord, to dress and style as you wish?~
IF ~~ + n4s.10
END

IF ~~ n4s.9
 SAY ~I could, perhaps, but... that wouldn't do at all, I'm afraid.~
IF ~~ + n4s.10
END

IF ~~ n4s.10
 SAY ~Forgive me a little quiet bitterness if this is not at all what I had once imagined.  But I will serve you, one way or another, until the day I die.  But do not worry; 'tis a prospect I shall one day come to cherish, I am sure.~
 = ~And at the end of the day, of course, you wouldn't have chained me so if you didn't wish me to struggle at all, and so struggle I shall.  Not too much, of course, but... just a little.~
 	++ ~This wasn't...quite what I had in mind when I chose to restore you, you know.~ + n4s.11
 	++ ~I do like a good challenge, my dear.  It's a habit I'm sure I'll break you of eventually.~ + n4s.12
	++ ~I suppose I can't really stop you.~ + n4s.11
	++ ~It would certainly take the enjoyment out of talking to you if you didn't.~ + n4s.12
END

IF ~~ n4s.11
 SAY ~I'm sorry, my lord... did you wish me instead to be a tame and demure plaything instead?  Things do not always work out quite as we expect, I'm afraid, though I shall at least...attempt to please you.~
IF ~~ + n4s.12
END

IF ~~ n4s.12
 SAY ~(Ninde lets her figure-hugging robe slip slightly, revealing an eyeful of silken cleavage.) There.  Much better.  At least now you have something to keep you entertained until at last we come to rest this evening, blossom.~
 = ~Shall we be on our way?  I am sure you have better things to do than talk to little old me.~
IF ~~ EXIT
END
END

// 5. Saradush sacked
CHAIN IF ~Global("LK#NindeLoveTalksTOB","GLOBAL",7)~ THEN LK#NI25J n5
~Good morning, Bhaalspawn.  I trust you slept well last night?~
DO ~IncrementGlobal("LK#NindeLoveTalksTOB","GLOBAL",1)
RealSetGlobalTimer("LK#NindeLoveTalksTOBTimer","GLOBAL",2700)~
END
	++ ~After what happened in Saradush?  Are you mad, woman?~ + n5.1
	++ ~Well, you certainly did wear me out well enough for it, my dear.~ + n5.2
	++ ~About as well as you did... that being, not very well at all.~ + n5.3
	++ ~Like a babe, darling.  Until you woke me up with your own tossing and turning.~ + n5.4

APPEND LK#NI25J

IF ~~ n5.1
  SAY ~Mad?  Why, I would almost think that you no longer appreciated me, <CHARNAME>.  The events of the past few days aside, I...~
IF ~~ + n5.5
END

IF ~~ n5.2
  SAY ~Did I, truly?  Then you are alarmingly delicate for one of your...increasingly sparse race, <CHARNAME>.  The events of the past few days aside, I...~
IF ~~ + n5.5
END

IF ~~ n5.3
  SAY ~I truly did not think so.  The events of the past few days aside, I...~
IF ~~ + n5.5
END

IF ~~ n5.4
  SAY ~Your bravado is really quite overwhelming, <CHARNAME>.  The events of the past few days aside, I...~
IF ~~ + n5.5
END

IF ~~ n5.5
  SAY ~No. I will not lie, I... I did not sleep soundly. What happened was almost certainly for the best; no offense, blossom, but the Bhaalspawn are a scourge that must be wiped out.  Except for you, of course, but that goes without saying.~
	++ ~A scourge? It wasn't just Bhaalspawn who died in Saradush, you know.~ + n5.6
	++ ~And yet you don't seem particularly pleased with what happened.~ + n5.7
	++ ~I do hope there's a point to this rambling tangent of yours.~ + n5.8
	++ ~Certainly.  Let the rest of them burn, I say.~ + n5.9
END

IF ~~ n5.6
  SAY ~No, it was not, but Melissan's curious plan certainly ensured the vast majority were. Strange how these little quirks of fate work out. Still, you are right. There were innocents, who did nothing to deserve the fate handed to them.~
IF ~~ + n5.10
END

IF ~~ n5.7
  SAY ~... No. I cannot say that I am.~
IF ~~ + n5.10
END

IF ~~ n5.8
  SAY ~Is there ever, sweetness? But in this case... yes. I have a point. Or more, a... and if you repeat this to anyone, Bhaalspawn, I will deny it, but... a fear.~
IF ~~ + n5.10
END

IF ~~ n5.9
  SAY ~And happily enough, they are doing just that.~
IF ~~ + n5.10
END

IF ~~ n5.10
  SAY ~I am used to death. More than used to it. I have made it my art; it is my calling and my craft. But my reaction to what happened...~
  = ~It shocked me. I did not expect... to feel the way I do.~
	++ ~And how did you feel?~ + n5.11
	++ ~Death on such a massive scale is difficult for anyone to deal with.~ + n5.12
	++ ~I'm surprised you felt anything at all.  You never have before.~ + n5.13
	++ ~I'm not interested in a tender heart-to-heart, elf.~ + n5.14
END
  
IF ~~ n5.11
 SAY ~For the first time in a long time, I find myself--unsure. A ridiculous thing to say, really, how can one not know their own feelings? And yet...~
IF ~!Global("LK#NindeSelfish","GLOBAL",1)~ + n5.15
IF ~Global("LK#NindeSelfish","GLOBAL",1)~ + n5.26
END
  
IF ~~ n5.12
 SAY ~It has never troubled me in the past. Death is a perfectly normal and natural part of life, war is an inevitably murder-filled affair, and I have seen it before. Yet...~
IF ~!Global("LK#NindeSelfish","GLOBAL",1)~ + n5.15
IF ~Global("LK#NindeSelfish","GLOBAL",1)~ + n5.26
END

IF ~~ n5.13
 SAY ~And as per usual, honeyblossom, you skip the tedious pleasantries and skip directly to the heart of the matter, as it were. No. I am not usually... weak. And yet...~
IF ~!Global("LK#NindeSelfish","GLOBAL",1)~ + n5.15
IF ~Global("LK#NindeSelfish","GLOBAL",1)~ + n5.26
END
  
IF ~~ n5.14
 SAY ~I see. You... you are right, of course. Such things should not be shared, even amongst such as ourselves. Suffice to say that I... nevermind. Let us continue, and save such discussions for others more worthy of them.~
IF ~~ EXIT
END

IF ~~ n5.15
  SAY ~Nightmares plagued me throughout the night. I saw their faces, all of them, their hands pitifully reaching out to me as they were slaughtered by Yaga Shura's men. And all I could do was stand there and watch while thousands were cut down.~
  = ~I have not shed tears in many, many years, but this... When I awoke, my face was soaked with them.~
	++ ~There's nothing wrong with tears, Ninde.~ + n5.16
	++ ~And to think, if we were a bit faster, we might have managed to save some of them.~ + n5.17
	++ ~Does this mean I should finally be welcoming you back to humanity?~ + n5.18
	++ ~This cloying sentimentality hardly becomes you.~ + n5.19
END

IF ~~ n5.16
 SAY ~Oh, tears have their place--primarily as tool for coercion or deception, and occasionally even seduction, if the setting is right... but true tears are the domain of lily-white maidens, green and unwise in the way of the world. And I am no maiden.~
IF ~~ + n5.20
END

IF ~~ n5.17
 SAY ~Ever the optimist, peaches. No, were we faster, we would more likely have ended up the same way, battered, broken and unrecognisable.~
IF ~~ + n5.20
END

IF ~~ n5.18
 SAY ~I am not human, nor will I ever be. And no, it is not in me to be... kind, or good, or generous. But lately...~
IF ~~ + n5.20
END
  
IF ~~ n5.19
 SAY ~Do I look as if I am enjoying it? I should certainly hope not. It is not... this is not me. This is not how I am meant to feel.~
IF ~~ + n5.20
END

IF ~~ n5.20
  SAY ~I... my Bhaalspawn, I feel as if I do not know myself anymore. Who am I? Who is this woman I am becoming? She feels... weak, and womanish, and I am not sure if I like her at all. Is this what I am meant to be? Is this what having a soul means?~
  = ~Take... take it back, please. I beg you. I don't want this. I want to be strong again.~
	++ ~There's no weakness in caring, Ninde.  Nor is there any strength in apathy.~ + n5.21
	++ ~You knew what you were asking for.  Not every aspect of having a soul is pleasant.~ + n5.22
	++ ~Then learn how to harden yourself again.  You're just out of practice.~ + n5.23
	++ ~I can't.  You know it doesn't work like that.~ + n5.24
END

IF ~~ n5.21
 SAY ~Such a meager pearl of wisdom you offer me... no doubt plucked the pages of a book in Candlekeep. No... no, I have no interest in this meaningless drivel. I-- no.~
IF ~~ + n5.25
END

IF ~~ n5.22
 SAY ~No, I never thought it would be, but-- no.~
IF ~~ + n5.25
END

IF ~~ n5.23
 SAY ~Perhaps.  I certainly have not needed to contend with such... emotions in recent years, but-- no.~
IF ~~ + n5.25
END

IF ~~ n5.24
 SAY ~And the Seldarine are no doubt laughing at me for my foolishness, but-- no.~
IF ~~ + n5.25
END

IF ~~ n5.25
 SAY ~I have already spoken too much, I think.  Weak I may be, but not so very weak as to parade it for all of the world to see.  Do not... do not think to hear such words from me again, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ n5.26
 SAY ~No.  You would no doubt think me a childish fool were I to share my innermost thoughts with you.  Our...arrangement does not allow for such intimacy.  I shall not beg your compassion, my lord.~
IF ~~ EXIT
END
END

// 6. unselfish
CHAIN IF ~Global("LK#NindeLoveTalksTOB","GLOBAL",9) !Global("LK#NindeSelfish","GLOBAL",1)~ THEN LK#NI25J n6u
~Sometimes I fear that the world has left me behind.  A relic of an age now past... a lost little girl who never had the chance to become her own woman.~
DO ~IncrementGlobal("LK#NindeLoveTalksTOB","GLOBAL",1)
RealSetGlobalTimer("LK#NindeLoveTalksTOBTimer","GLOBAL",2700)~
END
	++ ~You've had more chances than I ever did, Ninde.~ + n6u.1
	++ ~Your opportunities may have been... curtailed by bad choices, but you certainly have your chance now.~ + n6u.2
	++ ~And here I had hoped that getting your soul back would make you less prone to melancholic introspection.~ + n6u.3
	++ ~Everyone feels that way from time to time, I think.~ + n6u.4
	++ ~Tell it to someone who cares, lady.~ + n6u.5

APPEND LK#NI25J

IF ~~ n6u.1
 SAY ~Fatalism does not become you, my Bhaalspawn.  No, I do not speak of the lost opportunities, the paths untaken... 'tis what followed that concerns me.~
IF ~~ + n6u.6
END

IF ~~ n6u.2
 SAY ~Perhaps.  But that chance... it frightens me, Bhaalspawn.  I am not entirely certain of why.  The past years...~ 
IF ~~ + n6u.6
END

IF ~~ n6u.3
 SAY ~Then you were a fool, Bhaalspawn.  The past years...~ 
IF ~~ + n6u.6
END

IF ~~ n6u.4
 SAY ~I am not everyone, Bhaalspawn, and my situation is... very nearly unique.~
IF ~~ + n6u.6
END

IF ~~ n6u.5
 SAY ~Very well, my lord.  When your nights grow as cold as your temper, do not expect me to be eager to warm your lonely bed.~
IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ n6u.6
 SAY ~When one lacks a soul, it is as if time itself stops.  Numbered though my days may have been, I remained... trapped, as it were.  An unfinished portrait, a lifeless doll pretending to be a woman.  Ceaselessly I would play the selfsame role I had adopted with the Night Hand, though I did not recognise it--~
 = ~Nay, I *could* not recognise it, I think.  Not until now.  How we delude ourselves.~
	++ ~And all of that is in the past.  It hardly matters now.~ + n6u.7
	++ ~Time certainly didn't seem to stop for Bodhi and Irenicus.~ + n6u.8
	++ ~Admitting past mistakes can be difficult for anyone.~ + n6u.9
	++ ~Gods, woman.  Can't you talk about anything besides your soul?~ + n6u.10
END

IF ~~ n6u.7
 SAY ~Truly?  But what are we but extensions of out individual pasts?~
IF ~~ + n6u.11
END

IF ~~ n6u.8
 SAY ~And yet their...ever so creative goals never seemed to evolve.~
IF ~~ + n6u.11
END

IF ~~ n6u.9
 SAY ~I do not speak of mistakes, Bhaalspawn, but of...unusual fates.~
IF ~~ + n6u.11
END

IF ~~ n6u.10
 SAY ~I am terribly sorry to bore you so, Bhaalspawn.~
IF ~~ EXIT
END

IF ~~ n6u.11
 SAY ~I thought... I had thought that I needed only to become accustomed to having a soul once more, but this strangeness... it runs deeper than I had believed.  Far deeper.~
	++ ~How so?~ + n6u.12
	++ ~And I'm sure you're going to explain--in copious detail--exactly how much deeper.~ + n6u.13
	++ ~Obsessing over it certainly isn't going to help you.  Or me.~ + n6u.14
	++ ~In my experience, it usually does.~ + n6u.15
END

IF ~~ n6u.12
 SAY ~It is no easy thing to describe, dear.  Even for me.  Hmm.~
IF ~~ + n6u.16
END

IF ~~ n6u.13
 SAY ~I should hate to disappoint you by refusing, dear.~
IF ~~ + n6u.16
END

IF ~~ n6u.14
 SAY ~Perhaps there is some truth to that, though I am not certain that I can do otherwise.~
IF ~~ EXIT
END

IF ~~ n6u.15
 SAY ~Godchild, your experiences are no doubt quite different from my own.  But perhaps...perhaps I can better describe it.~
IF ~~ + n6u.16
END

IF ~~ n6u.16
 SAY ~The role I once played with such relish... the consort, the harlot queen, if you would... it is empty to me now, its memory bitter like ashes in my mouth.  And yet even that memory has lost a measure of its reality, as if the weight of my soul would thrust the nightmare's aside--~
 = ~But I am sure this all sounds rather mad to you, blossom.  And perhaps I even am mad.  It...it would not surprise me.~
	++ ~Indeed, you're completely bonkers, my dear.~ + n6u.17
	++ ~It really seems a bit too frightening to be madness.~ + n6u.18
	++ ~With identity crises like this, you're beginning to sound like me.~ + n6u.19
	++ ~You have the chance to become someone new, Ninde.  Someone better.  I suggest you take it.~ + n6u.20
END

IF ~~ n6u.17
 SAY ~You do know how to cheer a girl up, Bhaalspawn.  But forgive my morbid obsessions... I am afraid they occupy my mind far too often these <DAYNIGHT>s.~
IF ~~ EXIT
END

IF ~~ n6u.18
 SAY ~You have a remarkable talent for understatement, Bhaalspawn.  But forgive my morbid obsessions... I am afraid they occupy my mind far too often these <DAYNIGHT>s.~
IF ~~ EXIT
END

IF ~~ n6u.19
 SAY ~I should really think it the reverse, Bhaalspawn, seeing as how I am your senior.  But forgive my morbid obsessions... I am afraid they occupy my mind far too often these <DAYNIGHT>s.~
IF ~~ EXIT
END

IF ~~ n6u.20
 SAY ~Bhaalspawn, your sentimentality truly knows no bounds.  Someone new would bore me, I think.  But forgive my morbid obsessions... I am afraid they occupy my mind far too often these <DAYNIGHT>s.~
IF ~~ EXIT
END
END

// 6. selfish
CHAIN IF ~Global("LK#NindeLoveTalksTOB","GLOBAL",9) Global("LK#NindeSelfish","GLOBAL",1)~ THEN LK#NI25J n6s
~I'm afraid I find myself feeling altogether rather lacklustre to<DAYNIGHT>, my lord, so forgive me if I do not have it in me to lavish affection upon you this once.~
DO ~IncrementGlobal("LK#NindeLoveTalksTOB","GLOBAL",1)
RealSetGlobalTimer("LK#NindeLoveTalksTOBTimer","GLOBAL",2700)~
END
	++ ~This really isn't like you, Ninde.~ + n6s.1
	++ ~I hope you're still not moaning about Saradush.~ + n6s.2
	++ ~How terribly disappointing.~ + n6s.4
	++ ~Fortunately, I'm quite too busy for any such nonsense today anyway.  We can talk later.~ + n6s.3

APPEND LK#NI25J

IF ~~ n6s.1
 SAY ~I...truly could no longer say what is and isn't like me, dearest.~
IF ~~ + n6s.4
END

IF ~~ n6s.2
 SAY ~Nay, dearest.  Nothing of the sort.~
IF ~~ + n6s.4
END

IF ~~ n6s.3
 SAY ~As you wish, dearest.~
IF ~~ EXIT
END

IF ~~ n6s.4
  SAY ~(She smiles thinly, brushing a careless hand across your chest.) Was this how you imagined it would be, when I sold my soul to you?  There are other ways I can dress it up of course, if you'd like, but at the heart of it... nay, 'tis not my own at all.~
  ++ ~And I'm certainly glad you realise that, darling.  It makes things that much easier.~ + n6s.5
  ++ ~I'd rather you at least tried to make our situation sound a little less...extreme.~ + n6s.6
  ++ ~You were happy enough when we first agreed to this.~ + n6s.7
  ++ ~Still, it's better than none at all, isn't it?~ + n6s.8
END

IF ~~ n6s.5
 SAY ~I do not doubt that it does... for you, at least.~
IF ~~ + n6s.9
END

IF ~~ n6s.6
 SAY ~I shall call it what it is, Bhaalspawn.  Over my words, at least, you have so very little power at all.~
IF ~~ + n6s.9
END

IF ~~ n6s.7
 SAY ~Indeed, I was... then.  Now, however... now I am not so very certain at all.~
IF ~~ + n6s.9
END

IF ~~ n6s.8
 SAY ~Perhaps... though sometimes it is really quite difficult to tell.~
IF ~~ + n6s.9
END

IF ~~ n6s.9
 SAY ~The very sight of you revolts me sometimes, you know.  And I think you enjoy that as well... the effect you have on me.  You enjoy the control.  I must admit that I enjoy it too, in a perverse sort of way.  Strangely enough, I find it... liberating.~
	++ ~Heh. Why make your own decisions when you can let someone else make them for you?~ + n6s.10
	++ ~Well, it isn't as if there's anything about you that hasn't always been perverse.~ + n6s.11
	++ ~Control, my dear Ninde... yes, it always has been the thing dearest to my shrivelled black heart.~ + n6s.12
	++ ~You've misjudged me entirely, I'm afraid.~ + n6s.13
END

IF ~~ n6s.10
 SAY ~Why indeed?  It is certainly simpler, in its own way, and yet...~
IF ~~ + n6s.14
END

IF ~~ n6s.11
 SAY ~Perverse though I may be... I do not know.~
IF ~~ + n6s.14
END

IF ~~ n6s.12
 SAY ~I do not doubt that for a moment, Bhaalspawn.~
IF ~~ + n6s.14
END

IF ~~ n6s.13
 SAY ~Have I?  Or perhap I simply know you better than you know yourself, Bhaalspawn.~
IF ~~ + n6s.14
END

IF ~~ n6s.14
  SAY ~Sometimes I wonder if I truly knew what it entailed, selling myself to you despite Ellesime's objections.  Perhaps... perhaps she was right.~
  ++ ~Well, it's somewhat too late to change your mind now.~ + n6s.15
  ++ ~You'd really prefer the alternative?~ + n6s.16
  ++ ~Oh, don't bring up the vapid little elf queen now, woman.~ + n6s.17
  ++ ~She almost certainly was, I have to admit.~ + n6s.18
END

IF ~~ n6s.15
 SAY ~Yes, 'tis something of a moot point now anyway, I suppose.  And slavery is better than death in any existence.~
IF ~~ EXIT
END

IF ~~ n6s.16
 SAY ~I... no.  No, I would not.  'Tis something of a moot point now anyway, I suppose, and you are correct... slavery is better than death in any existence.~
IF ~~ EXIT
END

IF ~~ n6s.17
 SAY ~As you wish, my lord.  'Tis something of a moot point now anyway, I suppose.  Slavery is better than death in any existence.~
IF ~~ EXIT
END

IF ~~ n6s.18
 SAY ~No matter.  'Tis something of a moot point now anyway, I suppose.  Slavery is better than death in any existence.~
IF ~~ EXIT
END
END

// 7. unselfish
CHAIN IF ~Global("LK#NindeLoveTalksTOB","GLOBAL",11) !Global("LK#NindeSelfish","GLOBAL",1)~ THEN LK#NI25J n7u
~I am...not who I once was, <CHARNAME>.  The girl I used to be... even the woman who first climbed with you out of Bodhi's crypt all those months ago... they are but distant memories now.  Or the memory of a memory, mayhap, faded and distorted until nothing remains that is not...alien to me now.~
= ~When I look at myself, 'tis as if I am suddenly peering into a carnival's trick mirror, Bhaalspawn.  That is...very frightening.~
DO ~IncrementGlobal("LK#NindeLoveTalksTOB","GLOBAL",1)~
END
	++ ~We live, we grow... we leave behind the people we used to be.~ + n7u.1
	++ ~Well, you're certainly the same old Ninde to me... albeit, newly ensouled.~ + n7u.2
	++ ~I think what's happening in Tethyr is having that effect on all of us.~ + n7u.3
	++ ~If you must indulge in soul-searching, have the decency to at least do it in private.~ + n7u.4

APPEND LK#NI25J

IF ~~ n7u.1
 SAY ~I am no normal woman, <CHARNAME>, no infantile schoolgirl hoping to discover herself or some similar childish drivel.  No, this is something... darker.  Something vastly more profound.~
IF ~~ + n7u.5
END

IF ~~ n7u.2
 SAY ~Am I?  I do not believe so.  I am no normal woman, <CHARNAME>, no infantile schoolgirl hoping to discover herself or some similar childish drivel.  No, this is something... darker.  Something vastly more profound.~
IF ~~ + n7u.5
END

IF ~~ n7u.3
 SAY ~I am no normal woman, <CHARNAME>, no blushing maiden to be overly troubled by the realities of war.  No, this is something... darker.  Something vastly more profound.~
IF ~~ + n7u.5
END

IF ~~ n7u.4
 SAY ~This is... this is more than mere soul-searching, <CHARNAME>.  No, it is something... darker.  Something vastly more profound.~
IF ~~ + n7u.5
END

IF ~~ n7u.5
 SAY ~I once thought that mayhap I could simply return to what I had been before, that I could turn back the sands of time and once more be that young girl at her father's funeral, his heart's blood still warm upon her hands... metaphorically speaking, of course.~
 = ~But I find that she is now lost to me as well--and more, that I would not wish to return even if I could.  I am...anchorless, my Bhaalspawn, in an increasingly unfamiliar world.~
	++ ~You couldn't have gone back anyway.  There's nowhere to go but forward.~ + n7u.6
	++ ~Then let me be your anchor, if nothing else remains.~ + n7u.7
	++ ~Then what now?~ + n7u.8
	++ ~You really are utterly self-absorbed, aren't you?  Stop thinking that you're the only one in the Realms who has ever felt like this.~ + n7u.9
END

IF ~~ n7u.6
 SAY ~Forward... forward frightens me, dear, loath as I am to admit it.  Because you and I, <CHARNAME>--~
IF ~~ + n7u.10
END

IF ~~ n7u.7
 SAY ~I...no longer believe that to be possible, dear.  You and I--~
IF ~~ + n7u.10
END

IF ~~ n7u.8
 SAY ~Now... I do not know, dear, loath as I am to admit it.  Because you and I, <CHARNAME>--~
IF ~~ + n7u.10
END

IF ~~ n7u.9
 SAY ~I have little enough interest in the concerns of other people, as you well know.  But perhaps it is for the best that this still frustrates you, because you and I, <CHARNAME>--~
IF ~~ + n7u.10
END

IF ~~ n7u.10
 SAY ~I loved you once... as much as a soulless puppet can be said to love at all, but now... now I wonder if I ever truly knew what love was.  'Twas the bedrock upon which I raised the pillars of my ruined life, yes, but... that foundation was flawed.  Fatally so.~ 
	++ ~What...are you saying?~ + n7u.11
	++ ~You knew what love was.  Always.  What you did for Respen... that was love.~ + n7u.12
	++ ~By the gods, sometimes I think you were easier to deal with when you still had no soul.~ + n7u.13
	++ ~Then build a new foundation, woman.  It isn't so difficult.~ + n7u.14
END

IF ~~ n7u.11
 SAY ~I have been considering my situation, and I find... I'm afraid I find that the words the wraith spoke so long ago have remained imprinted upon my mind.  Even now.  I have ever been the plaything of some man or another... never even wondering who I might be without the seductive thrill of courtship.~
IF ~~ + n7u.15
END

IF ~~ n7u.12
 SAY ~But the rest, <CHARNAME>... the rest was never love.  Not truly.  It was...too ugly to be that.  I have been considering my situation, and I find... I'm afraid I find that the words the wraith spoke so long ago have remained imprinted upon my mind.  Even now.  I have ever been the plaything of some man or another... never even wondering who I might be without the seductive thrill of courtship.~
IF ~~ + n7u.15
END

IF ~~ n7u.13
 SAY ~Yes, the realities of my situation did not trouble me as much then as they have since come to.  I find... I'm afraid I find that the words the wraith spoke so long ago have remained...imprinted upon my mind.  Even now.  I have ever been the plaything of some man or another... never even wondering who I might be without the seductive thrill of courtship.~
IF ~~ + n7u.15
END

IF ~~ n7u.14
 SAY ~For you, perhaps it is not.  For me... it is different, I fear.  The words the wraith spoke so long ago have remained...imprinted upon my mind.  Even now.  I have ever been the plaything of some man or another... never even wondering who I might be without the seductive thrill of courtship.~
IF ~~ + n7u.15
END

IF ~~ n7u.15
 SAY ~I have been a fool, I think.  We have both been fools.~
	++ ~You don't really mean this.~ + n7u.16
	++ ~Our love... it isn't like that, Ninde.~ + n7u.17
	++ ~Then... much as it pains me to say it, perhaps it's time you found out.~ + n7u.18
	++ ~I certainly have been, not to realise that you're still the same emotionally manipulative bitch that you always were.~ + n7u.19
END

IF ~~ n7u.16
 SAY ~I...do.  I am sorry, but I do.~
IF ~~ + n7u.20
END

IF ~~ n7u.17
 SAY ~Perhaps... perhaps not.  I am...no longer so certain.~
IF ~~ + n7u.20
END

IF ~~ n7u.18
 SAY ~I... I am glad you understand.~
IF ~~ + n7u.20
END

IF ~~ n7u.19
 SAY ~And so we finish at last in ruin, my Bhaalspawn... our love turned to ashes and hatred.  Perhaps...perhaps it was always meant to end thus.~
IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ n7u.20
 SAY ~I had thought our love was one to last the ages, but that fantasy... 'twas but the death-pangs of the hopeless romantic I once was... the bored little girl who needed only the allure of danger--the taste of glory--to yield herself entirely.  But that child... she is no more.~
	++ ~I do understand.~ + n7u.21
	++ ~I don't accept this, Ninde.  Not for a moment!~ + n7u.22
	++ ~A pity.  I did like her.~ + n7u.23
	++ ~But you don't need to shut the door on us entirely.~ + n7u.24
END

IF ~~ n7u.21
 SAY ~Thank you, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ n7u.22
 SAY ~There is nothing to accept, <CHARNAME>.  In the end, this is not your choice to make.~
IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ n7u.23
 SAY ~I know, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ n7u.24
 SAY ~Perhaps not, but for the moment... for the moment, I must.~
IF ~~ EXIT
END
END

// 7. selfish
CHAIN IF ~Global("LK#NindeLoveTalksTOB","GLOBAL",11) Global("LK#NindeSelfish","GLOBAL",1)~ THEN LK#NI25J n7s
~Bhaalspawn, I... my lord.  I do not believe that I can do this any longer.~
DO ~IncrementGlobal("LK#NindeLoveTalksTOB","GLOBAL",1)~
END
  ++ ~I hope you're not planning on running off on me now.~ + n7s.1
  ++ ~You can't do what, exactly?~ + n7s.2
  ++ ~Wonderful.  Another round of combat with you, is it?~ + n7s.3
  ++ ~Tell it to someone who cares.~ + n7s.4

APPEND LK#NI25J

IF ~~ n7s.1
 SAY ~No, <CHARNAME>, but I cannot do... this.  This *mockery* of love, of life... faced with a future at your side, with freedom some cruel joke only enjoyed by others and spoken of only in books--~
IF ~~ + n7s.5
END

IF ~~ n7s.2
 SAY ~This, <CHARNAME>.  You and I.  Faced with a future at your side, with freedom some cruel joke only enjoyed by others and spoken of only in books--~
IF ~~ + n7s.5
END

IF ~~ n7s.3
 SAY ~Our very last round, <CHARNAME>, because you and I... faced with a future at your side, with freedom some cruel joke only enjoyed by others and spoken of only in books--~
IF ~~ + n7s.5
END

IF ~~ n7s.4
 SAY ~Your concern is irrelevant, <CHARNAME>.  You and I... faced with a future at your side, with freedom some cruel joke only enjoyed by others and spoken of only in books--~
IF ~~ + n7s.5
END

IF ~~ n7s.5
  SAY ~I find myself hesitating.  No, not hesitating... *refusing*, my lord.  I must be my own woman, free from you... free from any man. I have lived so much of my life in the shadow of great men who cared naught for me, and I...I am done.~
	++ ~But what about your promise?~ + n7s.6
	++ ~And you think I'm simply going to let you walk away?~ + n7s.7
	++ ~It certainly took you long enough.~ + n7s.8
	++ ~And if you find that you're nothing without those great men?~ + n7s.9
END

IF ~~ n7s.6
 SAY ~My promise... have I not always been a creature of lies, Bhaalspawn?~
IF ~~ + n7s.10
END

IF ~~ n7s.7
 SAY ~I do not see that you have a say in the matter.~
IF ~~ + n7s.10
END

IF ~~ n7s.8
 SAY ~Yes... longer than it should have, I admit.~
IF ~~ + n7s.10
END

IF ~~ n7s.9
 SAY ~Then I shall simply have to remake myself once again... that possibility is not as frightening to me as staying, Bhaalspawn.~
IF ~~ + n7s.10
END

IF ~~ n7s.10
  SAY ~When I agreed to this cursed arrangement, I was soulless, dying.  I would have done anything, said anything to regain that infernal spark.  And now that I have it, and I know I cannot abide by your terms.~
	++ ~If not for me, you wouldn't have that soul at all.~ + n7s.11
	++ ~Then you're just going to leave me?~ + n7s.12
	++ ~I...do care for you, Ninde.  Despite whatever arrangement lay between us.~ + n7s.13
	++ ~Once a treacherous bitch, always a treacherous bitch, I see.~ + n7s.14
END

IF ~~ n7s.11
 SAY ~I am well aware of that, my lord.~
IF ~~ + n7s.15
END

IF ~~ n7s.12
 SAY ~I shall not simply...abandon you to your fate, Bhaalspawn, but yes... whatever was once between us is now dead.  Irrevocably so.~
IF ~~ + n7s.15
END

IF ~~ n7s.13
 SAY ~Do you truly?  I...I am afraid that is no longer enough, my lord.~
IF ~~ + n7s.15
END

IF ~~ n7s.14
 SAY ~You may call me what you will, Bhaalspawn, but my decision is made.~
IF ~~ + n7s.15
END

IF ~~ n7s.15
  SAY ~You have done much for me, and I am grateful.  But this is no life.  This... this half-life I am living is a mockery of the life I once led, but I am grown, and I deserve better.  I am better than some owned concubine, twisting and flailing at the word of some petty lord.~
  = ~I have lived that life, and I shall not do so again.  I think I would rather die.~
	++ ~Without my protection, you very well might.~ + n7s.16
	++ ~Then... I understand.~ + n7s.17
	++ ~And if I were to release you from your promise?~ + n7s.18
	++ ~Better?  You're nothing more than a common whore, Ninde.~ + n7s.19
END  

IF ~~ n7s.16
 SAY ~Perhaps... though I am an archmage in my own right, blossom, and I survived without you well enough before.~
 = ~I shall see this...increasingly tiresome quest of yours through its end, but then... then we shall part ways, my lord.  Forever, perhaps.~
IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ n7s.17
 SAY ~Thank you, <CHARNAME>.  As for my part... I shall see this quest of yours through its end, but then... then we shall part ways, my lord.  Forever, perhaps.~
IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ n7s.18
 SAY ~I shall not stay or go at your whim, <CHARNAME>.  The choice... the choice is mine.  Perhaps it always was.~
 = ~I shall see this...increasingly tiresome quest of yours through its end, but then... then we shall part ways, my lord.  Forever, perhaps.~
IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ n7s.19
 SAY ~Then you will have no trouble finding a replacement, I am sure.  I shall see this...increasingly tiresome quest of yours through its end, but then... then we shall part ways, my lord.  Forever, perhaps.~
IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END
END

// 8. final talk, unselfish
CHAIN IF ~Global("LK#NindeFinalTalkTOB","GLOBAL",2)~ THEN LK#NI25J n8
~I fear I may not get the chance to speak with you again, <CHARNAME>, and that... I would regret that most bitterly.  If I have been... cruel with you--and with your heart--then I am sorry.~  
DO ~IncrementGlobal("LK#NindeFinalTalkTOB","GLOBAL",1)~
END
	++ ~I do understand your predicament, Ninde.~ + n8.1
	++ ~And?~ + n8.4
	++ ~It isn't as if I'm unaccustomed to cruelty from you by now.~ + n8.2
	++ ~Frankly, darling, I don't want to hear it this time.~ + n8.3

APPEND LK#NI25J

IF ~~ n8.1
 SAY ~And I thank you for that.~
IF ~~ + n8.4
END

IF ~~ n8.2
 SAY ~No... no, you are not.  And yet...~
IF ~~ + n8.4
END

IF ~~ n8.3
 SAY ~Then this is how we finish... our love turned instead to ashes and hatred.  Perhaps...perhaps it was always meant to end thus.~
IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ n8.4
 SAY ~My words were as true then as they are now.  I have been someone else's plaything for far too long, and for once... for once I must learn to stand on my own, but you--~
 = ~You are no Sykre.  And you are no Lassal.~
 	++ ~What are you saying?~ + n8.5
	++ ~Don't be so sure of that.~ + n8.6
	++ ~You're right.  I'm not.~ + n8.8
	++ ~For one, unlike all of your old lovers, I'm still breathing.~ + n8.7
END

IF ~~ n8.5
 SAY ~I... I do not know.  Not yet.~
IF ~~ + n8.8
END

IF ~~ n8.6
 SAY ~There is nothing I have ever been more certain of, Bhaalspawn.~
IF ~~ + n8.8
END

IF ~~ n8.7
 SAY ~Duly noted, Bhaalspawn.~
IF ~~ + n8.8
END

IF ~~ n8.8
 SAY ~When this is over-- *if* this is over, perhaps I should say instead, but I have learned never to underestimate you.  When this is over, we shall need to speak, you and I.  To see... to see whatever might yet be seen.~
 = ~I can promise you nothing... nothing but hope, at least.  But hope, I think, is the most powerful force that there is.~
	++ ~Then it will have to be enough.~ + n8.9
	++ ~Do you really think it's possible that this can still work?~ + n8.10
	++ ~I simply *knew* you still loved me, darling.~ + n8.11
	++ ~If you think I still want anything to do with you, woman, you're really quite mad.~ + n8.12
END

IF ~~ n8.9
 SAY ~Yes... yes, it will.~
IF ~~ + n8.13
END

IF ~~ n8.10
 SAY ~I am no diviner, <CHARNAME>.  I cannot say for certain.~
IF ~~ + n8.13
END

IF ~~ n8.11
 SAY ~I...I think I might like to try, if nothing else.~
IF ~~ + n8.13
END

IF ~~ n8.12
 SAY ~Then this is how we finish... our love turned instead to ashes and hatred.  Perhaps...perhaps it was always meant to end thus.~
IF ~~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ n8.13
 SAY ~But now is not the time for this.  Now...now we must instead meet destiny once again, my Bhaalspawn, and hope we can prevail one final time.~
IF ~~ EXIT
END
END

// ---------------------------------------------
// Ninde Talks, Unrestored
// ---------------------------------------------
// 1. Saradush Prison
CHAIN IF ~Global("LK#NindeSaradushVampires","GLOBAL",1)~ THEN LK#NI25J p1
~The merciless blade... the name becomes you, Bhaalspawn.~
DO ~SetGlobal("LK#NindeSaradushVampires","GLOBAL",2)~
END
	++ ~I save my mercy for those that deserve it.~ + p1.1
	++ ~As poetic as it is accurate.  I'll need to see to it that the bards remember that one.~ + p1.2
	++ ~Vampires.  Melodramatic to the last.~ + p1.3
	++ ~You sound odd, Ninde.  Well, odder than usual.~ + p1.4
	++ ~Save it for later, woman.  I need to concentrate.~ + p1.5

APPEND LK#NI25J

IF ~~ p1.1
 SAY ~How terribly predictable, blossom.  Particularly when you have more in common with those you would condemn than whatever tired ideal of justice you have in mind.  These ill-starred fools, though... hmm.~
IF ~~ + p1.6
END

IF ~~ p1.2
 SAY ~And unlike these ill-starred fools, you may yet have the chance to leave a legacy behind.  No ignominious ending for <CHARNAME>.  Hmm.~
IF ~~ + p1.6
END

IF ~~ p1.3
 SAY ~When one lacks a soul, one is inclined to become sentimental about the strangest of things.  Really, dear, I would expect you to have a longer memory.~
IF ~~ + p1.6
END

IF ~~ p1.4
 SAY ~Odd?  Perhaps.  When one lacks a soul, one is inclined to be sentimental about the strangest of things, dear.~
IF ~~ + p1.6
END

IF ~~ p1.5
 SAY ~Do you?  I am quite sure that is difficult enough for you without my distractions.~
IF ~~ EXIT
END

IF ~~ p1.6
 SAY ~It is almost...sad to see just how far this coven had fallen.  Bodhi's tastes in accomodations were dreadful enough, but even her garish hieroglyphs were preferable to this...this travesty.  One can be dead--or technically so--without *living* like it.~
	++ ~I don't know.  The honesty is somewhat refreshing.~ + p1.7
	++ ~Is that supposed to be clever wordplay?  You're off your game, Ninde.~ + p1.8
	++ ~Well, they're entirely dead now, and their terrible fashion sense along with them.~ + p1.9
	++ ~Luring the unsuspecting in with the promise of sex... I'd have thought that you would sympathize.~ + p1.10
END

IF ~~ p1.7
 SAY ~You are surprisingly simpleminded for such a powerful <PRO_MANWOMAN>, Bhaalspawn.  You may be thoroughly provincial, but do try not to act like it.~
IF ~~ + p1.11
END

IF ~~ p1.8
 SAY ~I do not *do* puns, Bhaalspawn.  No... no, I am rather serious, I fear.~
IF ~~ + p1.11
END

IF ~~ p1.9
 SAY ~Yes, and I do not regret it for a moment.  However, it does give one reason to pause.~
IF ~~ + p1.11
END

IF ~~ p1.10
 SAY ~That is hardly the point, Bhaalspawn.  Do try to pay attention.~
IF ~~ + p1.11
END

IF ~~ p1.11
 SAY ~I wonder who she was, once upon a time, this Phlydian... this fallen vampire queen.  I am accustomed to knowing their stories, <CHARNAME>, in part if not in whole, but this one... this one is dark to me.~
	++ ~The siege is hard on everyone in Saradush.  Even the undead.~ + p1.12
	++ ~I, for one, appreciate a good mystery.  We can make up a story later, if you wish.~ + p1.13
	++ ~Given her children's occupations, she was probably a harlot too.~ + p1.14
	++ ~Not every vampire is Bodhi.  Or Lassal.~ + p1.15
END

IF ~~ p1.12
 SAY ~And thus do the nighttime predators die alongside their prey... a dash of poetry within the bleakness of it all.~
IF ~~ + p1.16
END

IF ~~ p1.13
 SAY ~And the reality of her would likely pale in comparison... no, Bhaalspawn.  I do not wish it at all.~
IF ~~ + p1.16
END

IF ~~ p1.14
 SAY ~A queen of whores is no less a queen, Bhaalspawn, and their stories can be richer than those of saints or paladins... but you are correct, I think.  Hers likely was not.~
IF ~~ + p1.16
END

IF ~~ p1.15
 SAY ~No, and I am grateful for that much.~
IF ~~ + p1.16
END

IF ~~ p1.16
 SAY ~I learned relatively early that all things degrade with time... everything that begins in glory and light slips into the shadows quickly enough.  But perhaps...perhaps there is no end to the fall, no floor to rise up and crush you at the last.~
 = ~Simply... simply this.  This meaningless, anonymous final death.~
	++ ~Stop being so morbid, Ninde.  They're just vampires.~ + p1.17
	++ ~If you hope to find meaning in death, perhaps you should convert to Kelemvor's worship instead.~ + p1.18
	++ ~Nicer accomodations wouldn't have given their deaths meaning.  Only a life well spent does that.~ + p1.19
	++ ~Anonymity is for those who skulk about in abandoned prisons, elf.  My name certainly won't be disappearing anytime soon.~ + p1.20
END

IF ~~ p1.17
 SAY ~Just vampires... odd.  Even now I feel as much kinship towards these wretched fools as I do towards the living.  But perhaps that should not surprise me so.~
IF ~~ + p1.21
END

IF ~~ p1.18
 SAY ~Shar, what a thought.  No, I think I should rather face the emptiness than pretend to deny it.~
IF ~~ + p1.21
END

IF ~~ p1.19
 SAY ~Satisfyingly spent, <PRO_GIRLBOY>.  Spare me your banal platitudes.~
IF ~~ + p1.21
END

IF ~~ p1.20
 SAY ~Might I so graciously point out that you yourself are currently skulking about, godchild?  And hardly for the first time.  You ought not be quite so sure of yourself, I think.~
IF ~~ + p1.21
END

IF ~~ p1.21
 SAY ~Perhaps it is appropriate that the damned abandon even the semblence of civilization at the last... that they descend to this sorry state: savages, scarcely more substantial than the raving ghosts who dwell alongside them.~
 = ~It has a beauty of its own.  A terrible beauty, assuredly, but there is nothing quite so captivating.~
IF ~~ EXIT
END
END

// 2. Nyalee's Grief
CHAIN IF ~Global("LK#NindeNyaleeGrief","GLOBAL",1)~ THEN LK#NI25J p2
~Is this what it looks like when one still cares?  I had almost forgotten.~
DO ~SetGlobal("LK#NindeNyaleeGrief","GLOBAL",2)~
END
	++ ~Who'd have thought the old witch would still have a shred of maternal feeling left over?~ + p2.1
	++ ~That wasn't love.  More like insanity.~ + p2.2
	++ ~Well, it's certainly what one looks like when one's head is smashed to little bits.~ + p2.3
	++ ~Touching, in its own way.  Apparently even Bhaalists are capable of higher emotion.~ + p2.4
	++ ~We don't have time for your morbid fancies, elf.~ + p2.5

APPEND LK#NI25J

IF ~~ p2.1
 SAY ~Maternal feeling?  This is...not the sort of love one would hope to find in a storybook, <PRO_GIRLBOY>.  No, this is something else entirely.~
IF ~~ + p2.6
END

IF ~~ p2.2
 SAY ~No... no, insanity is something different... something one can feel stirring in the darker places of one's mind.  I do not doubt that the witch was insane as well, but this... this is something else entirely.~
IF ~~ + p2.6
END

IF ~~ p2.3
 SAY ~Very clever, Bhaalspawn.  But I am in no mood for your grotesque witticisms to<DAYNIGHT>, <PRO_GIRLBOY>.  This... I do not quite know what to make of it.~
IF ~~ + p2.6
END

IF ~~ p2.4
 SAY ~Your sentimental degressions, such as they are, are not particularly diverting to<DAYNIGHT>, Bhaalspawn.  This is...not the sort of love one would hope to find in a storybook, <PRO_GIRLBOY>.~
IF ~~ + p2.6
END

IF ~~ p2.5
 SAY ~I see that this place makes you even more sour and insufferable than you normally are, Bhaalspawn.~
IF ~~ EXIT
END

IF ~~ p2.6
 SAY ~I wonder if she would have wished it returned, had she guessed that some mad spark of devotion would survive within that shrivelled heart of hers.  I think... truly, I do not know what I think.  How very odd.~ 
	++ ~Odd indeed.  You're not normally at a loss for words.~ + p2.7
	++ ~I suspect she would have rather cut her losses and locked the heart away.~ + p2.8
	++ ~Who wouldn't want something so precious returned, if given the chance?~ + p2.9
	++ ~I wouldn't waste my time trying to read the mind of a madwoman.~ + p2.10
END

IF ~~ p2.7
 SAY ~No, I am normally quite literally overflowing with wit, I know.  But now this... this pitiful wretch of a woman is able somewhat to recover her heart, while I... no.  No, 'tis of no importance.~
IF ~~ + p2.11
END

IF ~~ p2.8
 SAY ~Do you?  Would you, were it your soul again instead?  Strange, how this... this pitiful wretch of a woman is somehow able to recover her heart, while I... no.  No, 'tis of no importance.~ 
IF ~~ + p2.11
END

IF ~~ p2.9
 SAY ~Who indeed.  Strange, how this... this pitiful wretch of a woman is somehow able to recover her heart, while I... no.  No, 'tis of no importance.~ 
IF ~~ + p2.11
END

IF ~~ p2.10
 SAY ~Nor would I, but for the insult.  This... this pitiful wretch of a woman is able somewhat to recover her heart, while I... no.  No, 'tis of no importance.~
IF ~~ + p2.11
END

IF ~~ p2.11
 SAY ~I do not envy her.  Why should I?  She is as dead as dear Bodhi now, and senselessly so, as well.  To die for the man who would destroy her... though I imagine that the miserable hag had little enough to live for, cooped up as she was in this dreary temple.~
	++ ~I would never have spared a mad priestess of Bhaal anyway.~ + p2.12
	++ ~She died for love, misplaced or otherwise.  In the end, I can't fault that.~ + p2.13
	++ ~True enough.  A few more moments in this dump and I'm likely to kill myself next.~ + p2.14
	++ ~The way you used to speak about love, I'm surprised you're so upset by this.~ + p2.13
END

IF ~~ p2.12
 SAY ~That is rather beside the point, <CHARNAME>.  It is really quite peculiar, you know.  Once I might have romanticised this, but then once I was a fool... a silly little girl with her head clouded by lurid fantasies, a child with darkened dreams where her mind should have been.~
IF ~~ + p2.15
END

IF ~~ p2.13
 SAY ~Once... once I would have agreed.  But then once I was a fool... a silly little girl with her head clouded by lurid fantasies, a child with darkened dreams where her mind should have been.~
IF ~~ + p2.15
END

IF ~~ p2.14
 SAY ~And I am increasingly inclined to help you, darling.  It is rather peculiar, you know.  Once I might have romanticised this, but then once I was a fool... a silly little girl with her head clouded by lurid fantasies, a child with darkened dreams where her mind should have been.~
IF ~~ + p2.15
END

IF ~~ p2.15
 SAY ~I think... I think mayhap some of us are not meant to feel... to love.  Mayhap old Yaga-Shura truly did his dear mother a favour when he snatched her blackened heart away.~
	++ ~You don't really believe that.~ + p2.16
	++ ~Well, I doubt he did it out of the kindness of his heart.~ + p2.17
	++ ~You're nothing like Nyalee, Ninde.  Don't obsess over this.~ + p2.18
	++ ~If melancholy wasn't your normal state, I'd be a bit worried right now.~ + p2.19
END

IF ~~ p2.16
 SAY ~Don't I?  I... I was a fool.  I have always been a fool, and now... now.~
IF ~~ + p2.20
END

IF ~~ p2.17
 SAY ~His now extinguished heart.  I... I was a fool.  I have always been a fool, and now... now.~
IF ~~ + p2.20
END

IF ~~ p2.18
 SAY ~Aren't I?  I... I was a fool.  I have always been a fool, and now... now.~
IF ~~ + p2.20
END

IF ~~ p2.19
 SAY ~My normal state... I was a fool.  I have always been a fool, and now... now.~
IF ~~ + p2.20
END

IF ~~ p2.20
 SAY ~Now even the romance of it all is empty.  I don't care anymore, <CHARNAME>.  I simply don't care at all.~
IF ~~ EXIT
END
END

// 3. Second Challenge
CHAIN IF ~Global("LK#NindeChallenge2","GLOBAL",1)~ THEN LK#NI25J p3
~Well.  Had I thought that killing you would be...quite this exhilarating, godchild, I would have done so ages ago.~
DO ~SetGlobal("LK#NindeChallenge2","GLOBAL",2)~
END
	++ ~And here I had hoped that you actually appreciated me now.~ + p3.1
	++ ~Exhilarating?  That thing almost killed us all.~ + p3.2
	++ ~Hah!  Just try it, wench!  You won't like what happens.~ + p3.3
	++ ~And deprive yourself of the pleasure of my company?  I think not.~ + p3.4
	++ ~Yes, but you haven't, and you won't.  I don't have time for this nonsense, Ninde.~ + p3.5

APPEND LK#NI25J

IF ~~ p3.1
 SAY ~(smile)  Don't I?~
IF ~~ + p3.6
END

IF ~~ p3.2
 SAY ~An unfortunate fact, I must agree.~
IF ~~ + p3.6
END

IF ~~ p3.3
 SAY ~(smile)  Won't I?~
IF ~~ + p3.6
END

IF ~~ p3.4
 SAY ~Many things in this world are pleasurable, my <PRO_LADYLORD>.  Your company, regrettably, does not quite qualify.  Your death, however...~
IF ~~ + p3.6
END

IF ~~ p3.5
 SAY ~(smile)  Won't I?  You are far too sure of yourself sometimes, my <PRO_LADYLORD>.~
IF ~~ EXIT
END

IF ~~ p3.6
 SAY ~Had I my choice, of course, it would not come during battle.  A knife in the night... your already cooling blood splattered across my skin, that golden Bhaalspawn dust slipping through my fingers like so much sand--~
 = ~Mmm, but I expect that you don't find the thought quite as enticing as I do.~
	++ ~Are you alright, Ninde?  You've been acting strange lately.  Well, stranger than usual.~ + p3.7
	++ ~And right when I forget I'm travelling with a maddened viper, you have to remind me.~ + p3.8
	++ ~Right.  Well, I don't think I'm ever sleeping again now.~ + p3.9
	++ ~I'm really getting tired of your half-hearted threats, woman.  You don't scare me.~ + p3.10
	++ ~Draw steel, you mad witch!~ DO ~SetGlobal("LK#NindeJoined","LOCALS",0) LeaveParty() Enemy()~ EXIT
END

IF ~~ p3.7
 SAY ~I am perfectly fine, Bhaalspawn.  In fact, I can scarcely recall ever having been better.  Most peculiar, what a few litres of spilt phantom's blood can do for one's humour.~
IF ~~ + p3.11
END

IF ~~ p3.8
 SAY ~Maddened, am I?  Why, Bhaalspawn, I can scarcely recall having felt better.  Most peculiar, what a few litres of spilt phantom's blood can do for one's humour.~
IF ~~ + p3.11
END

IF ~~ p3.9
 SAY ~You're quite welcome, Bhaalpsawn.  Why, 'tis most peculiar what a few litres of spilt phantom's blood can do for one's humour.~
IF ~~ + p3.11
END

IF ~~ p3.10
 SAY ~That reveals a distinct lack of imagination on your part, Bhaalspawn.  Ahh, but it is most peculiar what a few litres of spilt phantom's blood can do for one's humour.~
IF ~~ + p3.11
END

IF ~~ p3.11
 SAY ~It is a shame that <PRO_HESHE> left no corpse behind.  I would have liked the chance to study it.  Such an intriguing prize would have improved this utterly miserable experience considerably.~
	++ ~Yeah... my dead doppleganger's body is not really my idea of fine decoration.~ + p3.12
	+ ~OR(3) Class(Player1,MAGE_ALL) Class(Player1,CLERIC_ALL)  Class(Player1,BARD_ALL)~ + ~Only a necromancer could have so little understanding of how illusions actually work.~ + p3.13
	+ ~!Class(Player1,MAGE_ALL) !Class(Player1,CLERIC_ALL)  !Class(Player1,BARD_ALL)~ + ~I'm quite sure that was illusory, Ninde.~ + p3.13
	++ ~Don't you ever get tired of these morbid musings?~ + p3.14
	++ ~Any clues to how this bizarre place is actually working would be very welcome right now.~ + p3.15
END

IF ~~ p3.12
 SAY ~That does not surprise me; you always were dreadfully simple, <CHARNAME>.  'Tis truly a marvel that this place... this mirror into your divine soul... is as fascinating as it is.  Despite your own innumerable flaws.~
IF ~~ + p3.16
END

IF ~~ p3.13
 SAY ~Obviously it was only illusory, but even you must realize that it was also inextricably linked to this odd little plane.  And this place... this mirror into your divine soul... is really quite fascinating, my dear.  Despite your own innumerable flaws.~  
IF ~~ + p3.16
END

IF ~~ p3.14
 SAY ~You are a child of murder, <CHARNAME>.  Morbidity runs through your veins, regardless of your inability to embrace it.  But even you cannot deny that this place... this mirror into your divine soul... is really quite fascinating.  Despite your own innumerable flaws.~
IF ~~ + p3.16
END

IF ~~ p3.15
 SAY ~Yes, I would have to agree.  I must say that this place...  this mirror into your divine soul... is really quite fascinating, <CHARNAME>.  Despite your own innumerable flaws.~
IF ~~ + p3.16
END

IF ~~ p3.16
 SAY ~I am...uniquely situated to appreciate it, I think.  Your humanity is twisted and tainted, and so much more conditional than we had realised.~
 = ~How nice it must be for you, to be the one who is ultimately chosen... to *not* be the poor soul who is left behind instead.~
	++ ~It was a matter of luck, Ninde.  Nobody ever said that life was fair.~ + p3.17
	++ ~Chosen?  If this is what it means to be great, I'd prefer insignificance.~ + p3.18
	++ ~Don't think I'm not grateful that things didn't turn out differently.~ + p3.19
	++ ~You know that I'm sorry about what happened to you, Ninde, but there's nothing I can do about it.~ + p3.19
	++ ~Bah!  If the choice was between my dreary childhood and Sarevok's, I'd have gladly been the one left behind.~ + p3.20
END

IF ~~ p3.17
 SAY ~No.  No, they did not.  But I tire of this conversation, Bhaalspawn.  Loath as I am to return to wandering the bloodsoaked Tethyrian deserts, standing here a moment longer is even less palatable.~
IF ~~ EXIT
END

IF ~~ p3.18
 SAY ~Those are not your options, Bhaalspawn.  But I tire of this conversation.  Loath as I am to return to wandering the bloodsoaked Tethyrian deserts, standing here a moment longer is even less palatable.~
IF ~~ EXIT
END

IF ~~ p3.19
 SAY ~Spare me your platitudes, Bhaalspawn.  But I tire of this conversation.  Loath as I am to return to wandering the bloodsoaked Tethyrian deserts, standing here a moment longer is even less palatable.~
IF ~~ EXIT
END

IF ~~ p3.20
 SAY ~Then you are a fool, Bhaalspawn.  But I tire of this conversation.  Loath as I am to return to wandering the bloodsoaked Tethyrian deserts, standing here a moment longer is even less palatable.~
IF ~~ EXIT
END
END

// 4. Amkethran
CHAIN IF ~Global("LK#NindeAmkethran","GLOBAL",2)~ THEN LK#NI25J p4
~What a quaint little place this is... so very unlike the cities we've tramped across in the past.  Your sweet siblings could march through tonight, leaving nothing behind but dust and ash, and not a soul would notice.~
DO ~SetGlobal("LK#NindeAmkethran","GLOBAL",3)~
END
	++ ~I'm guessing Balthazar would pay attention to that much.~ + p4.1
	++ ~What a terrible thought.~ + p4.2
	++ ~Nothing is going to happen to these people.~ + p4.3
	++ ~I'm sure even my... sweet siblings, as you say, have more important things to worry about than Amkethran.~ + p4.4
	++ ~Take your ghoulish comments elsewhere, elf.~ + p4.5
	
APPEND LK#NI25J

IF ~~ p4.1
 SAY ~Silly <PRO_GIRLBOY>.  Despite what the monks of Candlekeep have evidently told you, a tiny monastery is no real threat to an army.  In any case, this sad excuse for a village would likely already have been obliterated before word seeped through those terribly thick walls of his.~
IF ~~ + p4.6
END

IF ~~ p4.2
 SAY ~Terrible?  I find it rather lovely, truth be told.~
IF ~~ + p4.6
END

IF ~~ p4.3
 SAY ~I'm quite certain that nothing has happened to them their entire lives.  How utterly dull.  A good massacre, now... very few things are as intriguing.~
IF ~~ + p4.6
END

IF ~~ p4.4
 SAY ~I'm quite certain of that as well.  I mean, really.  At least a decent massacre would add some spice to these people's otherwise tedious lives.  Before cutting them short, of course.~
IF ~~ + p4.6
END

IF ~~ p4.5
 SAY ~What a repugnant little whelp you are to<DAYNIGHT>, Bhaalspawn.  I sometimes wonder why I bother with you at all.~
IF ~~ EXIT
END

IF ~~ p4.6
 SAY ~'Tis odd, mayhap, that the thought of Amkethran's destruction touches me more deeply than the reality of Saradush's ever did.  Perhaps the promise of ruin is simply more alluring than its cold reality.~
 = ~Or perhaps a spark of mercy yet lingers in the places where my soul should be... a yearning to release these pitiful little people from their pitiful little lives.~
	++ ~I'd certainly want to be put out of my misery if I had to live here regularly.~ + p4.7
	++ ~That isn't mercy, Ninde.  Far from it!~ + p4.8
	++ ~One day you'll get tired of romanticising the most horrible things.  I hope to be there to see it.~ + p4.9 
	++ ~I knew you were always a little bit...touched, Ninde, but I think you're starting to slip.~ + p4.10
END

IF ~~ p4.7
 SAY ~When the ennui becomes too much, dear, do please let me know. (smile)  But... on second thought, no, this does not quite feel like mercy.  Whatever this emotion may be, it is far too overwhelming for that.~
IF ~~ + p4.11
END

IF ~~ p4.8
 SAY ~No, I do not expect you to understand.  And you may even be right.  It certainly doesn't feel like mercy.  Whatever this emotion may be, it is far too overwhelming for that.~
IF ~~ + p4.11
END

IF ~~ p4.9
 SAY ~Will I?  I think... I think the time for that has long since passed. (smile)  But... on second thought, no, this does not quite feel like mercy.  Whatever this emotion may be, it is far too overwhelming for that.~
IF ~~ + p4.11
END

IF ~~ p4.10
 SAY ~Do you?  Perhaps... perhaps it is madness, then, rather than mercy, which grips me.~
IF ~~ + p4.11
END

IF ~~ p4.11
 SAY ~Saradush was breathtaking in her fall, but this... this would be something...else entirely.  This toy village would perish in silence, I think... her passing unremarked, even her memory quickly swallowed by the deserts that once protected her.  It would take very little work at all to bury Amkethran entirely.~ 
	++ ~I hope we're not buried alongside it in this delightfully macabre fantasy of yours.~ + p4.12
	++ ~That isn't going to happen, Ninde.  Not on my watch.~ + p4.13
	++ ~That's the way of things, isn't it?  All of humanity is trivial in the long run.~ + p4.14
	++ ~If Bhaalspawn armies end up fighting over the place, nobody is going to forget about it for a very long time.~ + p4.15
END

IF ~~ p4.12
 SAY ~Preferably not, no.  Hmm.~
IF ~~ + p4.16
END

IF ~~ p4.13
 SAY ~Perhaps not to<DAYNIGHT>.  Perhaps not even tomorrow, but at some point... hmm.~
IF ~~ + p4.16
END

IF ~~ p4.14
 SAY ~I used to think... no.  It does not matter any longer.  Hmm.~
IF ~~ + p4.16
END

IF ~~ p4.15
 SAY ~But even that time will pass quickly enough.  Hmm.~
IF ~~ + p4.16
END

IF ~~ p4.16
 SAY ~I may have once mentioned my brief return to Cormanthor... the gripping nostalgia of the place of my birth, the sense of strangeness permeating that which should have been as familiar to me as myself... the journey there was uneventful, fortunately, but I remember skirting the southern bounds of the Anauroch.  The Great Sand Sea, they call it, and they do not lie.  This desert... it truly does not compare, Bhaalspawn.~
 = ~They say the Anauroch creeps upon the neighbouring lands, hoping to bury them beneath its cold sands... and perhaps it does.  Perhaps one day all of Faerun will be smothered by desert, choked and forgotten, lost relics of a time long past.  I...would have liked to see that, I think.  To stand alone amidst the utter desolation and simply...inhale the terrible glory of it all.~
	++ ~That's one of the most horrible things I've ever heard, Ninde.~ + p4.17
	++ ~Forgetting that whole soullessness thing, are we?  I'm afraid your future holds only withering and death.~ + p4.18
	++ ~There's certainly something dreadful and poetic in that image.~ + p4.19
	++ ~You're beginning to sound like a child of Bhaal now.  Trust me, I should know.~ + p1.20
END

IF ~~ p4.17
 SAY ~Yes... it is horrible, I know.  But lives are so brief, and death... death is eternal.  There is something really quite charming... even comforting, in that.~
IF ~~ EXIT
END

IF ~~ p4.18
 SAY ~You are a sheer delight, Bhaalspawn... even if you are not exactly wrong.  But lives are so brief, and death... death is eternal.  There is something really quite charming... even comforting, in that.~
IF ~~ EXIT
END

IF ~~ p4.19
 SAY ~Yes.  Yes, there is.  And lives are so brief, and death... death is eternal.  There is something really quite charming... even comforting, in that.~
IF ~~ EXIT
END

IF ~~ p4.20
 SAY ~Then you are more blessed than you realize, Bhaalspawn.  Lives are so brief, and death... death is eternal.  There is something really quite charming... even comforting, in that.~
IF ~~ EXIT
END
END

// 5. Malla's soul
CHAIN IF ~Global("LK#NindeSoulgem","GLOBAL",1)~ THEN LK#NI25J p5
~An innocent's soul... the poor girl.  A bit of excitement might have done her well.  It certainly would have added more colour to this glistering gem of hers.  A trace of red, a hint of black...hmm.  It would almost feel like coming home.~
DO ~SetGlobal("LK#NindeSoulgem","GLOBAL",2)~
END
	++ ~That's Malla's choice now, one way or the other.~ + p5.1
	++ ~Do you think Lassal once made something like this from yours?~ + p5.2
	++ ~There's nothing here to come home to regardless, Ninde.~ + p5.3
	++ ~I, for one, think it's more beautiful as it is.~ + p5.4

APPEND LK#NI25J

IF ~~ p5.1
 SAY ~The sleeping damsel... yes, she will be making quite a few decisions for herself now.  But before then, perhaps... perhaps there is still some key to be found in this.~
IF ~~ + p5.5
END

IF ~~ p5.2
 SAY ~I...I do not know.  It is entirely possible.  Whatever arts the undead practice, they do not share them with the likes of us.  Not willingly, at least.  Not knowingly.~
IF ~~ + p5.5
END

IF ~~ p5.3
 SAY ~Perhaps not.  Perhaps this is simply sad coincidence.  But perhaps... perhaps there is still some key to be found in this.~
IF ~~ + p5.5
END

IF ~~ p5.4
 SAY ~That is really quite the astonishing lack of discernment, my dear.  But despite its flaws, perhaps... perhaps there is still some key to be found in this.~
IF ~~ + p5.5
END

IF ~~ p5.5
 SAY ~Might I... might I see it, <CHARNAME>?~
	++ ~Certainly.  Might you really be able to learn something from it?~ + p5.6
	++ ~Just be careful with it.  It's obviously quite priceless.~ + p5.7
	++ ~For a moment, I suppose... if you must...~ + p5.8
	++ ~I don't think so, Ninde.  I don't like the gleam in your eyes.~ + p5.25
END

IF ~~ p5.6
 SAY ~I have found little but dead-ends in the past, but with a jewel such as this... there may yet be hope, as unlikely as it might seem.~
IF ~~ + p5.9
END

IF ~~ p5.7
 SAY ~I am well aware of the price of a soul, Bhaalspawn.~
IF ~~ + p5.9
END

IF ~~ p5.8
 SAY ~Even a mere moment should suffice, Bhaalspawn.~
IF ~~ + p5.9
END

IF ~~ p5.9
 SAY ~'Tis strange to think that something so fragile could house something so precious... this tiny jewel could easily slip through my fingers, smash into a thousand sparkling fragments against the floor... what would become of the soul then, I wonder?  Would it vanish into the aether, leaving poor, sweet Malla eternally bereft?~ 
	++ ~Don't even think about it, Ninde.~ + p5.10
	++ ~Is this really how you go about studying something, elf?~ + p5.11
	++ ~I wouldn't be able to make use of it anymore.  That's certainly all that I care about.~ + p5.12
	++ ~Care to test it and find out?~ + p5.13
END

IF ~~ p5.10
 SAY ~Really, dear.  That would be such a waste.~
IF ~~ + p5.14
END

IF ~~ p5.11
 SAY ~Studying, <CHARNAME>?  There was never anything to study.~
IF ~~ + p5.14
END

IF ~~ p5.12
 SAY ~Our priorities are somewhat alike, dear... if not exactly harmonious.~
IF ~~ + p5.14
END

IF ~~ p5.13
 SAY ~No, dear.  Really.  That would be such a waste.~
IF ~~ + p5.14
END

IF ~~ p5.14
 SAY ~(Before you can protest, before you can even think to stop her, Ninde brings the soul stone to her face, brushing it ever so lightly against her lips.  She murmurs something archaic that you do not quite catch and breathes in... and impossibly, the gem almost seems to breathe out at the same time.  Spent, it slips from her hand, dissolving into nothingness as soon as it touches the ground.)~
 = ~(Ninde stands there for a moment longer, stricken and dazed.  For a brief instant, her skin seems to have a new flush to it, but a moment later, the bright colouring fades once more to grey.  She smiles slightly, humourlessly, and shakes off the remnant of whatever emotion had gripped her so.)~
IF ~~ DO ~TakePartyItem("amsoul01") DestroyItem("amsoul01") ReallyForceSpellRES("spwish03",Myself) ReallyForceSpellRES("spwish03",Myself) ReallyForcespellRES("spwish04",Myself) ReallyForcespellRES("spwish04",Myself)~ + p5.15
END

IF ~~ p5.15
 SAY ~Peculiar.  I...I suppose I should have expected as much.~
	++ ~Are you mad, Ninde!?  That was someone else's soul!~ + p5.16
	++ ~It didn't work, did it?~ + p5.17
	++ ~Whatever you just did, undo it!~ + p5.18
	++ ~I didn't think you knew that much about the arts of the undead?~ + p5.19
END

IF ~~ p5.16
 SAY ~Yes... sweet little Malla.  I'm afraid that I've really quite doomed her... and yet I can't seem to muster any measure of sympathy for the poor thing.  A few more years dearly bought, the mere hint of a restoration... it will have to be enough.~
IF ~~ + p5.20
END

IF ~~ p5.17
 SAY ~Not as such, no... though I would not say that it failed entirely.  A few more years dearly bought, the mere hint of a restoration... it will have to be enough.~
IF ~~ + p5.20
END

IF ~~ p5.18
 SAY ~I'm afraid it is far too late for that, <CHARNAME>.  Nor would I wish to do so.  A few more years dearly bought, the mere hint of a restoration... it will have to be enough.~
IF ~~ + p5.20
END

IF ~~ p5.19
 SAY ~(smile) I share very little of what I know, <CHARNAME>.  You would do well to remember that.  But this was well worth the spent secret... a few more years dearly bought, the mere hint of a restoration... it will have to be enough.~
IF ~~ + p5.20
END

IF ~~ p5.20
 SAY ~Shar, but I'm suddenly famished.  If we're quite finished with this ghastly crypt, could we not return to that miserable little inn?~
	++ ~Good idea.  After this pointless diversion, I'm a bit hungry myself.~ + p5.21
	++ ~Until the next time you decide to feed on someone's soul?  I'm afraid I can't let you live any longer, Ninde.~ + p5.22
	++ ~That's all you have to say for yourself?~ + p5.23
	++ ~Do I have your word something like this won't happen again, elf?~ + p5.24
END

IF ~~ p5.21
 SAY ~And a hungry <CHARNAME> is not a very pleasant <CHARNAME>, I am sure all would agree.~
IF ~~ EXIT
END

IF ~~ p5.22
 SAY ~Really?  How very tedious of you, Bhaalspawn.~
IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",0) LeaveParty() Enemy()~ EXIT
END

IF ~~ p5.23
 SAY ~Can you truly say you didn't expect as much, Bhaalspawn?  No, don't answer that.  I would hate to have my expectations of you be diminished even further.~
IF ~~ EXIT
END

IF ~~ p5.24
 SAY ~My word?  I am not sure exactly what my word is worth these days, <CHARNAME>, but if you wish it... very well.~
IF ~~ EXIT
END

IF ~~ p5.25
 SAY ~You know me too well, my <PRO_LADYLORD>.  A shame.  But do you really value her life over mine?  That pristine Calishite maiden, pure as snow... never mind that you did not even know she existed before her fool of a father came begging for help.  You would rather she live, and I die?~
	++ ~There must still be some way to restore you... but this isn't it, Ninde.  This isn't right.~ + p5.26
	++ ~It probably wouldn't even work.  She's not even an elf.~ + p5.27
	++ ~I don't care about her at all.  This thing is too powerful to waste on either of you.~ + p5.29
	++ ~When you put it that way, you're right.  Do what you will.~ + p5.30
END

IF ~~ p5.26
 SAY ~Then you have doomed me with your self-righteousness, Bhaalspawn.  I hope that you are well pleased with yourself.~
IF ~~ + p5.28
END

IF ~~ p5.27
 SAY ~No... but even a mortal soul is better than none at all.~
IF ~~ + p5.28
END

IF ~~ p5.28
 SAY ~You had better be sure to protect this damsel of yours in the future, <CHARNAME>.  Who can say what might become of a young girl deprived of both of her parents?  Something...really quite dreadful, I expect.~
	++ ~If you're going to be impossible about it... fine.  Do what you will.~ + p5.30
	++ ~What happened to you isn't her fault, Ninde.~ + p5.32
	++ ~You really are a spiteful little bitch, aren't you?~ + p5.33
	++ ~Yeah, right.  Your threats don't scare me, elf.~ + p5.34
END

IF ~~ p5.29
 SAY ~You are a cold <PRO_MANWOMAN>, <CHARNAME>.  Do wealth and trinkets really mean more to you than the...eternal gratitude of a powerful archmage?~
	++ ~When you put it that way, you're right.  Do what you will.~ + p5.30
	++ ~Actually... yes.  Sorry.~ + p5.34
	++ ~I won't waste this gem on some wild fantasy that's unlikely to work.~ + p5.35
	++ ~Eternal gratitude?  Hah!  You'll be a harpy again by next week.~ + p5.36
END

IF ~~ p5.30
 SAY ~(Nodding her thanks, Ninde brings the soul stone to her face, brushing it ever so lightly against her lips.  She murmurs something archaic that you do not quite catch and breathes in... and impossibly, the gem almost seems to breathe out at the same time.  Spent, it slips from her hand, dissolving into nothingness as soon as it touches the ground.)~
 = ~(Ninde stands there for a moment longer, stricken and dazed.  For a brief instant, her skin seems to have a new flush to it, but a moment later, the bright colouring fades once more to grey.  She smiles slightly, humourlessly, and shakes off the remnant of whatever emotion had gripped her so.)~
IF ~~ DO ~TakePartyItem("amsoul01") DestroyItem("amsoul01") ReallyForceSpellRES("spwish03",Myself) ReallyForceSpellRES("spwish03",Myself) ReallyForcespellRES("spwish04",Myself) ReallyForcespellRES("spwish04",Myself)~ + p5.31
END

IF ~~ p5.31
 SAY ~Peculiar.  I...I suppose I should have expected as much.~
	++ ~And now you're both out of luck, I assume?~ + p5.37
	++ ~Did it work?~ + p5.38
	++ ~Fascinating.  I didn't realize you knew this much about the arts of the undead.~ + p5.39
	++ ~I...think I've made a huge mistake.~ + p5.40
END

IF ~~ p5.32
 SAY ~No, but that is neither here nor there.  But I have had enough of this farce... do what you will with the wretched gem, halfwit.  It is no concern of mine.~
IF ~~ EXIT
END

IF ~~ p5.33
 SAY ~You really are awfully dense sometimes, Bhaalspawn.  But I have had enough of this farce... do what you will with the wretched gem, halfwit.  It is no concern of mine.~
IF ~~ EXIT
END

IF ~~ p5.34
 SAY ~Then you are a fool, Bhaalspawn.  But I have had enough of this farce... do what you will with the wretched gem, halfwit.  It is no concern of mine.~
IF ~~ EXIT
END

IF ~~ p5.35
 SAY ~Then you are a coward and a fool, Bhaalspawn.  But I have had enough of this farce... do what you will with the wretched gem, halfwit.  It is no concern of mine.~
IF ~~ EXIT
END

IF ~~ p5.36
 SAY ~You really are a loathsome creature, Bhaalspawn.  But I have had enough of this farce... do what you will with the wretched gem, halfwit.  It is no concern of mine.~
IF ~~ EXIT
END

IF ~~ p5.37
 SAY ~Sweet little Malla certainly is... and yet I can't seem to muster any measure of sympathy for the poor thing.  A few more years dearly bought, the mere hint of a restoration... it will have to be enough.~
IF ~~ EXIT
END

IF ~~ p5.38
 SAY ~Not as such, no... though I would not say that it failed entirely.  A few more years dearly bought, the mere hint of a restoration... it will have to be enough.~
IF ~~ EXIT
END

IF ~~ p5.39
 SAY ~(smile) I share very little of what I know, <CHARNAME>.  You would do well to remember that.  But this was well worth the spent secret... a few more years dearly bought, the mere hint of a restoration... it will have to be enough.~
IF ~~ EXIT
END

IF ~~ p5.40
 SAY ~And I could scarcely care less, my dear.  A few more years dearly bought, the mere hint of a restoration... it will have to be enough.~
IF ~~ EXIT
END
END

// ---------------------------------------------
// Interjections
// ---------------------------------------------

// Yaga-Shura's Concubine
I_C_T YAGCON 13 LK#Ninde_concubine
== LK#NI25J IF ~InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID)~ THEN
~How terribly sad for you.  I for one would much rather loll about in his oversized bed than march with his army, though perhaps not all are quite so sensible.~
END

// Marlowe
I_C_T MARLOWE 19 LK#Ninde_marlowe
== LK#NI25J IF ~InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID)~ THEN
~Shar, but this is a familiar story.~
END

// Volo

EXTEND_BOTTOM SARVOLO 9 #2
+ ~InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID) InMyArea("Ninde") Global("LK#NindeRomanceActive","GLOBAL",2)~ + ~Tell me about Ninde.~ + Volo1
+ ~InParty("Ninde") !StateCheck("Ninde",CD_STATE_NOTVALID) InMyArea("Ninde") !Global("LK#NindeRomanceActive","GLOBAL",2)~ + ~Tell me about Ninde.~ + Volo2
END

CHAIN SARVOLO Volo1
~Tales of her tempestuous romance with <CHARNAME> have already grown larger in the retelling, and it is no wonder.  The Lady Amblecrown is a creature of passion, and her story may yet conclude on a higher note than anyone had thought possible.~
== LK#NI25J ~A creature of passion... I do like that.  Perhaps you can add in several more...concrete examples, hmm?~
EXTERN SARVOLO 9

CHAIN SARVOLO Volo2
~Rumour placed the notorious Lady Amblecrown of Waterdeep in Athkatla, but I am unsurprised to find that she has since moved further south.  Wherever Ninde goes, the faithful of Selune are sure to be close behind.~
== LK#NI25J ~I do hope you're referring to the trail of corpses, darling.~
EXTERN SARVOLO 9

// Wraith Scene

EXTEND_BOTTOM HGWRA01 18
IF ~Global("LK#NindeRomanceActive","GLOBAL",2) InParty("Ninde") 
!StateCheck("Ninde",CD_STATE_NOTVALID)~ DO ~SetGlobal("LK#WraithTalk","GLOBAL",1)~ EXTERN HGWRA01 wraith1
END

CHAIN HGWRA01 wraith1
~What of the inevitable pain you must give to the one you love? The elven woman you name Ninde?~
== LK#NI25J ~Oh, dear.  Darling, you have no idea who you're talking to.~
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("LK#NindeRomanceActive","GLOBAL",2)~ 
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("lk#niwr1")~ EXIT
END

BEGIN LK#SYKRE

CHAIN IF ~NumTimesTalkedTo(0) InParty("Ninde") Global("LK#NindeRomanceActive","GLOBAL",2)~ THEN LK#SYKRE wraith2
~Ninde? Ahh, yes... it is you.~
== LK#NI25J ~I... Sykre.  Gods, you look so real. But -- you are not him. I saw him hanged myself.~
== LK#SYKRE ~You haven't yet seen beneath my collar, dearest.  The marks the hanging left were a sight to behold... a sight you would appreciate, I think.  You always did have a most admirable fascination with death.~
== LK#NI25J ~Once you were finished with me, yes...yes, I did. But I will not -- you cannot be --~
== LK#SYKRE ~Once I was finished with you. Indeed, you were my masterpiece, Ninde.  In the end, you were willing to murder your own brother for me.  Your beloved Respen.~  
== LK#NI25J ~I...I didn't... it was an accident...~
== LK#SYKRE ~Was it?  In my experience, there are no such things as accidents.~
= ~He loved you more than I ever did, you know, but it wasn't love you truly wanted... it was possession.  The way I possessed you; the way your new lover possesses you now.~
== LK#SYKRE IF ~Global("LK#NindeSelfish","GLOBAL",1)~ THEN ~You even let him chain you to him like a common whore.  Promises were meant to be broken, darling.  Didn't you know?~
== LK#NI25J ~That isn't true... I never meant--~
== LK#SYKRE ~No, you never meant anything, did you?  You were always beautiful, Ninde, but beneath that...  You were too easy... too ready to be moulded into whatever shape I desired.  Beneath your shallow romanticism, you were always empty.  Even before the vampire drained you of your soul.~
= ~I am surprised I stayed interested as long as I did, but then I was nothing if not a narcissist, and you were the most perfect mirror I ever owned.~
== LK#NI25J ~You...you're not... <CHARNAME>, make him stop!~
END
	++ ~It's not true, Ninde!  He's lying!~ EXTERN HGWRA01 25
	++ ~Stop it, Gorion! This is too cruel!~ EXTERN HGWRA01 25
	++ ~Enough! I won't stand for this!~ EXTERN HGWRA01 25
	+ ~CheckStatGT(Player1,16,WIS)~ + ~Don't listen to him, Ninde! This isn't real!~ EXTERN HGWRA01 25
	
// Solar
EXTEND_BOTTOM FINSOL01 27
IF ~InParty("Ninde") InMyArea("Ninde") Global("LK#NindeRomanceActive","GLOBAL",2) Global("LK#NindeSolarChoice","GLOBAL",0) !StateCheck("Ninde",CD_STATE_NOTVALID)~ DO ~SetGlobal("LK#NindeSolarChoice","GLOBAL",1)~ EXTERN LK#NI25J SolarChoice
IF ~InParty("Ninde") InMyArea("Ninde") !Global("LK#NindeRomanceActive","GLOBAL",2) Global("LK#NindeSolarChoice","GLOBAL",0) !StateCheck("Ninde",CD_STATE_NOTVALID)~ DO ~SetGlobal("LK#NindeSolarChoice","GLOBAL",1)~ EXTERN LK#NI25J SolarChoice4
END

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("Ninde") InMyArea("Ninde") Global("LK#NindeRomanceActive","GLOBAL",2) Global("LK#NindeSolarLeave","GLOBAL",0) !StateCheck("Ninde",CD_STATE_NOTVALID)~ DO ~SetGlobal("LK#NindeSolarLeave","GLOBAL",1)~ EXTERN LK#NI25J SolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("Ninde") InMyArea("Ninde") Global("LK#NindeRomanceActive","GLOBAL",2) Global("LK#NindeSolarLeave","GLOBAL",0) !StateCheck("Ninde",CD_STATE_NOTVALID)~ DO ~SetGlobal("LK#NindeSolarLeave","GLOBAL",1)~ EXTERN LK#NI25J SolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("Ninde") InMyArea("Ninde") Global("LK#NindeRomanceActive","GLOBAL",2) Global("LK#NindeSolarLeave","GLOBAL",0) !StateCheck("Ninde",CD_STATE_NOTVALID)~ DO ~SetGlobal("LK#NindeSolarLeave","GLOBAL",1)~ EXTERN LK#NI25J SolarLeave
END

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("Ninde") InMyArea("Ninde") Global("LK#NindeRomanceActive","GLOBAL",2) Global("LK#NindeSolarStay","GLOBAL",0) !StateCheck("Ninde",CD_STATE_NOTVALID)~ DO ~SetGlobal("LK#NindeSolarStay","GLOBAL",1)~ EXTERN LK#NI25J SolarStay
END

CHAIN LK#NI25J SolarChoice
~And we come to it at last... as I always knew we would.  Your destiny, Bhaalspawn.~
END
++ ~What do you think I should do, Ninde?~ + SolarChoice1
++ ~Do you still think that perhaps we might have a chance, you and I?~ + SolarChoice2
++ ~My destiny indeed.~ + SolarChoice3

CHAIN LK#NI25J SolarChoice1
~I think... I think when a man is offered godhood, he ought to grasp it with both hands and never let it go.  But you are not all men, <CHARNAME>, and my opinion in the matter is ultimately meaningless.~
= ~I...I would be sad to see you leave, I must admit.  I would have liked... no.  It does not matter what I might have liked.  The choice, my lord, is yours.  I trust you to make the correct one.~
END
COPY_TRANS FINSOL01 27

CHAIN LK#NI25J SolarChoice2
~I...do not think that you should allow that sliver of a chance to cloud your judgement, <CHARNAME>.  You have been offered eternity... power beyond mortal measure.  Think very carefully, my lord.~
= ~I would be sad to see you leave, I must admit, but the choice, my lord, is yours.  I trust you to make the correct one.~
END
COPY_TRANS FINSOL01 27

CHAIN LK#NI25J SolarChoice3
~I...I would be sad to see you leave, I must admit.  I would have liked... no.  It does not matter what I might have liked.  The choice, my lord, is yours.  I trust you to make the correct one.~
END
COPY_TRANS FINSOL01 27

CHAIN LK#NI25J SolarChoice4
~When a <PRO_MANWOMAN> is offered godhood, <CHARNAME>, <PRO_HESHE> ought to grasp it with both hands and never let it go.  You have been offered eternity... power beyond mortal measure.  Think very carefully, my <PRO_LADYLORD>.~
END
COPY_TRANS FINSOL01 27

CHAIN LK#NI25J SolarLeave
~Then...then this is goodbye.  I wish you luck, my Bhaalspawn, and success, and a reign that does not fail until the last star has fallen from the sky.~
END
COPY_TRANS FINSOL01 29

CHAIN LK#NI25J SolarStay
~I...cannot say that I understand it, <CHARNAME>, but... thank you.  Truly.~
END
COPY_TRANS FINSOL01 32

// -------------------------------------
// Ninde Player Initiated Dialogue
// -------------------------------------
APPEND LK#NI25J 

 // Clicky-click
IF ~IsGabber(Player1) !Global("LK#NindeRomanceActive","GLOBAL",2)~ pid1
  SAY ~(You approach Ninde with a sense of trepidation--one can never be sure what the lusty sun elf will do next.)~
  ++ ~(Ask Ninde a question)~ + pidchat
  ++ ~(Leave Ninde alone)~ EXIT
END

IF ~IsGabber(Player1) Global("LK#NindeRomanceActive","GLOBAL",2)~ pid2
  SAY ~(As you approach Ninde, she throws you one of her rare, languid smiles.)~
  ++ ~(Ask Ninde a question)~ + pidchat
  + ~GlobalLT("LK#NindeLoveTalksTOB","GLOBAL",11)~ + ~(Flirt with Ninde)~ + pidflirt
  ++ ~(Leave Ninde alone)~ EXIT
END

IF ~~ pidchat
  SAY ~Out with it then, Bhaalspawn, I haven't all day, you know.~
  ++ ~Ninde, what is your favourite colour?~ + LK#NindeChat_colour
  ++ ~Ninde, what is your favourite flower?~ + LK#NindeChat_flower
  + ~!Global("LK#NindeRomanceActive","GLOBAL",2) Gender(Player1,MALE)~ + ~Have you ever...been with a man?~ + LK#NindeChat_man
  + ~Gender(Player1,FEMALE)~ + ~Have you ever...been with a man?~ + LK#NindeChat_man
  + ~!Global("LK#NindeRomanceActive","GLOBAL",2)~ + ~Have you ever been in love?~ + LK#NindeChat_love
  ++ ~What's your favourite place?~ + LK#NindeChat_place
  ++ ~Do you have a favourite food?~ + LK#NindeChat_food
  ++ ~Have you ever kissed a woman?~ + LK#NindeChat_kissedgirl
  + ~Gender(Player1,MALE)~ + ~What do you think of me?~ + LK#NindeChat_opinion
  + ~Gender(Player1,FEMALE)~ + ~What do you think of me?~ + LK#NindeChat_opinion2
  ++ ~How long have you been a mage for, Ninde?~ + LK#NindeChat_mage
  ++ ~What were your parents like?~ + LK#NindeChat_parents
  ++ ~Do you have any siblings?~ + LK#NindeChat_siblings
  ++ ~Where did you grow up?~ + LK#NindeChat_growup
  ++ ~Why is it that you're evil, Ninde?~ + LK#NindeChat_evil
  ++ ~If you could be an animal, what would you be?~ + LK#NindeChat_animal
  ++ ~What does your name mean?~ + LK#NindeChat_name
  + ~RandomNum(2,1)~ + ~Ninde, what do you look for in a man?~ + LK#NindeChat_lookfor1
  + ~RandomNum(2,2)~ + ~Ninde, what do you look for in a man?~ + LK#NindeChat_lookfor2
  + ~RandomNum(4,2) GlobalGT("Chapter","GLOBAL",5) !AreaCheck("AR2100") !AreaCheck("AR2200") !AreaCheck("AR1500") !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516")~ + ~Have you any advice for me, Ninde?~ + LK#NindeChat_advice1
  + ~RandomNum(4,3) GlobalGT("Chapter","GLOBAL",5) !AreaCheck("AR2100") !AreaCheck("AR2200") !AreaCheck("AR1500")  !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516")~ + ~Have you any advice for me, Ninde?~ + LK#NindeChat_advice2
  + ~RandomNum(4,4) GlobalGT("Chapter","GLOBAL",5) !AreaCheck("AR2100") !AreaCheck("AR2200") !AreaCheck("AR1500")  !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516")~ + ~Have you any advice for me, Ninde?~ + LK#NindeChat_advice3
  + ~RandomNum(3,1) !GlobalGT("Chapter","GLOBAL",5) !AreaCheck("AR2100") !AreaCheck("AR2200") !AreaCheck("AR1500") !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516")~ + ~Have you any advice for me, Ninde?~ + LK#NindeChat_advice1
  + ~RandomNum(3,2) !GlobalGT("Chapter","GLOBAL",5) !AreaCheck("AR2100") !AreaCheck("AR2200") !AreaCheck("AR1500")  !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516")~ + ~Have you any advice for me, Ninde?~ + LK#NindeChat_advice2
  + ~RandomNum(3,3) !GlobalGT("Chapter","GLOBAL",5) !AreaCheck("AR2100") !AreaCheck("AR2200") !AreaCheck("AR1500")  !AreaCheck("AR1512") !AreaCheck("AR1513") !AreaCheck("AR1514") !AreaCheck("AR1515") !AreaCheck("AR1516")~ + ~Have you any advice for me, Ninde?~ + LK#NindeChat_advice3
  ++ ~What were you like as a child?~ + LK#NindeChat_child
  ++ ~Do you have a favourite word, Ninde?~ + LK#NindeChat_word
  ++ ~What, in your opinion, is the best thing to be discovered by men and gods?~ + LK#NindeChat_best
  + ~RandomNum(6,1)~ + ~Ninde, you're very beautiful.~ + LK#NindeChat_pretty1
  + ~RandomNum(6,2)~ + ~Ninde, you're very beautiful.~ + LK#NindeChat_pretty2
  + ~RandomNum(6,3)~ + ~Ninde, you're very beautiful.~ + LK#NindeChat_pretty3
  + ~RandomNum(6,4)~ + ~Ninde, you're very beautiful.~ + LK#NindeChat_pretty4
  + ~RandomNum(6,5)~ + ~Ninde, you're very beautiful.~ + LK#NindeChat_pretty5
  + ~RandomNum(6,6)~ + ~Ninde, you're very beautiful.~ + LK#NindeChat_pretty6
  + ~Global("LK#NindeRomanceActive","GLOBAL",2)~ + ~Er, Ninde--I think you may have the wrong idea about us.  I'd rather we remained friends.  If you have friends.~ DO ~SetGlobal("LK#NindeRomanceActive","GLOBAL",3)~ + LK#NindeChat_justfriends
  ++ ~(Leave Ninde alone)~ EXIT
END

IF ~~ pidflirt
  SAY ~What is it?~
  + ~RandomNum(12,1)~ + ~(Watch Ninde)~ + LK#NindeFlirt_watch1
  + ~RandomNum(12,2)~ + ~(Watch Ninde)~ + LK#NindeFlirt_watch2
  + ~RandomNum(12,3)~ + ~(Watch Ninde)~ + LK#NindeFlirt_watch3
  + ~RandomNum(12,4)~ + ~(Watch Ninde)~ + LK#NindeFlirt_watch4
  + ~RandomNum(12,5)~ + ~(Watch Ninde)~ + LK#NindeFlirt_watch5
  + ~RandomNum(12,6)~ + ~(Watch Ninde)~ + LK#NindeFlirt_watch6
  + ~RandomNum(12,7)~ + ~(Watch Ninde)~ + LK#NindeFlirt_watch7
  + ~RandomNum(12,8)~ + ~(Watch Ninde)~ + LK#NindeFlirt_watch8
  + ~RandomNum(12,9)~ + ~(Watch Ninde)~ + LK#NindeFlirt_watch9
  + ~RandomNum(12,10)~ + ~(Watch Ninde)~ + LK#NindeFlirt_watch10
  + ~RandomNum(12,11)~ + ~(Watch Ninde)~ + LK#NindeFlirt_watch11
  + ~RandomNum(12,12)~ + ~(Watch Ninde)~ + LK#NindeFlirt_watch12
  + ~RandomNum(7,1)~ + ~(Play with Ninde's hair)~ + LK#NindeFlirt_hair1
  + ~RandomNum(7,2)~ + ~(Play with Ninde's hair)~ + LK#NindeFlirt_hair2
  + ~RandomNum(7,3)~ + ~(Play with Ninde's hair)~ + LK#NindeFlirt_hair3
  + ~RandomNum(7,4)~ + ~(Play with Ninde's hair)~ + LK#NindeFlirt_hair4
  + ~RandomNum(7,5)~ + ~(Play with Ninde's hair)~ + LK#NindeFlirt_hair5
  + ~RandomNum(7,6)~ + ~(Play with Ninde's hair)~ + LK#NindeFlirt_hair6
  + ~RandomNum(7,7)~ + ~(Play with Ninde's hair)~ + LK#NindeFlirt_hair7
  + ~RandomNum(7,1) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance1
  + ~RandomNum(7,2) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance2
  + ~RandomNum(7,3) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance3
  + ~RandomNum(7,4) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance4
  + ~RandomNum(7,5) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance5
  + ~RandomNum(7,6) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance6
  + ~RandomNum(7,7) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance7
  + ~RandomNum(3,1) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance4
  + ~RandomNum(3,2) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance5
  + ~RandomNum(3,3) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance6
  + ~RandomNum(8,1) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance21
  + ~RandomNum(8,2) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance22
  + ~RandomNum(8,3) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance23
  + ~RandomNum(8,4) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance24
  + ~RandomNum(8,5) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance25
  + ~RandomNum(8,6) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance26
  + ~RandomNum(8,7) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance27
  + ~RandomNum(8,8) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalGT("LK#NindeLoveTalks","GLOBAL",14)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance28
  + ~RandomNum(6,1)  OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance21
  + ~RandomNum(6,2) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance22
  + ~RandomNum(6,3) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance23
  + ~RandomNum(6,4) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance24
  + ~RandomNum(6,5) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance25
  + ~RandomNum(6,6) OR(2) AreaCheck("AR5003") AreaCheck("AR5501") CheckStatGT(Player1,8,DEX) OR(3) Race(Player1,HALFLING) Race(Player1,GNOME) Race(Player1,DWARF) GlobalLT("LK#NindeLoveTalks","GLOBAL",15)~ + ~(Dance with Ninde)~ + LK#NindeFlirt_dance26
  + ~RandomNum(13,1)~ + ~(Smile at Ninde)~ + LK#NindeFlirt_smile1
  + ~RandomNum(13,2)~ + ~(Smile at Ninde)~ + LK#NindeFlirt_smile2
  + ~RandomNum(13,3)~ + ~(Smile at Ninde)~ + LK#NindeFlirt_smile3
  + ~RandomNum(13,4)~ + ~(Smile at Ninde)~ + LK#NindeFlirt_smile4
  + ~RandomNum(13,5)~ + ~(Smile at Ninde)~ + LK#NindeFlirt_smile5
  + ~RandomNum(13,6)~ + ~(Smile at Ninde)~ + LK#NindeFlirt_smile6
  + ~RandomNum(13,7)~ + ~(Smile at Ninde)~ + LK#NindeFlirt_smile7
  + ~RandomNum(13,8)~ + ~(Smile at Ninde)~ + LK#NindeFlirt_smile8
  + ~RandomNum(13,9)~ + ~(Smile at Ninde)~ + LK#NindeFlirt_smile9
  + ~RandomNum(13,10)~ + ~(Smile at Ninde)~ + LK#NindeFlirt_smile10
  + ~RandomNum(13,11)~ + ~(Smile at Ninde)~ + LK#NindeFlirt_smile11
  + ~RandomNum(13,12)~ + ~(Smile at Ninde)~ + LK#NindeFlirt_smile12
  + ~RandomNum(13,13)~ + ~(Smile at Ninde)~ + LK#NindeFlirt_smile13
  + ~RandomNum(5,1)~ + ~(Hug Ninde)~ + LK#NindeFlirt_hug5
  + ~RandomNum(5,2)~ + ~(Hug Ninde)~ + LK#NindeFlirt_hug6
  + ~RandomNum(5,3)~ + ~(Hug Ninde)~ + LK#NindeFlirt_hug7
  + ~RandomNum(5,4)~ + ~(Hug Ninde)~ + LK#NindeFlirt_hug8
  + ~RandomNum(5,5)~ + ~(Hug Ninde)~ + LK#NindeFlirt_hug9
  + ~RandomNum(7,1) CheckStatGT(Player1,12,DEX)~ + ~(Tickle Ninde)~ + LK#NindeFlirt_tickle1
  + ~RandomNum(7,2) CheckStatGT(Player1,12,DEX)~ + ~(Tickle Ninde)~ + LK#NindeFlirt_tickle2
  + ~RandomNum(7,3) CheckStatGT(Player1,12,DEX)~ + ~(Tickle Ninde)~ + LK#NindeFlirt_tickle3
  + ~RandomNum(7,4) CheckStatGT(Player1,12,DEX)~ + ~(Tickle Ninde)~ + LK#NindeFlirt_tickle4
  + ~RandomNum(7,5) CheckStatGT(Player1,12,DEX)~ + ~(Tickle Ninde)~ + LK#NindeFlirt_tickle5
  + ~RandomNum(7,6) CheckStatGT(Player1,12,DEX)~ + ~(Tickle Ninde)~ + LK#NindeFlirt_tickle6
  + ~RandomNum(7,7) CheckStatGT(Player1,12,DEX)~ + ~(Tickle Ninde)~ + LK#NindeFlirt_tickle8
  + ~RandomNum(8,1) CheckStatLT(Player1,13,DEX)~ + ~(Tickle Ninde)~ + LK#NindeFlirt_tickle1
  + ~RandomNum(8,2) CheckStatLT(Player1,13,DEX)~ + ~(Tickle Ninde)~ + LK#NindeFlirt_tickle2
  + ~RandomNum(8,3) CheckStatLT(Player1,13,DEX)~ + ~(Tickle Ninde)~ + LK#NindeFlirt_tickle3
  + ~RandomNum(8,4) CheckStatLT(Player1,13,DEX)~ + ~(Tickle Ninde)~ + LK#NindeFlirt_tickle4
  + ~RandomNum(8,5) CheckStatLT(Player1,13,DEX)~ + ~(Tickle Ninde)~ + LK#NindeFlirt_tickle5
  + ~RandomNum(8,6) CheckStatLT(Player1,13,DEX)~ + ~(Tickle Ninde)~ + LK#NindeFlirt_tickle6
  + ~RandomNum(8,7) CheckStatLT(Player1,13,DEX)~ + ~(Tickle Ninde)~ + LK#NindeFlirt_tickle7
  + ~RandomNum(8,7) CheckStatLT(Player1,13,DEX)~ + ~(Tickle Ninde)~ + LK#NindeFlirt_tickle8
  + ~RandomNum(4,1)~ + ~(Pat Ninde's behind)~ + LK#NindeFlirt_pat5
  + ~RandomNum(4,2)~ + ~(Pat Ninde's behind)~ + LK#NindeFlirt_pat6
  + ~RandomNum(4,3)~ + ~(Pat Ninde's behind)~ + LK#NindeFlirt_pat7
  + ~RandomNum(4,4)~ + ~(Pat Ninde's behind)~ + LK#NindeFlirt_pat8 
  + ~RandomNum(10,1)~ + ~(Ogle Ninde)~ + LK#NindeFlirt_ogle1
  + ~RandomNum(10,2)~ + ~(Ogle Ninde)~ + LK#NindeFlirt_ogle2
  + ~RandomNum(10,3)~ + ~(Ogle Ninde)~ + LK#NindeFlirt_ogle3
  + ~RandomNum(10,4)~ + ~(Ogle Ninde)~ + LK#NindeFlirt_ogle4
  + ~RandomNum(10,5)~ + ~(Ogle Ninde)~ + LK#NindeFlirt_ogle5
  + ~RandomNum(10,6)~ + ~(Ogle Ninde)~ + LK#NindeFlirt_ogle6
  + ~RandomNum(10,7)~ + ~(Ogle Ninde)~ + LK#NindeFlirt_ogle7
  + ~RandomNum(10,8)~ + ~(Ogle Ninde)~ + LK#NindeFlirt_ogle8
  + ~RandomNum(10,9)~ + ~(Ogle Ninde)~ + LK#NindeFlirt_ogle9
  + ~RandomNum(10,10)~ + ~(Ogle Ninde)~ + LK#NindeFlirt_ogle10
  + ~RandomNum(10,1)~ + ~(Wink at Ninde)~ + LK#NindeFlirt_wink1
  + ~RandomNum(10,2)~ + ~(Wink at Ninde)~ + LK#NindeFlirt_wink2
  + ~RandomNum(10,3)~ + ~(Wink at Ninde)~ + LK#NindeFlirt_wink3
  + ~RandomNum(10,4)~ + ~(Wink at Ninde)~ + LK#NindeFlirt_wink4
  + ~RandomNum(10,5)~ + ~(Wink at Ninde)~ + LK#NindeFlirt_wink5
  + ~RandomNum(10,6)~ + ~(Wink at Ninde)~ + LK#NindeFlirt_wink6
  + ~RandomNum(10,7)~ + ~(Wink at Ninde)~ + LK#NindeFlirt_wink7
  + ~RandomNum(10,8)~ + ~(Wink at Ninde)~ + LK#NindeFlirt_wink8
  + ~RandomNum(10,9)~ + ~(Wink at Ninde)~ + LK#NindeFlirt_wink9
  + ~RandomNum(10,10)~ + ~(Wink at Ninde)~ + LK#NindeFlirt_wink10
  + ~RandomNum(5,1)~ + ~(Hold Ninde's hand)~ + LK#NindeFlirt_hold1
  + ~RandomNum(5,2)~ + ~(Hold Ninde's hand)~ + LK#NindeFlirt_hold2
  + ~RandomNum(5,3)~ + ~(Hold Ninde's hand)~ + LK#NindeFlirt_hold3
  + ~RandomNum(5,4)~ + ~(Hold Ninde's hand)~ + LK#NindeFlirt_hold4
  + ~RandomNum(5,5)~ + ~(Hold Ninde's hand)~ + LK#NindeFlirt_hold5
  + ~RandomNum(5,1)~ + ~(Offer Ninde a massage)~ + LK#NindeFlirt_massage1
  + ~RandomNum(5,2)~ + ~(Offer Ninde a massage)~ + LK#NindeFlirt_massage2
  + ~RandomNum(5,3)~ + ~(Offer Ninde a massage)~ + LK#NindeFlirt_massage3
  + ~RandomNum(5,4)~ + ~(Offer Ninde a massage)~ + LK#NindeFlirt_massage4
  + ~RandomNum(5,5)~ + ~(Offer Ninde a massage)~ + LK#NindeFlirt_massage5
  + ~RandomNum(10,1)~ + ~(Kiss Ninde's hand)~ + LK#NindeFlirt_kisshand1
  + ~RandomNum(10,2)~ + ~(Kiss Ninde's hand)~ + LK#NindeFlirt_kisshand2
  + ~RandomNum(10,3)~ + ~(Kiss Ninde's hand)~ + LK#NindeFlirt_kisshand3
  + ~RandomNum(10,4)~ + ~(Kiss Ninde's hand)~ + LK#NindeFlirt_kisshand4
  + ~RandomNum(10,5)~ + ~(Kiss Ninde's hand)~ + LK#NindeFlirt_kisshand5
  + ~RandomNum(10,6)~ + ~(Kiss Ninde's hand)~ + LK#NindeFlirt_kisshand6
  + ~RandomNum(10,7)~ + ~(Kiss Ninde's hand)~ + LK#NindeFlirt_kisshand7
  + ~RandomNum(10,8)~ + ~(Kiss Ninde's hand)~ + LK#NindeFlirt_kisshand8
  + ~RandomNum(10,9)~ + ~(Kiss Ninde's hand)~ + LK#NindeFlirt_kisshand9
  + ~RandomNum(10,10)~ + ~(Kiss Ninde's hand)~ + LK#NindeFlirt_kisshand10
  ++ ~(Leave Ninde alone)~ EXIT
END

// Utility options

IF ~~ LK#NindeChat_justfriends
  SAY ~(Ninde's lips turn up into a smile, but her eyes remain devoid of any good humor.  She is composed as she turns toward you.)~
  = ~Ninde does not have friends, she has sycophants.  And there is always room for more of those, dear.~
  IF ~~ EXIT
END

// Question answers
IF ~~ LK#NindeChat_colour
  SAY ~Black, I suppose.  Imagine the stains if I wore, say, yellow, in my line of work.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_flower
  SAY ~Fly Traps, darling.  There's something delightfully predatory about them, don't you think?~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_man
  SAY ~Ooh...More then you can count on your toes and fingers, Bhaalspawn.  Possibly even more than the hairs on your back!~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_man2
  SAY ~Ooh...More then you can count on your toes and fingers, Bhaalspawn.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_love
  SAY ~Enough to know that love is very frightful and powerful thing, and not to be bandied about.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_place
  SAY ~I suppose it would have been my...my home in Waterdeep, although it was burnt to the ground during the Time of Troubles.  There used to be this beautiful silver birch in the courtyard.  When I was a child I would make holes in the leaves and stare through them up at the sun.~
  = ~And it just smelt so...so clean.  With the lemon grass and the pines in the gardens.  But Shar, I'm being sentimental again.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_food
  SAY ~Sugared pears, liquorice mice, gingerbread, pancakes in syrup.  I do have quite the sweet tooth, although it is difficult to indulge in such luxuries whilst traveling.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_kissedgirl
  SAY ~That would be one fit of debauchery too many.  Apologies if I've just dashed any dreams of yours.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_opinion
  SAY ~I think you're sufficiently wealthy and attractive to maintain my interest, and isn't that all that matters, Bhaalspawn?~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_opinion2
  SAY ~I think you're sufficiently wealthy and interesting to maintain my interest, and isn't that all that matters, Bhaalspawn?~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_mage
  SAY ~I was very young when I began spell casting, ten perhaps.  It was one of the only pursuits, simpering aside, thought suitable for a girl of my wealth.  Suitably hygienic, pleasingly weapon-free, and I couldn't abide the thought of sitting around embroidering cushions or some such.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_parents
  SAY ~They were evidently moon gazing fey who misplaced one of their children during a Drow attack, if you mean my blood parents.  My adoptive father was a Waterdhavian merchant of some repute.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_siblings
  SAY ~Not of my knowledge, although I may have a few long-eared brothers and sisters knocking about Evereska.  I...I did have a human brother, growing up, although he's long since dead.  Poor Respen never could tell the nice girls from the ones who were going to steal his money and slit his throat, the dear boy.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_growup
  SAY ~Waterdeep, the jewel of the north.  A beauty of a place, a city of contrast and surprises at every turn.  I always felt slightly out of place there, however, amidst the preening human nobles.  My heritage always caused me to be curiosity of sorts to them.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_evil
  SAY ~Me?  Evil?  I'm positively scandalized, <CHARNAME>.  I may be a little on the naughty side from time to time but I feel that generally I'm an upstanding young citizen.  (Ninde smiles and places her hand over her heart in mock civic pride, but with a luxuriant little sigh, seems to become distracted by the bulk of her left breast beneath her robe.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_animal
  SAY ~One of those irritating little yappy dogs that wealthy old women like to keep in their wizened laps.  A life of little pink ribbons and biting at footmen for Ninde!~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_name
  SAY ~Something very ugly and very well-suited to me.~
  = ~But I shan't tell.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_lookfor1
  SAY ~A hefty purse and the muscle to lift it.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_lookfor2
  SAY ~Wealthy and infamy.  Or at least, the ambition to possess both.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_advice1
  SAY ~Never wear purple and orange together.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_advice2
  SAY ~It's not the size of your weapon, it's what you do with it, darling.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_advice3
  SAY ~All that glitters is not gold, but we still might be able to foist it off on some scatter-brained merchant when we're next in town.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_child
  SAY ~Your usual precocious little brat who wore her hair in messy braids and wanted to be a unicorn tamer.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_word
  SAY ~'Fecund'.~
  = ~Hmm...either that, or 'morsel'.  Both just roll off the tongue, don't you think?~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_best
  SAY ~My heaving bosom.  No, honestly, just look at them!  I rather think it's the chance to catch me unlacing my bodice that keeps Helm so famously vigilant.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_pretty1
  SAY ~Oh, Bhaalspawn, I bet you say that to all the Necromancers.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_pretty2
  SAY ~Yes, well.  Stop going on about it and create some sort of lasting tribute.  A sculpture or epic poem ought to do it.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_pretty3
  SAY ~You're not so very bad yourself.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_pretty4
  SAY ~Almost too beautiful, in fact.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_pretty5
  SAY ~A sweet face and a mean spell is a winning combination, I suppose.~
  IF ~~ EXIT
END

IF ~~ LK#NindeChat_pretty6
  SAY ~Oh...But it is what's inside that counts, Bhaalspawn...~
  = ~Ha!  You thought me serious for a moment, there.~
  IF ~~ EXIT
END





// Flirt responses
IF ~~ LK#NindeFlirt_watch1
  SAY ~(You find that this time, it is Ninde's face that arrests your attention.  She isn't conventionally pretty, not at all, yet the daring unsymmetrical has an unspeakable appeal.  Perhaps it is the way her rude scarlet mouth always looks slightly, childishly petulant.  Perhaps it is the gentle tilt of her eyes, at once lively and appraising.  Either way, the sensuality of the sun elf's character is ever at play in her features.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch2
  SAY ~(Although you begin admiring Ninde's figure, you soon notice her gait; and you could swear, she is the proud possessor of the most arrogant walk you have ever seen on a woman.  Abandoning the sensual swing she usually adopts when the party is at leisure, while marching, she canters boldly forward.  It isn't the usual adventurer's trudge, or the walk of a woman aware of her insignificance.  No.  Ninde's walk is the walk of a woman on her way to a very good time, and fully aware of how much she deserves it.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch3
  SAY ~(As occasionally happens during the toil of the day, you find a brief moment to steal a glance at Ninde.  When she bends down to reach for a waterskin, you find yourself studying the wild, racehorse look her slender body gives her.  Built a little more solidly than many of her race, you watch as she rolls up the sleeves of her robe.  Her forearms, ridged by not the smallest of scars, look like they would be soft to the touch, if you dared to touch them.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch4
  SAY ~(There is a suspiciously hard look in Ninde's face, today, and you surmise that to approach her could be more then a little hazardous.  You can still watch from afar, however, as annoyance sparks behind her eyes, like a chunk of yellow amber catching the sunlight.  The button nose crinkles at every hold-up, every small annoyance, and her red mouth twitches more impetuously than ever.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch5
  SAY ~(Walking behind Ninde is more of a pleasure than you dare admit.  Whether she is aware of your gaze or not, she trots in front of you with the most practiced sway of the hips, demonstrating precisely how very aware she is of the mesmeric qualities of the curvaceous female form.  Your scrutiny is prematurely curtailed, however, as you decide you best shift your attention before Ninde becomes aware of it.  You know you'll never hear the end of it, if she does.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch6
  SAY ~(Ninde has lowered her hood, and is re-arranging her hair, drawing its silky black mass back into a neat braid.  Her profile is more delicate than her face when viewed from the front, perhaps because of the spidery lashes, the daintily projecting lips.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch7
  SAY ~(To your surprise, you find Ninde reciprocating your gaze.  At first she looks suspicious, but then her hard mouth breaks into an easy, devil-may-care smile, drawing her black-gold eyes across your shoulders, your jaw.  She gives you an insouciant wink, before turning away.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch8
  SAY ~(Ninde's skin is tan, though not the same shade as a field labourer in the summer; more honey and cinnamon than coarse bronze.  She strolls up beside you, and you notice how even in the dimmest settings her cheekbones gleam, and in the brightest light, she glows as though she has been rolling in gold dust.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch9
  SAY ~You take advantage of a break in marching to watch Ninde.  She stands opposite you, examining your surrounding with faint interest, before leaning forward to remove something from her pack.  As she does so, her silk robe, loose as a whisper about her shoulders, slips forward, giving you an admirable view of her cleavage.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch10
  SAY ~(As you turn to take a glance at Ninde, you find she is one step ahead; her curved eyes, sickle sharp, meet yours.  The light touches their lower rims, highlighting flecks of almost-green.  Her eyes are not yellow.  They are not black.  They are not hazel.  They are the colour of an old statue, left in a woodland glen, gold abandoned to decay.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch11
  SAY ~(Today, Ninde looks self-satisfied.  Like a cat that got the cream.  As you reflect on the old adage, you notice their is something very leonine about the elf's features, with its wide, high cheekbones, button nose and turned-up mouth.  You suspect that if you drew a hand across her naked shoulders, she'd purr.  You suspect that if you tried to hold her, she'd claw.  Perhaps she is more lion than domesticated feline.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_watch12
  SAY ~(As you take a break, Ninde sits, radiating indolence and a carefree disinterest in everything but her own hands, which she modestly folds on her knees.  Gazing around a little, her eyes meet yours, and with a sudden change of expression, she sticks her tongue out at you and giggles.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hair1
  SAY ~(Ninde's hood is lowered, but her hair is twisted into a neat braid.  This school-madam style seems oddly incongruous with the rest of Ninde, who brims, walks, speaks, breathes a naughty sensuality.  You reach across a hand, and gently smooth an errant strand of dark hair back behind her hear.  Ninde does not react, however, frowning and twitching her ear, as though a fly had alighted there, and not your hand.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hair2
  SAY ~(Ninde's hair is loose and falls sweet and soft across her shoulders, and half of her face.  As you reach forward to touch a black tumble of it, the elf tosses her head in a practiced manner and turns to look at you.)~
  = ~Beautiful, isn't it?  Put every satin gown I owned to shame.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hair3
  SAY ~(For some reason Ninde stands with her eyes closed, as though in some kind of trance.  You take the opportunity to run a hand through her dark hair.  As you do so, Ninde murmurs as though gently awoken, and a smile spreads across her lips.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hair4
  SAY ~(Ninde is re-arranging her hair, drawing it into a neat plait at the back of her head.  With some idea of offering assistance, you reach forward, only to find your fingers slapped away by the tortoiseshell comb she efficaciously brandishes.)~
  = ~Tsk!  One doesn't interfere with Ninde's hair, dear.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hair5
  SAY ~(When Ninde leans forward, her hair falls, a dark curtain, behind her elegant profile.  You reach to draw it back behind her shoulder.  To your suprise, she seems to momentarily press the side of her face against your hand, a movement at once cat-like and vulnerable.  A moment later, and she withdraws.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hair6
  SAY ~(Ninde is still, her features perched above her spell book with a studious frown.  Her hair obscures half her face, and she seems not to notice as you begin to run your fingers through it's smoky waves.  She is still unmoved from her studies as you begin to inexpertly braid small sections of it, and the pair of you sit undisturbed for quite a while.  Ninde, absorbed in the runic wonders of her art, and you in the carbon glory of her tresses.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hair7
  SAY ~(As you gently brush your fingertips against a few fly away strands of the sun elf's hair, you find your attentions met with a harsh glare.)~
  = ~I'm an archmage, darling, not a pony.  Kindly leave off the stroking.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance1
  SAY ~(Ninde is sitting at the edge of the group, observing the crowd and practising her characteristic cat-like indolence.  You decide she could do with a little cheering up, so you offer her a dance.)~
  = ~(As you speak, Ninde's scornful expression is replaced by an almost bashful smile.)~
  = ~You're a brave man, <CHARNAME>.  Didn't you see my contempt-face?  (She giggles again, before taking your offered hand.  The dancefloor is crowded, and a fast-paced, jostling song is played.  You place your hand on Ninde's waist, and her nut-brown arms encircle your shoulders.  The dance is not especially romantic, neither is it graceful, but it is companionable.)~
  = ~(You talk throughout, and as the song draws to a close, you comment on the lacklustre vocal stylings of the Bard involved, and Ninde laughs, her head lingering on your shoulder for a few moments, before you return to the rest of the party.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance2
  SAY ~(Ninde looks pensive, her body particularly rigid at your table, and so, as a jolly tune is struck up, you think a dance might perhaps enliven her.)~
  = ~(Ninde looks at your proffered hand, then up into your face, then takes it without a second word.  As you lead her to the floor, a Bard begins to sing a ballad you remember from your childhood--a song about a gold dragon whose elven lover is killed.  Ninde fixes her arms around you, and you begin to dance, slowly, swaying.)~
  = ~(The elf's grace, though not otherworldly, is obvious, and she moves as though herself caught in ecstasies of sorrow.  As the last notes of the love song drip from the harp, you are held close together, Ninde's eyes closed, her expression soft and dreamlike.  As she releases you, she sighs.)~
  = ~I haven't heard that song...in so long.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance3
  SAY ~Very well.  If you step on my toes, however, I shall break you in ways you never imagined.~
  = ~(Despite these discouraging words, the pair of you proceed.  To your dismay, a formal court dance is played--and one Ninde knows all the steps too.  You manage to keep up well enough though, and you notice a coy smile playing about Ninde's lips as your arm encircles her waist for the final turn.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance4
  SAY ~Dance?  With you?  I think not.  I'd rather marry a jolly, jolly peatbog farmer from the Moonshaes and spend the rest of my days lolling about in a straw hat and clogs.~
  = ~Clogs do nothing for my posture.  So that would be a no.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance5
  SAY ~(Ninde looks down at your hand, and apparently disregarding your question, pulls a face.)~
  = ~When was the last time you scrubbed beneath your nails?  I think there's dirt under there that pre-dates The Simbul and breadcrumbs that could be considered antique.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance6
  SAY ~(As you ask her to dance, Ninde sighs, and restlessly gazes about her.)~
  = ~My apologies, <CHARNAME>.  I am not in the mood this evening.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance7
  SAY ~(Ninde purses her lips for a moment, before grinning.)~
  = ~Why, how could I resist taking the Bhaalspawn for a song?~
  = ~(With a gracious, somewhat ironic curtsy, she takes your hand and the pair of you join the other couples as a quaint, bouncing piece begins.  Ninde seems cheerful enough, and dances charmingly, her dark skirts flowing, her hand barely touching yours.  As the tune ends, she laughs, and grasps your arms, quite out of breath.)~
  = ~Not bad at all, <CHARNAME>.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance21
  SAY ~You dance?  Perhaps you may be willing to provide the locals with a little amusement, but I would take little pleasure in such humiliation.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance22
  SAY ~Shoot up a couple more feet and perhaps I'll consider it.  I don't dance with people who's head's are more or less parallel to my midriff.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance23
  SAY ~Dance?  With you?  I think not.  I'd rather marry a jolly, jolly peatbog farmer from the Moonshaes and spend the rest of my days lolling about in a straw hat and clogs.~
  = ~Clogs do nothing for my posture.  So that would be a no.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance24
  SAY ~(Ninde looks down at your hand, and apparently disregarding your question, pulls a face.)~
  = ~When was the last time you scrubbed beneath your nails?  I think there's dirt under there that pre-dates The Simbul and breadcrumbs that could be considered antique.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance25
  SAY ~(As you ask her to dance, Ninde sighs, and restlessly gazes about her.)~
  = ~My apologies, <CHARNAME>.  I am not in the mood this evening.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance26
  SAY ~(Ninde looks pensive, her body particularly rigid at your table, and so, as a jolly tune is struck up, you think a dance might perhaps enliven her.)~
  = ~(Ninde looks at your proffered hand, then down into your face, then takes it without a second word.  As you lead her to the floor, a Bard begins to sing a ballad you remember from your childhood--a song about a gold dragon whose elven lover is killed.  Ninde fixes her arms around you, and you begin to dance, slowly, swaying.)~
  = ~(The elf's grace, though not otherworldly, is obvious, and she moves as though herself caught in ecstasies of sorrow.  As the last notes of the love song drip from the harp, she holds you closer to her, almost protectively.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance27
  SAY ~(Ninde smiles with quiet amusement as you offer her your hand, but not cruelly.)~
  = ~I'm not sure I quite feel up to for dancing these eve.  Sit and talk with me, instead?~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_dance28
  SAY ~(Ninde purses her lips for a moment, before grinning.)~
  = ~Why, how could I resist taking the Bhaalspawn for a song?~
  = ~(With a gracious, somewhat ironic curtsy, she takes your hand and the pair of you join the other couples as a quaint, bouncing piece begins.  Ninde seems cheerful enough, and dances charmingly, her dark skirts flowing, her hand barely touching yours.  As the tune ends, she laughs, and grasps your hands, quite out of breath.)~
  = ~Not bad at all, <CHARNAME>.  Not bad at all.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile1
  SAY ~(You smile with camaraderie, but in response she quirks a brow and gazes at you with weary disgust.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile2
  SAY ~Why the idiot grin, <CHARNAME>?  It doesn't endear you to me at all.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile3
  SAY ~(To your surprise, Ninde leans forward and closer to your face as you grin at her.  You think for a brief, uncertain moment that she is about to kiss you.  The illusion is predictably shattered as a high, apalled little cry issues from her.)~
  = ~Broccoli!  You have broccoli in your teeth.  How freakish you look!~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile4
  SAY ~Why does the young Bhaalspawn look so pleased?  Has he finally figured out how to button his tunic without Gorion helping him?  Hm?~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile5
  SAY ~If you smiled any harder, your face would split in half.  I've seen it happen actually, very horrible sort of magical accident, that.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile6
  SAY ~(Ninde notices your smile and returns the gesture, gazing coyly at you from under her black lashes.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile7
  SAY ~(Ninde's gaze is curious as you fix her with your best boyish grin.  After a moment she smiles back at you, though cautiously.  Her two front teeth are just visible between her lips, the silky mouth red and enticing.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile8
  SAY ~(You smile at Ninde and she laughs breezily, skipping ahead of you a few steps, before looking over her shoulder at you.  A loose tendril of hair grazes her golden cheek as she offers you her own subtle smile, and the sight is a pleasing one.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile9
  SAY ~(You begin to think you have upset Ninde, as in stead of returning your casual smirk in kind, she frowns.  She steps towards you, and raises her hand.  Almost instinctively you draw away from it, but then she touches your lips softly, and gazes at them with an almost dream-like sensuality.  A moment later she clears her throat and leaves you again.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile10
  SAY ~(Ninde returns your smile, though with no particular intensity.  She seem distracted as she turns away from you, gazing downward.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile11
  SAY ~(The sun elf's smile is confident and youthful.  You imagine roughly the same smile she used to insinuate her and her deep gold eyes into dozens of young Waterdhavian hearts around forty years previously.  You can see why it was so effective in inspiring attraction, as she offers you a final eyelash flutter.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile12
  SAY ~(Ninde is very rarely quiet, and yet, as she smiles at you, you wonder why she is so attached to words when she is able to communicate so much through mouth and eyes alone.  Her face, though not kind, inspires some strange confidence - which has no doubt contributed to her continued survival.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_smile13
  SAY ~(Nothing about Ninde seems fresh or new or clean but the smile she offers you, now.  Casually teasing her hair out of her face, holding the tie between her lips, she twitches her nose and winks at you before turning away.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hug5
  SAY ~(You hold out your arms to Ninde, but gently brushing your arms aside, she shakes her head.)~
  = ~I don't think so, <CHARNAME>.  For your sake as much as mine.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hug6
  SAY ~(Ninde allows you to embrace her, but her small body sits awkwardly against your chest, her arms oddly angled.  It seems she is attempting to maintain a good distance between you even during this affectionate act.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hug7
  SAY ~(Ninde allows you to hold her, but seemingly on the condition that you don't object to how utterly bored she looks while you do it.  As she separates from you, you notice she was examining her cuticles over your shoulder.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hug8
  SAY ~(You place your arms about Ninde's waist, and to your surprise, she squirms with delight, pressing herself up against your chest.  She is warm, her waist the sort that asks for an arm to be slung about it, and as she rests her dark head on your shoulder, you can't help but think this might all work out.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hug9
  SAY ~(You pull Ninde close, and with a little hiccough of surprise, she settles easily into you, her hand wandering up and down your chest, an idle smile teasing at her lips.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle1
  SAY ~(You creep towards Ninde with the idea of tickling her, but as you reach for the spot just above her waist, she hops away, turning to glare at you.)~
  = ~Keep your hands to yourself, Bhaalspawn.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle2
  SAY ~(You reach across and run your fingers down her sides, but Ninde simply tuts and brushes them away.  She seems to regard you as little more than a nuisance.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle3
  SAY ~(With impressive dexterity you reach out to grasp Ninde's wrist and teasingly run your fingers from her wrist to her elbow in a light, brushing movement.  She giggles, but then pulls away, her expression turning to one of aggravation.)~
  = ~Next time you tickle me, I shall tickle you back--with my knife.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle4
  SAY ~ (Taking great care to go unnoticed, you reach out, and caress the tender area just behind the sun elf's long ear.  She lets out a sweet burst of laughter, before slapping away your hand.  She turns, and clearing her throat, attempts to re-gain her composure before chastising you.)~
  = ~We're adventurers, <CHARNAME>, and must always be aware of our environment, our surroundings...or something.  Either way, next time you do that, I may just mistake your finger for the tentacle of a displacer beast, and then you might just find yourself on the wrong end of a magic missile.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle5
  SAY ~(You give Ninde a sly tickle on the shoulder, but she doesn't move, or seem to react at all.  A moment later she turns to you, her eyes insolent and dark.)~
  = ~I'm not ticklish, <CHARNAME>...well, maybe in just one little place...~
  = ~(You watch as she lifts a smooth leg and pulls back the folds of her robe to her mid-thigh.  Her calves are shapely and there is a dark violet bruise is splashed across her knee, no doubt from a recent battle.  Your attention is drawn away from this imperfection, however, as she runs a finger seductively up the back of her bare leg, just where a stocking seam would be.)~
  = ~Here...I am ticklish *just* here.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle6
  SAY ~(You feel more than a little triumphant as you manage to grab Ninde, and assail her with small tickling motions.  She seems distinctly unimpressed however, dryly pushing you away after a few moments.)~
  = ~I am not ticklish, <CHARNAME>.  Give up while you still can.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle7
  SAY ~(You attempt to tickle Ninde ferociously, and she responds in kind, by pushing you over, and placing a booted foot on the center of your chest, an imperious glow about her features.)~
  = ~There.  And I'm not letting you get up until you promise to desist.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_tickle8
  SAY ~(With a sudden decisive movement, you catch Ninde off guard and bombard her with tickling.  The elf squirms with mirth, and in between gasps of laughter, tries to wriggle from your arms.  She eventually succeeds, giving you a little mock-chastisement in the form of a slap on the wrist and girlish little scowl.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_pat5
  SAY ~<CHARNAME>!  One ought to show respect to a Lady; particularly one of my high standing.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_pat6
  SAY ~(As you place your hand against the soft roundness of Ninde's posterior, she does not react with anger or violence, or seem to resist in any particular way, but sighs deeply.)~
  = ~Lady Ninde Amblecrown - fallen from the shining heights of the Waterdhavian elite, desired and admired by all, to being physically accosted by a rough northern killer with breath like a fireball and arms like a wolfwere.  Joy.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_pat7
  SAY ~(With a playful chuckle, you draw up beside Ninde and run your hand down across the small of her back, across the pleasing, full curves of her rear.  Having had somewhat unpleasant experiences when attempting such intimacy with Ninde before, you brace yourself for cross words, or even a blow, but none come.  Ninde is looking sidelong into your face, her expression curious.)~
  = ~(A moment later you feel her hand running down your back to your thigh.)~
  = ~So, can <CHARNAME> receive as he gives?~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_pat8
  SAY ~If I'm completely honest, sugarbunch, there are other things I'd prefer you to touch...but by no means is that an invitation.  At least, not now.~
  IF ~~ EXIT
END


IF ~~ LK#NindeFlirt_ogle1
  SAY ~(Noticing your leer, Ninde fixes you with the stoniest of expressions.)~
  = ~Pick your jaw up off the floor, lest I wallop you in it.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle2
  SAY ~(Looking at you blankly, Ninde quirks a brow.)~
  = ~Careful, Bhaalspawn, or your eyeballs will fall out.  And then I'd have to use them for spell components.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle3
  SAY ~(Ninde doesn't seem particularly pleased to be attracting your lusty gaze, and fixes you with the fiercest glare you've seen since Gorion caught Imoen putting fire ants in Winthrop's underwear draw.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle4
  SAY ~Oh, Bhaalspawn...well, I suppose it only natural that you should stare.~
  = ~(Allowing herself a triumphant smile, Ninde turns away from you with a practiced toss of her glossy black hair.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle5
  SAY ~Really, Bhaalspawn, must you rubberneck at me like a sailor on leave?  There are more becoming postures.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle6
  SAY ~(Ninde is leafing through the pages of her spellbook, and as she looks up, you fix her with an admiring gaze.  She does not respond, but neither does she glare at you.  A breeze teases a few tendrils of dark hair against her warm brown cheek as she closes up the book.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle7
  SAY ~Seeing that your gaze is fixed on her, Ninde's buttercup eyes glint deviously.  She stretches as she walks, seemingly conscious of your appraisal of her long, slender arms, short, graceful torso and of course, the brown, inevitable legs.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle8
  SAY ~(As you ogle her, Ninde begins to giggle.)~
  = ~Oh <CHARNAME>, it's hopeless, you know.  I'm never going to like you.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle9
  SAY ~(You provocatively raise a brow at Ninde as she walks by you, seemingly engrossed in the state of her nails, which she makes a habit of meticulously cleaning every morning.  Her eyes flicker up as she passes by you, however, and noticing your expression, she smiles bashfully, and looking downward, smooths a dark tress behind her long ear.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_ogle10
  SAY ~(Ninde laughs breezily as run your eyes across the smooth skin of her throat and dÈcolletage.)~
  = ~Mm...If you like that, <CHARNAME>...you ought to see me without this...~
  = ~(The elf provocatively runs a hand along the inner seam of the tight silk bodice that compresses her breasts.)~
  IF ~~ EXIT
END


IF ~~ LK#NindeFlirt_wink1
  SAY ~What on Toril is the matter with your eye, Bhaalspawn?  You have a nervous twitch?  How comical.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink2
  SAY ~(Ninde rolls her sullen dark gold eyes, and her voice is laden with sarcasm when she speaks.)~
  = ~Clearly, Bhaalspawn, you are a master of seduction.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink3
  SAY ~(A devious smile spreads across Ninde's pillowy mouth, swiftly followed by an expression of tender sympathy.)~
  = ~Oh, Bhaalspawn...excessive ocular irritation is a symptom of Thayvian Rot, you know.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink4
  SAY ~(As you wink at her, Ninde pulls a face like a displeased child, wrinkling her button nose and narrowing her eyes.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink5
  SAY ~Oh Bhaalspawn, you can't be serious, can you?~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink6
  SAY ~(Ninde smiles tentatively, fixing you with a sly wink of her own.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink7
  SAY ~(The sun elf seems pleased enough by your attentions, and tilts her pretty head in acknowledgment of your wink, a wave of dark hair falling across her smiling lips.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink8
  SAY ~(The normally querulous woman giggles, and takes a playful swat at you.)~
  = ~Why <CHARNAME>, you positive cad!~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink9
  SAY ~(Ninde is looking particularly stormy, when in an effort to break her heavy frown, you bestow on her a disastrously exaggerated wink.  At first, her expression remains stony, and she quirks a brow with elegant contempt.  Thankfully, a moment later she snorts with laughter, and grins girlishly at you.  You appear to have cheered her up.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_wink10
  SAY ~(The elf bristles with delight at your wink, and strolls ahead of you with a womanly sway in her step.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hold1
  SAY ~(Ninde throws your hand away from you, like something repulsive.)~
  =  ~What on Toril are you trying to do, <CHARNAME>?  I mean, really.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hold2
  SAY ~(As your fingers brush hers, Ninde stops abruptly, and stares you in the face with something like disgust.  With a deep breath she composes herself, and a smile, pale and condescending, twitches on the corners of her mouth.)~
  = ~Do...do I seem like the handholding type, darling?~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hold3
  SAY ~(Ninde's face is gorgeously melancholic and tilted downward.  As you draw up beside her she looks at you, a grey lethargy settled in her usually vivid eyes.  She looks tired, you think, and decide to giver her hand a re-assuring little squeeze.)~
  = ~(Her fingers lie warm in yours for just a few seconds, before she wordlessly pulls her hand away.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hold4
  SAY ~(You stroll confidently to Ninde's side, and reach across to clasp her balletic hand in your own.  She does not pull away from you - quite to the contrary.  With an alluring sideways look at you, she slowly draws your hand to her mouth.  You assume she is going to press it against her lips, before remembering that a kiss on the hand is probably a little too conventional for Ninde.)~
  = ~(Sure enough, she parts her lips at the last moment, and bites down on your thumb, gently and provocatively.  The hot silk of her mouth sends a wave of pleasure down your spine, and Ninde drops your hand with a pretty, reckless laugh, cantering away from you.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_hold5
  SAY ~(You press your hand into the sun elf's, and she lets out a tremulous sigh and casts her eyes down.  Flattening out your palm like a piece of sheet music, she runs her fingers across its light, meandering indents, before nodding studiously.)~
  = ~It is as I thought.  You've an artist's hands.  And by Shar...I'm familiar with those...~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_massage1
  SAY ~A massage?  And that would involve having those slimy sweat-sticky things on the end of your arms touching my body?  I'd rather have my mouth lacerated.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_massage2
  SAY ~(As you speak, Ninde's eyes run down your body, mellifluous, appraising.  Eventually, she condescends to give you a regal smile.)~
  = ~Mm...so the Bhaalspawn is sensitive to the desires of his party members, after all.~
  = ~(The woman seats herself and turns her back to you, unclasping her cloak so that her shoulders and smooth throat are naked.  She throws her black hair to one side, and casts a beckoning look across to you.  Running your hands across her collar, you notice the unnatural warmth of her skin, almost feverish, and the fine hairs that down the nape of her neck, so fine they are disturbed by the movement of the air as you stoop to rub the mage's upper arms.  Ninde groans luxuriantly as you press against her neck, just below her ears, and allows you to continue for some time, before shrugging you off and drawing her cloak back up.)~
  = ~That wasn't at all unsatisfactory, Bhaalspawn...you have Lady Amblecrown's seal of approval.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_massage3
  SAY ~(Ninde claps her hands, and smiles.)~
  = ~What a delightful suggestion, dear Bhaalspawn.~
  = ~(To your suprise, Ninde throws herself down and tugs off her leather boots, seeming to relish the inelegance of it all as she wriggles her newly-liberated pink toes.  Her feet are comically small - doll like - and precisely manicured, and a feathered serpent with an ugly head is inked coiling around her left ankle.  A little thrown by the prospect of giving a foot massage, you hesitate, and only decide you has best go ahead when Ninde clears her throat imperiously.  She does, you remind yourself, have very pretty feet, despite the grotesque body art.)~
  = ~(Kneeling before her, you begin by running your thumbs firmly across the soles of her feet, and she wriggles with pleasure as you do so.  It is soon clear that the elf's feet are almost as sensitive as her ears, and her body quivers at every subtle touch.  She seems to be enjoying it, however, and as you finish, you cannot help gently tickling the base of her toes.  Ninde yelps and giggles, kicking her feet until you release her, before swiftly pulling her boots back on.)~
  = ~Hmm, Bhaalspawn...I'll have to remember not to place myself before you in such a position of...naked vulnerability again.  Unless you ask *very* nicely, that is...~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_massage4
  SAY ~(Ninde laughs musically, and places a hand on your chest.)~
  = ~I suppose you could try, my dear Bhaalspawn...but you'll be competing with a multitude of limber Mulhorandi serving boys, with decades of training in such arts, who have offered me precisely the same thing before.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_massage5
  SAY ~Current circumstances force me to decline, Bhaalspawn.  That said...I adore a man skilled with his hands...~
  = ~(Ninde brushes her hand across your chest, her eyes bright.  She is, after all, a good part pixie.)~
  = ~...especially when he is liberal in their use.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand1
  SAY ~(With a gentlemanly flourish, you take Ninde's hand and lift it to your lips, feeling the cold metal of her jewelery against your mouth.  Astoundingly, Ninde does not seem to mind.  In fact, she smiles with dignified pleasure.)~
  = ~'Tis nice to see there are still a few gentlemen left.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand2
  SAY ~(You pause opposite Ninde, and hastily catch her fingers up in your hand.  Sweeping it to your mouth, you pause, as you notice an expression of intense mortification has made its way on to the elf's face.)~
  = ~What are you doing, Bhaalspawn?  Noticed a few crumbs left from breakfast?  Frankly, I'd expect more decorum even from you.~
  = ~(Ninde pulls her hand away, seeming to take priggish pleasure in her cruelty as she sweeps away.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand3
  SAY ~(Your hand has barely enfolded Ninde's when she brushes you away with a practiced efficacy and restraint.)~
  = ~Tsk, no touching.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand4
  SAY ~(You hold Ninde's soft hand to your lips, and as you let it fall, you look up to find yourself confronted by one of the elf's condescending smiles.)~
  = ~How sweet.  The hedge-born northerner has gentlemanly pretensions!~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand5
  SAY ~(Ninde tugs her hand away from you quite sharply.)~
  = ~A little bit of finishing school wisdom for you, Bhaalspawn; there are hands for stirring ladles, and there are hands for touching Ladies.  A man has one, or the other.  Guess where you fall?~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand6
  SAY ~(Ninde stops as you touch her fingers to your mouth, and you look up, still holding her hand in yours.  The elf is looking at you, yes, with a gamine smile illuminating her round face.  She giggles.  You smirk.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand7
  SAY ~ Oh <CHARNAME>, the way you carry on, you'd think there was a masked ball to invite me to.~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand8
  SAY ~(As you stoop to grace it with a kiss, the sun elf retrieves her hand from your grasp, and lays a balletic finger under your chin.  Coaxingly tilting your face upward to meet her gaze, she looks at you appraisingly, although this was a Thayvian slave market, and she was thinking of buying you.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand9
  SAY ~(You take Ninde's hand in your own, but before you have had time to move it toward your face, she has pulled you toward her and pressed your palm against her substantial, silk-clad left breast.)~
  = ~(You are only able to appreciate it's warmth and weight for a moment, however, as Ninde draws your touch down across her narrow waist, and limber thigh.  It all seems to be over in a matter of seconds as she once more displays her capricious nature, and presses you away like an unwanted suitor, self-satisfied smile playing in the gold loop of her eye.)~
  IF ~~ EXIT
END

IF ~~ LK#NindeFlirt_kisshand10
  SAY ~(Strangely, Ninde allows you to kiss her hand without comment, observing you, dumb and prettily compliant as a Nixie.  The lack of reaction is somewhat disconcerting, until you notice, as she draws away from you, she has touched the hand you kissed to her neck, and does not lower it for quite some time.)~
  IF ~~ EXIT
END
END
