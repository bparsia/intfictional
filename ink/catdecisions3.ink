// Should I Stay or Should I Go?
// by a cat

/* This is the same as the prior script, except we refactored
   the divert to make all paths go the same way. In both
   cases, we have to repeat (different) text, but this is 
   structurally cleaner and more consistent. */

You stand in an open doorway.
Bright light dazzles you. A breeze ruffles your fur and whiskers.
Behind you, the room is warm and its scent is familiar.
* [I wish to go out.]
You step over the threshold.
Warm sun heats your back. A light breeze cools your nose. The scents are unfamiliar.
  * * [I am spooked by the unknown.]
    You return to the threshold before the door can close.
    You sit and wash yourself.    
    -> sleep
  * * [I am uncertain.]
    You sit, and contemplate this new view.
    You wash yourself.
    * * * [It is becoming familiar. I am content]
    -> sleep
* [I wish to turn away from the bright and unfamiliar.]
You retreat to your familiar domain.
    * * [I am comforted]
    You sit and wash yourself.
        * * * [I like it here.]
        -> sleep  
* [I am uncertain.]
There's plenty of time to contemplate the options.
You sit and wash yourself.
-> sleep

=== sleep
You fall asleep.

-> DONE