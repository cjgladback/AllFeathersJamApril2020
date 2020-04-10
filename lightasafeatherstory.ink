//tags list:
//#lit #normal #bright #dark
//#reloc #deskloc #bedloc #dresserloc #neighborloc #doorloc
//#time #neighborwake #microbe #lose #win
//#robot

-> wake_up
=== wake_up ===
You in there?
+ [Power On]->intro01
=== intro01 ===
Oh, finally, you're awake. Good.
+ [...]->intro02
= intro02
Now, I know last time you booted up after cryo, we went a little wacky for a while there.
+ [...]->intro03
= intro03
But you aren't gonna do that this time, right?
+ [Commence Boot Procedures]->intro04 #robot
+ [Negative]->intro_negative
= intro_negative
Negative you won't or negative you will?
+ [...]->intro04
= intro04
Okay. What are my messages?
+ [No messages.]->intro_nomessages
+ [Last reading showed solar flare warnings.]->intro05
= intro_nomessages
What do you mean? No one reached out at all?
+ [Internal system alert re: solar flares.]->intro05
= intro05
Sure, of course this star's "young and energetic," but no brochures mentioned comms outages.
+ [...]->intro06
= intro06
Do you think it's serious?
+ [Probably nothing.]->intro_inthedark
+ [Insufficient information.]->intro_inthedark #robot
+ [Wish I knew.]->intro_inthedark
= intro_inthedark
Wait, are we completely in the dark here?
+ [...]->intro_notdark #lit #bright
= intro_notdark
Yeah, yeah, cut it out.
+ [...]->chooseport #lit #normal
= chooseport
{I mean, do you think you can patch into the net directly? Maybe there's been a bulletin or an estimated resolution time. Something.|Maybe one of the other ports.|What about that one?}
+ {not intro_outer} [Port by outer door.]->intro_outer #reloc #doorloc
+ {not intro_neighbor} [Port toward neighbor suite.]->intro_neighbor #reloc #neighborloc
+ [Port by inner door.]->intro_inner #reloc #dresserloc
= intro_outer
What's the word?
+ [Exiting suite is not permitted until the microbe scan has successfully completed.]->microbescan
= microbescan
I guess they're more serious about the interstellar quarantine than back home.
+ [They have the funding to support it.]->chooseport
= intro_neighbor
Any outgoing feed?
+ [Interaction requires cooperation of adjoining suites.]->light_sleeper
= light_sleeper
I guess that's what I get for being a light sleeper.
+ [Or a heavy snorer.]->chooseport
+ [What's my excuse?]->light_sleeper_excuse
+ [I'm sorry, I didn't catch that.]->chooseport #robot
= light_sleeper_excuse
My bony elbows.
+ [...]->chooseport
= intro_inner
->finish

=== finish ===
\ 
-> END