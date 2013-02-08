// ---------------------------------------------
// Ninde ToB Banter
// ---------------------------------------------
BEGIN BLK#NI25

// 1.
CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeAerieToB","GLOBAL",0)~ THEN BLK#NI25 LK#NindeAerieToB_1
~Aerie, be a dear; open my pack and pass me the asphodel? I have a mind to concoct a little something as we travel to while the hours away.~
DO ~SetGlobal("LK#NindeAerieToB","GLOBAL",1)~
== BAERIE25 ~If you'd like. What are you thinking of making?~
== BLK#NI25 ~I have oft considered making myself a particular potion to aid my casting in battle, and since I have nothing better to do in this godsforsaken place, I think I shall start to do a little experimenting.~
= ~No, dear, the other pocket. The left one.~
== BAERIE25 ~Ninde! What--what do you *have* in here?! Is that a...~
== BLK#NI25 ~Probably, yes. Now's not the time for squeamishness, Aerie, just find the asphodel and give it to me. I don't particularly fancy standing here while you cry out at each and every item you find distasteful. We'd be here for hours.~
EXIT

// 2.
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeJaheiraToB","GLOBAL",0)~ THEN BLK#NI25 LK#NindeJaheiraToB_1
~Have you ever wondered what happens to a person's soul when they are vampirized, Jaheira?~
DO ~SetGlobal("LK#NindeJaheiraToB","GLOBAL",1)~
== BJAHEI25 ~It is not a question that consumes my every waking moment, no.~
== BLK#NI25 ~I find myself pondering it more and more. And as an extension... what happens when a person who has no soul is turned? What then? During my time with Bodhi I sensed a great madness within her, kept only barely in check. What would she have become had she not taken to the night? Would the madness have consumed her utterly, leaving nothing but an empty husk of her former self, forever denied what once made her who she was? What would she have become?~
== BJAHEI25 ~We do not have the time for such frivolous contemplation, Ninde. There is much we have yet to do today.~
END
IF ~Global("LK#NindeRestored","GLOBAL",1)~ EXTERN BLK#NI25 LK#NindeJaheiraToB_1.2
IF ~!Global("LK#NindeRestored","GLOBAL",1)~ EXTERN BLK#NI25 LK#NindeJaheiraToB_1.3

CHAIN BLK#NI25 LK#NindeJaheiraToB_1.2
~Perhaps you are right. It is moot anyway; I have a soul, now, thanks to <CHARNAME>. Still... I cannot help but wonder at what *I* may have become were it not for that timely restoration. What I might have done.~
== BJAHEI25 ~I think it best not to dwell on such matters; it is wiser to look forward, and not to play with 'what ifs' and 'may have beens.' What is done is done, and there are more pressing matters at hand.~
EXIT

CHAIN BLK#NI25 LK#NindeJaheiraToB_1.3
~Irenicus tried to steal the souls of others as the madness took him, but she... perhaps vampirism halted her descent.~
== BJAHEI25 ~This is not a a safe line of questioning, Ninde. You yourself saw what became of Bodhi. I warn you: do not consider following her into the dark. You will not like what you will become.~
== BLK#NI25 ~Death no longer frightens me, Jaheira. It is life that tears and worries at my mind.~
EXIT

// 3.
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeImoenToB","GLOBAL",0)~ THEN BLK#NI25 LK#NindeImoenToB_1
~Hello, blossom. Why the glum face? The day is bright, the birds are singing, life is bustling along... well, one of three isn't awful, is it?~
DO ~SetGlobal("LK#NindeImoenToB","GLOBAL",1)~
== BIMOEN25 ~It's just--this isn't really what I expected when I heard there was war here. I always read about the spoils of war--you know, rich pockets, mansions left unguarded, shop goods ripe for the picking, but...~
= ~It's nothing like that.~
== BLK#NI25 ~War is never what we expect. I have seen a few, and the only thing it assuredly brings is death and destruction. Though in my line of work the former isn't really an issue--more of a benefit, really--I have never been fond of wanton destruction. It just becomes meaningless.~
== BIMOEN25 ~I kinda wish it was more like the books.~
== BLK#NI25 ~Don't we all, kitten, don't we all.~
EXIT

