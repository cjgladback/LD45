-> enter_study
=== enter_study ===
You just broke into the study. More of a library, really. Jim never actually closes himself in here, prefers somewhere with more sunshine and people to work. This room is always open to guests and, more importantly, the kids. He loves to support their reading habits. Makes sure the best stories are on the lower shelves.
+ [Try the door.]->its_locked
+ [Try the window.]->give_up

=== its_locked ===
The weird thing is, the door's locked. It's an old fashioned house, though you're no expert to ask whether that's by design or if it's actually old. But either way, it only locks with a key. And you can't swear to it, but you're pretty sure that key only works from the inside.
Not really sure how that makes sense when no one else is in here. It's not that big a room, and the whole area is eerily quiet. You'd be able to hear someone breathing even if they didn't object to you sliding in after ringing the front doorbell and finding every entry locked.
The breeze from the window behind you stirs the curtains and you very carefully don't think about reasons someone might have left through the window in the back of the house, leaving it unlocked and abandoned. You very carefully think "someone," not "Jim."
-> look_around
=== look_around ===
It's not a very large room. There can't be that many places to hide a key.
+ [Examine the desk.]->desk
+ [Examine the bookshelves behind the desk.] ->shelves_desk
+ [Examine the shelves by the couch.]->shelves_couch
+ [Start for the window.]->give_up

=== desk ===
The desk really wants an exit strategy.
-> END

=== shelves_desk ===

+ [Look around some more.] ->look_around

=== shelves_couch ===
The bookshelves near the couch {hold the cream of the crop, to ensure that whenever Lilly joins her dad in here she'll have something enticing in view.|stare back at you.}
+ [Check low.] ->shelves_couch_low
+ [Check in the middle.] ->shelves_couch_mid
+ [Check higher up.] ->shelves_couch_high
+ [Look around some more.] ->look_around

= shelves_couch_low
Fricking third time writing this. And I'm tired, just getting the story out before morning.
Lilly's favorite picture book is missing, which isn't a surprise since she's been using it to help herself and her brother get out of "moods." Caught the phrase from preschool. Declares herself in a mood when she's getting frustrated by something and spends time alone. Cheered her brother up with this book when he was crying while you were babysitting.
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

-> END