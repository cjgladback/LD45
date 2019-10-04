-> enter_study
=== enter_study ===
You just broke into the study. More of a library, really. Jim never actually closes himself in here, prefers somewhere with more sunshine and people to work. This room is always open to guests and, more importantly, the kids. He loves to support their reading habits. Makes sure the best stories are on the lower shelves.
+ [Try the door.]->its_locked
+ [Try the window.]->give_up

=== its_locked ===
The weird thing is, the door's locked. It's an old fashioned house, though you're no expert to ask whether that's by design or if it's actually old. But either way, it only locks with a key. And you can't swear to it, but you're pretty sure that key only works from the inside.
Not really sure how that makes sense when no one else is in here. It's not that big a room, and the house is eerily quiet. You'd be able to hear them breathing even if they didn't object to someone sliding in the window.
The breeze from the window behind you stirs the curtains and you very carefully don't think about reasons someone might have left through the window in the back of the house, leaving it unlocked and abandoning the house. You very carefully think "someone," not "Jim."
-> look_around
=== look_around ===

+ [Examine the desk.]->desk

=== desk ===
The desk really wants an exit strategy.
-> END

=== give_up ===
You consider hopping back out the window, sliding it closed, and pretending none of this happened.
But you won't give up on these kids that easily. There has to be something you can do here.
* {not its_locked} [Buck up.] ->its_locked
* {its_locked} [Take a deep breath.] ->look_around

-> END