// 4.
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeJanToB","GLOBAL",0)~ THEN BJAN25 LK#NindeJanToB_1
~So, Ninde, have you given any thought to my business proposal? I thought it was quite the opportunity for you, if I do say so myself.~
DO ~SetGlobal("LK#NindeJanToB","GLOBAL",1)~
== BLK#NI25 ~I don't recall any such proposal, gnome. What on Faerun are you talking about?~
== BJAN25 ~Undead Crops'R'Us, of course! Silly me, in my haste to put it in motion I must have neglected to mention it.~
== BLK#NI25 ~Yes, I'm sure. I suppose I don't have anything else to combat tedium... very well, regale me with your plan, gnome. It can't be worse than your usual paltry fare.~
== BJAN25 ~Dear Ninde, my plan has nothing to do with birds! Truly, it is a brilliant plan, with untold potential. We could make millions!~
= ~In all honesty, you were the one who gave me the initial idea, with your ruminations on reviving cabbages back in Amn... what innovation, I thought, what sheer unbridled imaginativity!~
== BLK#NI25 ~As I recall, that was your untenable and rather ridiculous idea. But do go on, I simply crave to hear the rest.~
== BJAN25 ~Huh, so it was. No wonder it was such genius! But just wait 'til you hear the idea.~
= ~Sudden Crop Death is a real problem in today's farming economy, and I, the inimitable Jan Jansen, have discovered the solution!~
= ~Undead crops.~
== BLK#NI25 ~Undead... crops.~
== BJAN25 ~Yes, undead crops. Now, I know what you're thinking. "Holy cow," you think, "what unrivalled inventiveness! What stunning creativity!" And yes, I know. It is. Truly transcendant.~
== BLK#NI25 ~I think I'll stop you there, since you are damping my intelligence with each further word. What a preposterous idea! I have told you once and I will tell you again, gnome, you cannot raise a carrot, a turnip, or any other vegetable, because they were never alive in the first place! Why, sometimes I wonder if you just come up with these harebrained schemes and stories to get under people's...~
= ~That's it, isn't it? Such a ridiculous idea would never work. You just came up with it to cause a reaction. Oh, you bad, bad gnome. I'm impressed.~
== BJAN25 ~Thank you. It's a gift.~
EXIT

// 5.
CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeHaerdalisToB","GLOBAL",0)~ THEN BLK#NI25 LK#NindeHaerdalisToB_1
~You must be having a time of this, doomguard. Chaos and death all around, quite the pretty picture of decay, really. Your blood must be positively on fire.~
DO ~SetGlobal("LK#NindeHaerdalisToB","GLOBAL",1)~
== BHAERD25 ~'Tis a glorious day to walk the Realms, my dear kitten. And to have such a beauty as you at my side... the songs will span centuries, I am sure.~ 
== BLK#NI25 ~The sky was terribly apocalyptic this morning, I thought. All red and gold, fire and passion streaked amongst the tempest.~
== BHAERD25 ~Aye, so beautiful and transient. E'en the sky feels the blood soaking into the soil. 'Tis a wondrous thing to behold.~
== BLK#NI25 ~Were it not for your poetry, dear Haer'Dalis, I fear my sanity would have left me long ago.~
== BHAERD25 ~I find sanity such a curious concept here in the Realms. Out amongst the planes, those who fall outside the bounds of usual thought are hailed as geniuses and prophets, with unique perspectives and insights far beyond the comprehension of most.~
== BLK#NI25 ~Here, such miscreants are coded as outcast, turned away from every door and spat upon in the streets.~
END
IF ~Global("LK#NindeRestored","GLOBAL",1)~ EXTERN BLK#NI25 LK#NindeHaerdalisToB_1.2
IF ~!Global("LK#NindeRestored","GLOBAL",1)~ EXTERN BLK#NI25 LK#NindeHaerdalisToB_1.3

CHAIN BLK#NI25 LK#NindeHaerdalisToB_1.2
~I once feared I would soon be counted amongst their ranks, filthy, deranged, and totally alone. Such dreams I had, my doomguard, feeling my very mind start to slip away as the emptiness within devoured all. It was... not a feeling I cherished.~
== BHAERD25 ~It would have been a beautiful sight to behind, kitten, I am sure. Alas, it shall not be.~
== BLK#NI25 ~On the contrary... while you may have enjoyed my gradual descent into madness, I am supremely thankful my wits and I are wholly intact.~
= ~Think of what could have happened to my dress sense! Burlap has never been a look I could pull off, I'm afraid.~
EXIT

CHAIN BLK#NI25 LK#NindeHaerdalisToB_1.3
~Even now, I feel it encroaching, slowly dissolving all that which defines me, bringing with it visions of horror and fear. It is...~
== BHAERD25 ~Terrifying? Horrible? Inevitable?~
== BLK#NI25 ~Liberating.~
EXIT

