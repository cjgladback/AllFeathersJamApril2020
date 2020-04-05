-> wake_up
=== wake_up ===
+ [Power On]->intro01
=== intro01 ===
Oh, finally, you're awake. Good.
+ [...]->intro02
= intro02
Now, I know last time you booted up after cryo, you went a little wacky for a while there.
+ [...]->intro03
= intro03
But you aren't gonna do that this time, right?
+ [Commence Boot Procedures]->intro04
+ [Negative]->intro_negative
= intro_negative
Negative you won't or negative you will?
+ [...]->intro04
= intro04
Okay. What are my messages?
+ [Null]->give_up

=== its_locked ===
The weird thing is, the door's locked. It's an old fashioned house, though you're no expert to ask whether that's by design or if it's actually old. But either way, it only locks with a key. And you can't swear to it, but you're pretty sure that key only works from the inside.
Not really sure how that makes sense when no one else is in here. It's not that big a room, and the whole area is eerily quiet. You'd be able to hear someone breathing even if they didn't object to you sliding in after ringing the doorbell a dozen times and skulking around the house to find every entry locked.
The breeze from the window behind you stirs the curtains and you very carefully don't think about reasons someone might have left through the window in the back of the house, leaving it unlocked and abandoned. You very carefully think "someone," not "Jim."
-> look_around
=== look_around ===
It's not a very large room. There can't be that many places to hide a key.
+ [Examine the desk.]->desk
+ [Examine the bookshelves behind the desk.] ->shelves_desk
+ [Examine the shelves by the couch.]->shelves_couch
+ [Start for the window.]->give_up

