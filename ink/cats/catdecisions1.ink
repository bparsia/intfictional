// Should I Stay or Should I Go?
// by a cat

// Interactive fiction is as much programming as creative writing.
// ink is a full programming languages with features that help
// you design, build, maintain large, complex story/programs.

// For example, in the first version, each path had the same ending.
// To achieve this we repeated the lines about washing yourself and
// falling asleep. This is bad for two reasons:
//    1) we have three places to edit if we want to tweak the ending
//    2) the fact that all paths lead to the same place is hidden.
// We can fix this by *naming* that text and *referring* to it.

// We name it with a structure call a "knot".
// At the end of the file, we've created a knot called "sleep" which
// contains the ending of the story (we indicate the knot is done with
// the "-> DONE"
// Now we can "divert" our story to this knot from multiple places.
// The divert symbol is "->". There are some built in targets like
// "DONE" and "END".

You stand in an open doorway.
Bright light dazzles you. A breeze ruffles your fur and whiskers.
Behind you, the room is warm and its scent is familiar.

* [I wish to go out.]
You step over the threshold.
Warm sun heats your back. A light breeze cools your nose. The scents are unfamiliar.
-> sleep
* [I wish to turn away from the bright and unfamiliar.]
You retreat to your familiar domain.
-> sleep
* [I am uncertain.]
There's plenty of time to contemplate the options.
-> sleep

// It's now evident that all three paths go the same way. We 
// can also see the bits which are different for each path.

=== sleep

You sit and wash yourself.
You fall asleep.

-> DONE