// 6.
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeNaliaToB","GLOBAL",0)~ THEN BNALIA25 LK#NindeNaliaToB_1
~And what have I done to earn your baleful stare, Ninde? Did you accidentally raise a rabbit rather than a hare?~
DO ~SetGlobal("LK#NindeNaliaToB","GLOBAL",1)~
== BLK#NI25 ~No, I leave such rookie mistakes to the likes of amateur dabblers such as yourself, blossom.~
== BNALIA25 ~Amateur? Perhaps once, when this all began. Would you care to see just how much more powerful I've grown?~
== BLK#NI25 ~Darling, you are not helping your case. Pissing contests have never been my style. I prefer to let the hubris of others take them down for me.~
== BNALIA25 ~I'm not talking about just any competition, Ninde. I mean it. I've had it with you.~
== BLK#NI25 ~Oh, so you mean...? How delightful! The little girl challenges a master of the necrotic arts. Whatever shall I do? I am simply shaking in my stylish yet affordable boots.~
END
IF ~Global("LK#NindeRestored","GLOBAL",1)~ EXTERN BLK#NI25 LK#NindeNaliaToB_1.2
IF ~!Global("LK#NindeRestored","GLOBAL",1)~ EXTERN BLK#NI25 LK#NindeNaliaToB_1.3

CHAIN BLK#NI25 LK#NindeNaliaToB_1.2
~Nay... I think not. Tempting as your challenge may be, she of the o'erweening pride, your death--or mine--would serve no purpose, nor prove any point, and I have a debt to repay. Take your challenges elsewhere, girl. I am too old for such tedium.~
== BNALIA25 ~Fine. But the time will come, Ninde, sooner or later, and we will see then who's the one with the o'erweening pride.~
EXIT

CHAIN BLK#NI25 LK#NindeNaliaToB_1.3
~So is it time, Nalia? Are you ready to shed the ignorance of childhood and take on the mantle of adulthood? Forgive me for saying so, kitten, but you don't stand a chance. You have grown... but have you grown enough to challenge me? Is it time to test yourself, my little self-titled 'archmage'?~
= ~You see, my pampered princess chickadee, I really have very little to live for nowadays, and I would have ever so much fun stripping the flesh from your bones and eviscerating you from the face of this miserable place. Your skeleton would make serviceable frontline fodder.~
== BNALIA25 ~I have ignored your insults and morbid depravity for far too long, Ninde. But no, I've no intention of demeaning myself by fighting you. <CHARNAME> needs us both, and I've no wish to kill you. I don't need to fight you to know the outcome of that particular battle.~
== BLK#NI25 ~Big words, blossom, but in the end, the battle is all there is. Let me know when you're ready to take on a real challenge... and we shall see.~
EXIT

// 7.
CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeKorganToB","GLOBAL",0)~ THEN BLK#NI25 LK#NindeKorganToB_1
~Ugh, Korgan, how many times must I lecture you about the basic tenets of personal hygiene? At the very least, go stand over there. Downwind. I think your miasma has begun to infect my clothing.~
DO ~SetGlobal("LK#NindeKorganToB","GLOBAL",1)~
== BKORGA25 ~Shut yer yap, girlie, a good strong musk keeps the insects at bay! Ye ought ter try it yerself. If ye've a problem, ye got stand over there!~
== BLK#NI25 ~Had I a divan to deposit myself onto, at this point I would raise a trembling hand to my forehead and give a stirring speech about the difficulties of life away from a good bathtub. As it is, I'd settle for a bottle of good gin and a lemon. And I don't even have those. (sigh)~
== BKORGA25 ~Ach, poor wee necromancer. The road be a harsh mistress, aye?~
== BLK#NI25 ~Aye. You know, I didn't realise dwarves had the intellect for sarcasm. You are a man of hidden depths, blossom, and each passing day reveals yet another unseen delight.~
== BKORGA25 ~If me unseen depths be what interest ye, I'm sure we can come to some sorta arrangement, if ye ken. (wink)~
== BLK#NI25 ~Oh, gods, if it's all the same to you I'd rather be intimate with dirty sand.~
== BKORGA25 ~Har har! Ye're alright, girlie.~
EXIT

// 8.
CHAIN IF ~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeSarevokToB","GLOBAL",0)~ THEN BLK#NI25 LK#NindeSarevokToB_1
~For one who has braved the very pits of hell and recently risen from the dead, Sarevok, you're a rather scrumptious specimen, aren't you? The undead are not usually quite so... sculpted.~
DO ~SetGlobal("LK#NindeSarevokToB","GLOBAL",1)~
== BSAREV25 ~I am no undead, woman, as you should well know.~
== BLK#NI25 ~And how should I know that, honeybunch? Divine foresight? Clairvoyance? Telepathy?~
== BSAREV25 ~Your magics reek of necromancy. I am no country bumpkin, wench. I could have ruled nations, and more.~
== BLK#NI25 ~Ah, but you did not. And now you are reduced to this... something not quite dead, and not quite alive, but entirely in between. Poor little tyrant. (pout)~
== BSAREV25 ~If you've doubts about just how alive I am, it would be my pleasure to to prove it to you.~
== BLK#NI25 ~Oh, yes, it definitely would. And if everything is in proportion, well... it might just be mine too.~
== BSAREV25 ~In proportion and more. Many are the women I have left gasping for breath in the bedchamber, necromancer. You would be honored to join them.~
== BLK#NI25 ~And how many have lived to tell the tale, I wonder?~
== BSAREV25 ~Enough.~
== BLK#NI25 ~Well now... that does make things interesting, doesn't it? After all... what is fun without a little danger?~
== BSAREV25 ~My thought exactly.~
EXIT