=== desk ===
Jim's laptop, alternately named the Untameable Beast and the Only Good Thing to Come of This Era, Present Company Excluded, is closed in the middle of the desk.
{On the back edge of the desk, overhanging the corner nearest the window you climbed through, sits Jim's notebook. Which looks incredibly wrong alone, without a pen hastily scribbling in it. You don't think you seen either Jim or his notebook without the other. {not page_alone: <> There's also a single page from the notebook on the floor just sticking out from the opposite corner of the desk, on the floor under the desk drawers.}|}
+ {not page_alone} [Pick up the page from the floor.] ->page_alone
+ {desk_manual && not desk_back_panel} [Tap the back panel demonstrated in the manual.] ->desk_back_panel
+ {desk_manual && not pull_out_drawers} [Pull out drawers.] -> pull_out_drawers
+ {pull_out_drawers} [Make a mess and a stepladder.] -> put_in_drawers
+ [Look around some more.] ->look_around

= desk_back_panel
You press gently at first, then with as much force as you can without moving the desk, but the panel doesn't seem to be going in any further than it's already inset. Actually, now that you look, it seems to have a crack. Which doesn't really fit with Jim's usual care for his belongings; maybe one of the kids broke it?
->desk

= pull_out_drawers
You pull out the drawers from the desk, top ones first so you have as much leverage on the heavy lowest drawer as you can get. You stack them on the floor to the side and can now see the rest of the torn pages from the notebook arrayed reach. From the way they're splayed out, they must've slid under the desk when dropped.
+ [Read notes.] -> read_several
+ [Make a mess and a stepladder.] -> put_in_drawers

= put_in_drawers
You remind yourself you stopped caring when you broke into the room in the first place, before dumping the contents of the carefully stacked drawers and then slide them in upside down.
None of them slide in fully before thunking down securely - the bottom one is furthest out and so on. Broken or not, it's still a well-designed desk.
+ [Step on up.] -> step_up

=== step_up ===
When you've successfully mounted the abnormally tall desk, you're nearly eyeheight with the light in the room. This way, you can see a shadow in the cover.
You reach in and grab it, praying it's not a dead cockroach.
+ [Here's hoping.] -> have_key

= have_key
It's metal and not crunchy. Shakily, you climb down with the key.
Finally, you can unlock the door.
+ [Go.] -> hall
+ [Look around some more.] -> look_around

=== hall ===
{read_several: You step into the hall. The floor creaks below you and when you glance up again your heart freezes. The figure is tall, cloaked, with a round, glowing head.|You step into the hall. The floor creaks below you and when you glance up again your heart freezes. Ethan. He looks terrified for a moment.}
{read_several: The next moment, you laugh at yourself, for having been startled by the light on the end of the banister and the coatrack in front of it.|But then he sees it's just you, and instead of screaming he puts his finger to his lips and walks closer, shooing you back into the study. When the door closes again, he turns to you. "Da's got a migraine," he seems to have some difficulty with the word. But he explains no one is to wake him up.}
{read_several: But the floor beneath you has changed in that second of laughter. It has a shadow that wasn't there before. Yours.|"What have you and Lilly been eating?" you ask. The bashful silence tells you enough - knowing what they liked to eat and that you had strict orders to never give them more than one cookie a meal, you have some guesses. "Okay, we're gonna be very quiet but I'm making you supper."}
{not read_several: So Jim's undeniably an inadequate dad sometimes. Good thing he hired you.}
+ {read_several} [Shadows mean light. And you can't deny the light scares you.] -> finish
+ {not read_several} [What a relief.] -> finish

=== shelves_desk ===
{not page_alone: There's a page from Jim's notebook on the ground, sticking out from under the desk's lowest drawer.|The dust on the lower shelves near the desk is disturbed, but it stirs even as you walk closer to it. Probably the breeze from opening the door clears it off on a dry enough day.}
+ {not page_alone} [Pick up the page.] ->page_alone
+ [Check lower shelves.] ->shelves_desk_low
+ [Look around some more.] ->look_around

=shelves_desk_low
One pamphlet is a little further in than the rest, like it was pushed back hastily. Looks like it's a...desk manual? What kind of desk needs a manual?
->desk_manual


=== desk_manual ===
You've already picked the manual up and it's fallen open to a page off of the center staples. Based on the creases, it may have been folded open that way. The section name at the top of the page is Trick Steps. It outlines the way you can press an inset panel near the back of the desk and the drawers will automatically slide out with hardwood covers on them. From the illustration, it looks like it would make a handy step ladder.
The end of the section says there's another trick to the steps - if you want to trick a friend into making a mess, without the use of the secret panel, the drawers will also slide out and then go back in upside down to function the same way. You can see now why the desk needs a manual, though not why a desk maker needs this sense of humor.
->shelves_desk

=== page_alone ===
The page is torn at the top, only with a few shreds of the holes for the ring binding. Jim must have ripped it off in a hurry. As you bend to pick it up, you can just barely see some more torn from the notebook deeper under the desk drawers, out of reach.
Jim's handwriting is as tidy as ever.
+ [Read notes.] ->read_single

= read_single
It looks like exactly the same kind of notes Jim showed you once, when you asked what he was writing. Just recording whatever his kids are doing, for accuracy and inspiration for the weekly blog. It helped with the strain of keeping some steadiness to their income between the manuscript submissions.
This day must've been relatively busy, since it's only the first couple of hours recorded on this sheet. Evan apparently had a bad reaction to a nightmare - shrieked when he left his room and wouldn't walk past the lamps in the hallways without a lot of coaxing. "Not round enough" is in quotes with a shaky little smiley face. The bottom corner of the page has a little scribbled magnifying glass Jim has told you indicates plans to research for a better way to deal with an issue.
You know Evan's had some more intense nightmares recently, but hadn't seen anything off about his behavior with lights around town. But you hadn't seen the kids in their own home this week, so maybe he just connected the lights nearby when he woke up to the nightmares he'd had.
+ [Keep the page.] ->shelves_desk

=== read_several ===
{page_alone: These seem to be the rest of the notes from the day Evan was shying away from light. }The date on the notes absolutely does not make your heart seize. You're just dangerously dehydrated at all times. And it was yesterday.
After Evan was convinced to walk all the way down the hall and get breakfast, he and Lilly both went to get dressed and play inside for the morning. Jim was worried when he saw Lilly again midmorning and she said Evan was hiding. But his tried and true method for approaching his kids' anxieties is to let them come to him when they need help, otherwise he waits a minimum of a day before butting in and exerting his own unsolicited fixes. He made this clear to you when he hired you the first time - he's aware of his own academic overenthusiasm for diagnosing and treating maladies and the last thing he wants is his own children getting a complex thinking there's always something wrong with them.
With some loose definitions of "a day," your intervention here follows that rule. That's your story and you're sticking to it.
+ [Read more.] -> read_several_second

= read_several_second
Next, Jim notes that Lilly brought him a piece of paper saying that Evan was missing and, "I don't like his drawing." She had evidentally taken this drawing from her brother, since she brought it to show to Jim. Jim asked her to leave her brother alone for a little while, which she accepted before leaving again. But in a minor show of rebellion that Jim thought was noteworthy, she dropped the drawing behind the couch when she left the room. Jim sketched a little version of the drawing on the next, rumpled looking page. It looked like a person (or something upright with four limbs - this was based on Evan's art habits) with a circle for a head. And a lot of lines were drawn radiating from the head. Under the drawing, in smaller script than Jim usually uses, was the single word "lamps?"
You supposed you could see the resemblance, now, to the old, spherical lamps in the hall beyond this door. And to the streetlamps outside, for that matter. If Evan had had a nightmare where the lamps were people, that might explain why he was afraid of them.
The low afternoon sun shines through the paper and outlines something dark on the other side.
+ [Flip it over.] -> read_several_third

= read_several_third
The room isn't any colder. Heck, you've been letting the cool air out through the window this whole time. But that doesn't convince the hairs on the back of your neck to lay back down.
The back of the last notebook page was written with enough force you're surprised it didn't tear through.
"They're gone. Missing. Lamps. The hall's not safe. It must be the lamps. But they're out of sight now. What will I do? It's not real. If I don't believe it. But even the damn street globes have me on edge."
You can barely read the page because parts of it have been crossed out severely. The first word lined through is "gone" but the whole final sentence is scribbled through.
You kind of regret picking this up. And not for leaving fingerprints on potential evidence.
+ [Focus back on the desk.] -> desk

=== shelves_couch ===
The bookshelves near the couch {hold the cream of the crop, to ensure that whenever Lilly joins her dad in here she'll have something enticing in view.|stare back at you.}
+ [Check low.] ->shelves_couch_low
+ [Check in the middle.] ->shelves_couch_mid
+ [Check higher up.] ->shelves_couch_high
+ [Look around some more.] ->look_around

= shelves_couch_low
Lilly's favorite picture book is missing, which isn't a surprise since she's been using it to help herself and her brother get out of "moods." She must've heard the phrase in preschool. But for the last month or so, whenever she finds herself getting frustrated she says, "I'm in a mood," then goes to spend some time alone. Then she started including her brother in these analyses.
Once, when Evan was crying inconsolably and you'd just confirmed he wasn't hurt, you heard a primp little voice pipe up behind you, "You'll have to excuse him. He's in a mood." The Lilly bundled Evan off to her room with her picture book under her arm. You could hear her reading the book, funny voices and all, and Evan's crying slowly tapered off. By the time there were some giggles, you checked on them to find both kids pointing and laughing at the illustrations, though you know it had to have been the hundredth time Lilly had seen all of them.
Sometimes you wish you'd had a big sister like her, but as it is you're proud of both of these kids like they were your own younger siblings. And so help you if something's happened to them...
There's nothing under the books. Or behind the books. Or able to be shaken out of the books.
Frustrated, you take a step back and keep your hands carefully by your sides, clenched into fists.
-> shelves_couch

= shelves_couch_mid
The whole reference section is conspicuously lacking dust in front of the books. The thesaurus especially is worn, the metallic edges flaked off around the corners from frequent use. You hoped to find a recess carved into the thicker tomes here, but the fact is Jim wouldn't be willing to risk facing life without the wisdom of every volume of The Books of Knowledge and An American Encyclopedia of Birds.
That is, assuming you know the man at all.
You check each book anyway. There's nothing.
-> shelves_couch

= shelves_couch_high
You climb the couch first to check the layer of dust on the upper shelves. It had probably been accumulating since you last spent a naptime tidying in here. Cleaning isn't part of your job and it isn't one of Jim's many interests. He keeps the living areas safe and sanitary but, when it comes to dusting, if it's out of sight it's never been in mind.
The late afternoon sun streaming in the window highlights the signs of how completely undisturbed these shelves have been. The curtains are still occasionally shifting in the breeze, drawing your eyes that way and you once again count your blessings that Jim installed a sturdy privacy fence between his backyard and the street. It was easy enough to clamber over, but all you can see over it from here is the tops of the fancy globe streetlamps from this side of town.
Even Jim's neighborhood is old fashioned. You're pretty sure there's a drink called old fashioned, and if so Jim probably drinks it. You are what you eat.
You sigh and step down from the couch's arm. Evidently you eat "stalling."
-> shelves_couch

=== give_up ===
{You consider hopping back out the window, sliding it closed, and pretending none of this happened. But y|Y}ou won't give up on these kids that easily. There has to be something you can do here.
+ {not its_locked} [Buck up.] ->its_locked
+ {its_locked} [Take a deep breath.] ->look_around

=== finish ===
\ 
-> END