// 9.
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeCerndToB","GLOBAL",0)~ THEN BCERND25 LK#NindeCerndToB_1
~Your plumage is resplendent today, dear Ninde. Such bold choices. As ever, your clothing choices are impeccable. Were you a peacock, you would have a veritable horde of peahens vying for your attention.~
DO ~SetGlobal("LK#NindeCerndToB","GLOBAL",1)~
== BLK#NI25 ~Why thank you, druid! Alas, would that I could say the same for you. Don't you get tired of the same old look day in, day out? Surely it wouldn't kill you to replace your hair decorations, at the very least.~
== BCERND25 ~You are droll, necromancer. As it happens, each of my ornaments has a story of its own, sacred and unique. I would be delighted to share them with you, if you are--~
== BLK#NI25 ~Ah, if it is all the same to you, I think I'll pass. Though perhaps I shall call on you before bed: such stories do send me to sleep, after all.~
EXIT

// 10.
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeAnomenToB","GLOBAL",0)~ THEN BLK#NI25 LK#NindeAnomenToB_1
~Would you stop that infernal racket, Anomen? My poor head throbs with each godscursed step you take in that disgusting metal contraption!~
DO ~SetGlobal("LK#NindeAnomenToB","GLOBAL",1)~
== BANOME25 ~This 'metal contraption' as you so aptly put it has saved my life--and yours--on numerous occasions, woman. If it bothers you so much, you are welcome to stuff your ears with wool and walk further away.~
== BLK#NI25 ~But then...~
== BANOME25 ~But then if battle occurs, I cannot protect you. Alas, I have always found it impossible to protect a person from herself regardless.~
== BLK#NI25 ~You're incorrigible.~
== BANOME25 ~Then cease your whining. We've yet a long distance to walk, and I have no mind to listen to your complaints the entire way.~
EXIT

// 11.
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeAnomenToB","GLOBAL",1)~ THEN BLK#NI25 LK#NindeAnomenToB_2
~Oh, Anomen, blossom, light of my life, would you mind carrying my pack for a distance? My back aches and I fear for the wellbeing of those around me when I finally--and inevitably--start spewing vile vituperations at them.~
DO ~SetGlobal("LK#NindeAnomenToB","GLOBAL",2)~
== BANOME25 ~You look hale enough to me, Ninde. Though perhaps you would be better suited to the life of a pampered housewife than that of the intrepid adventurer.~
== BLK#NI25 ~Housewife, no, pampered, most definitely. Your physique is far better suited to such tasks than mine. I *am* a lady. Is chivalry totally dead? I had thought you a gentleman! Fie, Anomen, fie.~
== BANOME25 ~If I am no gentleman, then you are certainly no lady. Carry your own pack.~
EXIT

// 12.
CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeEdwinToB","GLOBAL",0)~ THEN BLK#NI25 LK#NindeEdwinToB1
~Eddy. Eddy! Edwin!~
DO ~SetGlobal("LK#NindeEdwinToB","GLOBAL",0)~ 
== BEDWIN25 ~Yes, yes, what--GAH!~
== BLK#NI25 ~The things a woman has to do to get some attention nowadays. Now, Eddy darling, I seem to have run out of rat intestines. You wouldn't happen to have any stashed away somewhere, would you?~
== BEDWIN25 ~What do you take me for, a walking apothecary?! I have far better things to do with my time than spend them distributing rat innards to whosoever asks!~
== BLK#NI25 ~How disappointing. Because as far as I can tell, you still spend most of your time trying to catch a glimpse of what lies beneath my robe. I do understand how important my chest is to your general wellbeing, but I'm not sure if it's a better timesink than fetching me spell components, hmm?~
== BEDWIN25 ~(Blasted harpy... perhaps we should have just kept the pair we had. Much less troublesome.)~
EXIT

// 13.
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeMinscToB","GLOBAL",0)~ THEN BMINSC25 LK#NindeMinscToB_1
~No, Boo, you cannot have more cheese, you have had enough for--Boo! No! Let go of my finger at once! Your tiny teeth may be very tiny, but they still hurt!~
DO ~SetGlobal("LK#NindeMinscToB","GLOBAL",1)~
== BLK#NI25 ~Boo misbehaving again? Naughty little hamster.~
= ~You're feeding him too much, Minsc. He's getting tubby.~
== BMINSC25 ~Nay, he is feeding himself too much! Minsc cannot stop him when he keeps chewing through the cords keeping the food pack shut. Hear that, Boo? The pretty elf called you fat. And she is right!~
== BLK#NI25 ~Have you ever considered trying to... well, improve him? A little bop on the head and some demonic incantations, and he'll be the most obedient little hamster you can ever imagine. Of course, his eyes may fall out after a while, but really, you can't put a price on obedience!~
== BMINSC25 ~Ehh... Minsc prefers Boo the way he is, even if he does eat too much.~
== BLK#NI25 ~So no zombie Boo?~
== BMINSC25 ~No zombie Boo.~
== BLK#NI25 ~Spoilsport.~
EXIT

// 14.
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeKeldornToB","GLOBAL",0)~ THEN BLK#NI25 LK#NindeKeldornToB_1
~Keldy, darling, must you be such a sourpuss all the time? I know you're a paladin and whatnot, but even paladins have to have a little fun sometimes. Why, I remember this one strapping young fellow in Waterdeep, a paladin of Tyr, if I remember correctly... we had quite the encounter on occasion. All that repression and angst makes for a wonderfully passionate cocktail.~
DO ~SetGlobal("LK#NindeKeldornToB","GLOBAL",1)~
== BKELDO25 ~Do you not get tired of flaunting yourself repeatedly to each and every man you see?~
== BLK#NI25 ~Hmm... no, not really. Your pained expressions delight me. And in any case, I don't flaunt my goods to *every* man in the party. Just the ones who catch my attention.~
== BKELDO25 ~And what have I done to deserve such attention, I wonder?~
== BLK#NI25 ~Few men are as handsome as you in their adage, pumpkin. Your question should really be what *haven't* you done.~
== BKELDO25 ~Beneath this need to assert your femininity and power over men lies a deep-seated insecurity, Ninde. Perhaps you should learn some self-respect, so you need not flagrantly seek it elsewhere.~
== BLK#NI25 ~It couldn't possibly be that I enjoy a good laugh at someone else's expense, could it? No, you have to go and ruin all the fine. Boring old grump.~
EXIT

// 15.
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeMazzyToB","GLOBAL",0)~ THEN BLK#NI25 LK#NindeMazzyToB_1
~Mazzy, my dear little halfling, have you ever thought about--excuse me if this is culturally inappropriate--shaving or waxing? We elves have no such issues, but I understand you smaller races often struggle with unsightly body hair.~
DO ~SetGlobal("LK#NindeMazzyToB","GLOBAL",1)~
== BMAZZY25 ~And what unsightly body hair are you suggesting I rid myself of? I am proud of my body, Ninde, unlike those who feel the need to shape, contour and cover every inch of theirs.~
== BLK#NI25 ~Most of you is fine, really. You could do with a little rouge, perhaps, and a haircut, but all that I can deal with. But--and forgive me, blossom--every time I see your feet I have to stay the nausea in my stomach.~
== BMAZZY25 ~If my feet so offend you, don't look at them. They have served me well, through thick and thin. I would not change them for the world.~
== BLK#NI25 ~I suppose you could never hope to have dainty feet like mine, even if you did remove all that unsightly hair. Though really, darling, there are some lovely shoes out there, some might even fit you!~
== BMAZZY25 ~That is quite enough. Truly, I am happy with the way I look, and I care not for what others think of me. You would do well to follow my example.~
== BLK#NI25 ~I... you know, I don't think that really needs a witty response. It does quite well on its own.~ 
== BMAZZY25 ~I am glad you think so.~
EXIT

// 16.
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeValygarToB","GLOBAL",0)~ THEN BVALYG25 LK#NindeValygarToB_1
~Your vile magics must be made easier as a result of the war, Ninde. All those corpses and skeletons. I've never seen anyone so delighted by death.~
DO ~SetGlobal("LK#NindeValygarToB","GLOBAL",1)~
== BLK#NI25 ~Who wouldn't be excited about so much raw material, honeybunch? Just think of the bodies as empty canvasas, ready for a skilled hand to paint life into them and repurpose them for something new.~
== BVALYG25 ~If that is now you think of your so-called 'craft', you've a severely warped world view. Necromancy is a vile perversion of the natural order. What you do to those corpses is not life... it is a foul domination and desecration of something that was once a person.~
== BLK#NI25 ~Oh, Valerie, I hold no illusions about what I do. Contrary to popular opinion, I am not just a pretty face. Or a pretty bosom. Or... well, let's be honest, all of me is pretty, but I don't live in some imaginary land of puppies and unicorns.~
= ~And just remember, dear Valygar: were it not for my hand, you might be dead ten times over.~
== BVALYG25 ~That doesn't make what you do right.~
EXIT

// 17.
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeJaheiraToB","GLOBAL",1)~ THEN BLK#NI25 LK#NindeJaheiraToB_2
~Jaheira, you are eyeing my chest with uncommon fervor. I had no idea you swung that way! Imagine all the fun we could have been having all this time, instead of bickering like old Camaarian fishwives!~
DO ~SetGlobal("LK#NindeJaheiraToB","GLOBAL",2)~
== BJAHEI25 ~Several of your buttons seem to be missing. You are displaying an unwholesome amount of... chest.~
== BLK#NI25 ~I didn't realise that was an issue. Am I making you feel inadequate, blossom?~
== BJAHEI25 ~Hah! No, Ninde, but I have seen the way you operate on the field of battle. A few extra buttons would help prevent so much... movement.~
== BLK#NI25 ~They do get a little unwieldy, I suppose, but... no, thank you blossom, I'll keep them just the way they are. The bouncing helps me more than it hinders, especially with a certain subset of the population. (smirk)~
== BJAHEI25 ~Hmph. Acting the harlot will one day get you killed.~
== BLK#NI25 ~I'm not sure about that. It has saved me more times than I can count so far. Somehow I don't see that changing.~
= ~And who said anything about acting?~
EXIT

// soul

// 18.
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeRestored","GLOBAL",1)
Global("LK#NindeKeldornToB","GLOBAL",1)~ THEN BLK#NI25 LK#NindeKeldornToB_2
~Admiring the assets, paladin? Go ahead. Just remember not to touch; I know how Torm frowns on such dalliances. And what of your poor wife? Oh, that's right. Things still rocky between you, blossom? Such a shame.~
DO ~SetGlobal("LK#NindeKeldornToB","GLOBAL",2)~
== BKELDO25 ~Your barbs lack their usual acerbic flair, Ninde. If I didn't know better, I'd almost say something was wrong.~
== BLK#NI25 ~So it isn't just me? Godsdamnit, I just--I really don't have it in me anymore. Somehow it just isn't the same. I am totally, and completely, off my game. Poor little me.~
== BKELDO25 ~Indeed. Perhaps you are finally growing up.~
== BLK#NI25 ~Keldy, what a horrible suggestion! I'd rather die. No, that isn't it, I'm just... I'm having thoughts. Feelings. They are proving... distracting.~
== BKELDO25 ~A soul is a powerful thing. You must have known its restoration would change you.~
== BLK#NI25 ~Yes, but I...~
= ~I did not expect the guilt.~
== BKELDO25 ~We must all live with our mistakes, Ninde. For a long time, you have not had to... now perhaps it is time.~
== BLK#NI25 ~Guilt is for the weak.~
== BKELDO25 ~On the contrary, guilt takes great strength to bear. You are not weak, the Gods know that. I pray you find your own strength, and through it, perhaps even redemption.~
== BLK#NI25 ~I do not want or need your prayers, paladin.~
== BKELDO25 ~Frankly, Ninde, I don't much care what you want. You have them regardless.~
EXIT

// 19.
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeRestored","GLOBAL",1)
Global("LK#NindeMazzyToB","GLOBAL",1)~ THEN BLK#NI25 LK#NindeMazzyToB_2
~You are a curious little thing, aren't you?~
DO ~SetGlobal("LK#NindeMazzyToB","GLOBAL",2)~
== BMAZZY25 ~Must you insult someone every time you open your mouth, Ninde?~ 
== BLK#NI25 ~As a matter of fact, yes, I think I do. It's soothing. In this case, however, I... ridicule was not my intent.~
== BMAZZY25 ~Color me shocked. I can hardly believe it.~
== BLK#NI25 ~Yes, well. You may be rather miniscule and have a frightening disregard for body hair removal, but you are true to your beliefs. Despite everything life has thrown at you, you persist in this vainglorious quest for paladinhood. I find myself... it is something I respect.~
== BMAZZY25 ~Hardly vainglorious. I have not sought paladinhood for my own good standing, but instead for the power it will imbue me to do good in this world. It is merely a tool, a means towards an end.~
== BLK#NI25 ~That may be, but I wish to tell you that I do not think you need it. You are an admirable woman, blossom, and you are powerful in your own right. You don't need some prissy title to change the world. Look at you; you're doing it anyway.~
== BMAZZY25 ~That is a kind thing to say, moreso due to its unlikely origin. I thank you, Ninde. I will take your words to heart.~
== BLK#NI25 ~See that you do. I feel the bile rising in my throat already, so I doubt you will hear them again anytime soon. Excuse me.~
EXIT

// 20.
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeRestored","GLOBAL",1)
Global("LK#NindeJaheiraToB","GLOBAL",2)~ THEN BLK#NI25 LK#NindeJaheiraToB_3
~If I have been unkind to you, Jaheira--~
DO ~SetGlobal("LK#NindeJaheiraToB","GLOBAL",3)~
== BJAHEI25 ~An apology? From the unyielding Ninde? Really, there is little need. I rarely listen to the nonsense you spout in any case.~
== BLK#NI25 ~If I have been unkind to you it is entirely well-deserved!~
= ~Harpy.~
== BJAHEI25 ~Nonetheless, I appreciate the gesture. It must be terribly difficult for you to admit your own wrongdoing, after all.~
== BLK#NI25 ~Yes, it simply tears me up inside.~
= ~Sorry. There, I said it. Happy?~
== BJAHEI25 ~Was that really so hard to do?~
== BLK#NI25 ~Gods, yes. Ugh, I feel ill. I need a good, long bath and a bottle of aged Waterdhavian red...~
== BJAHEI25 ~You're not the only one, necromancer.~
EXIT

// 21.
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeRestored","GLOBAL",1)
Global("LK#NindeViconiaToB2","GLOBAL",0)~ THEN BLK#NI25 LK#NindeViconiaToB_3
~I'd almost forgotten what it felt like.~
DO ~SetGlobal("LK#NindeViconiaToB2","GLOBAL",1)~
== BVICON25 ~What are you on about, daarthir?~
== BLK#NI25 ~My--nothing. Nevermind, darling, just a silly little thing. I should not have said anything.~
== BVICON25 ~And yet you did.~
== BLK#NI25 ~Yes, I... I suppose I did, at that. I have few I can talk to about... personal matters.~
== BVICON25 ~That is how it should be. Sharing one's private thoughts is a weakness, and you of all people should realise that.~
== BLK#NI25 ~Then forgive me a little weakness, blossom, because I am not having an easy time of things.~
== BVICON25 ~... no. You are not. Very well then, Ninde, prattle on all you like, but do not expect me to listen.~
== BLK#NI25 ~I wouldn't have it any other way.~
EXIT

// no soul

// 22.
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!Global("LK#NindeRestored","GLOBAL",1)
Global("LK#NindeAerieToB","GLOBAL",1)~ THEN BAERIE25 LK#NindeAerieToB_2
~Ninde, I couldn't help but overhear you, well... that is, the spell you... well, not the spell itself, I know, but the words--~
DO ~SetGlobal("LK#NindeAerieToB","GLOBAL",2)~
== BLK#NI25 ~Out with it! I can't abide such talk.~
== BAERIE25 ~I couldn't understand all of the words, but I know enough to have an idea of what you were reciting. Ninde, even for you...~
== BLK#NI25 ~I so tire of all this moralising, my wingless one. Doesn't there come a point where we should just accept that power is power? All the rest hardly matters.~
== BAERIE25 ~The magics you're playing with... they're not safe. They're certainly not good. You could hurt yourself, or others. Don't you even care?~
== BLK#NI25 ~I'm not sure why I should.~
== BAERIE25 ~Then maybe that's your problem...~
EXIT

// 23.
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!Global("LK#NindeRestored","GLOBAL",1)
Global("LK#NindeValygarToB","GLOBAL",1)~ THEN BVALYG25 LK#NindeValygarToB_2
~Your spell casting has been increasingly reckless of late, elf. Perhaps you should think about a bit of restraint before you kill us all?~
DO ~SetGlobal("LK#NindeValygarToB","GLOBAL",2)~
== BLK#NI25 ~Restraint is for amateurs, Valerie. Are my spells not effective? Have I missed yet? Or is this just another of your anti-magic spiels? Frankly, darling, they're getting a little tired.~
== BVALYG25 ~The look you get in your eyes as you eviscerate our enemies... Sometimes I wonder if there is any remnant of humanity left in you.~
== BLK#NI25 ~I would suspect not, being an elf, but I suppose you never know what prolonged contact with vermin will do, hmm?~
== BVALYG25 ~Vermin is not a term I've heard you use for humans in the past, necromancer. Could it be your true colours are finally showing?~
== BLK#NI25 ~Perhaps. Or perhaps it's just you, Valerie, who sets my teeth on edge, and I have perfectly cordial relations with the rest of humanity. Shall we?~
EXIT

// 24.
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!Global("LK#NindeRestored","GLOBAL",1)
Global("LK#NindeValygarToB","GLOBAL",2)~ THEN BVALYG25 LK#NindeValygarToB_3
~This obsession with death and decay must stop, Ninde. This is not the path you want to take. I have seen where it leads, and it is nowhere good.~
DO ~SetGlobal("LK#NindeValygarToB","GLOBAL",3)~
== BLK#NI25 ~Or perhaps it is exactly the path I was always meant to take? I am, after all, a master of the dark arts, sweetness. Is it so wrong to take the inevitable next step?~
== BVALYG25 ~I will not let you do it. I will kill you myself if I have to.~
== BLK#NI25 ~So then, my dark haired paramour, has the time finally come? Shall we finally consummate our passion on the battlefield, and see who comes out on top? I simply can't wait to see. You undoubtedly have the brawn, blossom, but I have the might of Shar by my side... It would be a story for the ages, told only in the most sordid and dark of books. I look forward to its conclusion.~
= ~I thought not. Go ahead, Valygar, take up your sword and be a man. What have you to lose but your life?~
== BVALYG25 ~<CHARNAME>'s quest is far more important, and for whatever reason, <PRO_HESHE> trusts you to aid us. No, this will not be the day, Ninde, but know that when you do, inevitably, take that final step... I will be there to bury your godsforsaken body and ensure it never rises again.~
EXIT

// 25.
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!Global("LK#NindeRestored","GLOBAL",1)
Global("LK#NindeImoenToB","GLOBAL",1)~ THEN BIMOEN25 LK#NindeImoenToB_2
~...anyway, so <CHARNAME> and I were on the roof, and Winthrop was yelling at us to get down, which--duh, why would we do that--and then I slipped and started tumbling! Luckily <CHARNAME> was able to grab my hand before I fell off the side, but geez did Gorion chew us out for that. Oh, and then there was the time--~
DO ~SetGlobal("LK#NindeImoenToB","GLOBAL",2)~
== BLK#NI25 ~Don't you ever stop?~
== BIMOEN25 ~... what? What do you mean? I thought you liked my stories!~
== BLK#NI25 ~You're giving me a headache and frankly, blossom, your past is about as interesting as the act of watching paint dry. In fact, I think I'd rather watch paint dry.~
== BIMOEN25 ~Pshh, you're so boring nowadays. You used to be way more fun.~
== BLK#NI25 ~I used to be a lot of things. You bore me, Imoen. You're a pathetic little excuse for a mage with a big mouth and not a lot behind it. Were it not for <CHARNAME>'s fondness for you, you would probably make a good zombie. Once I rid you of that ridiculous hair, of course.~
== BIMOEN25 ~What happened to you, Ninde? You're just so... dark, now. And morbid. And altogether a little scary. You never used to be like this.~
= ~You remind me of... him. How he used to talk.~
== BLK#NI25 ~Maybe that's not so surprising. Go away, little girl. Go bore someone else.~
EXIT

// 26.
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!Global("LK#NindeRestored","GLOBAL",1)
Global("LK#NindeViconiaToB1","GLOBAL",0)~ THEN BVICON25 LK#NindeViconiaToB_1
~And how are you faring through this, Ninde? You seem disconsolate of late. Not an attractive mood at the best of times, but you daarthir take it to intolerable extremes. All brooding sighs and endless long stares.~
DO ~SetGlobal("LK#NindeViconiaToB1","GLOBAL",1)~
== BLK#NI25 ~Forgive me, oh joyful one, and spare me a little time to mope. My situation is... less than ideal. And I find myself more and more contemplating the reality of what lies beyond this for me.~
== BVICON25 ~Comely young men, good wine and many glorious nights of excitement and passion, I am sure.~
== BLK#NI25 ~That may have appealed to me once, but now I wonder if I would enjoy it at all. In the face of one's own incipient madness and death... suddenly such things become much less enticing.~
== BVICON25 ~Your self-pity is nauseating, Ninde. I suggest you get over this--whatever it is--and enjoy what time you have left.~
== BLK#NI25 ~Easy for you to say. You're not the one staring into the face of death.~
== BVICON25 ~We may yet all die before the end of this quest. You are not the only one staring death in the face.~
== BLK#NI25 ~What a cheery thought. Thank you ever so for brightening my mood, Viccy.~
== BVICON25 ~This is unworthy of you. Grow a backbone and stop this at once.~
== BLK#NI25 ~Yes, well, your face is unworthy of *you*. Hmph.~
EXIT

// 27.
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
!Global("LK#NindeRestored","GLOBAL",1)
Global("LK#NindeViconiaToB1","GLOBAL",1)~ THEN BVICON25 LK#NindeViconiaToB_2
~When I first came to the surface, I thought it would swallow me whole.~
DO ~SetGlobal("LK#NindeViconiaToB1","GLOBAL",2)~
== BLK#NI25 ~Excuse me, kitten, but what on Toril are you on about?~
== BVICON25 ~The sky. Each time I looked at it, I would be overcome with the fear that I would somehow lose contact with the ground and fall into its dreadful maw.~ 
== BLK#NI25 ~What a ridiculous thought!~
== BVICON25 ~Perhaps to you, but to one who has lived their entire life beneath the ground, it was a terrifying prospect.~
== BLK#NI25 ~And why are you telling me this, Viccy? Is it story time? Shall I share some sordid tidbit now and continue the exchange?~
= ~No, I don't think I'm in the mood.~
== BVICON25 ~Despite my fear, Ninde, I did not fall.~
= ~Neither shall you.~
EXIT