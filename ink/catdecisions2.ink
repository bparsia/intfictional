// Should I Stay or Should I Go?
// by a cat

/* Each path in this story leads directly to the end. Which it
 A bit abrupt. We can add richess to the story by making the paths
 longer and more numerous. We can do this by adding *nested choices*.
*/

You stand in an open doorway.
Bright light dazzles you. A breeze ruffles your fur and whiskers.
Behind you, the room is warm and its scent is familiar.

* [I wish to go out.]
You step over the threshold.
Warm sun heats your back. A light breeze cools your nose. The scents are unfamiliar.
// We nest choices by adding addition asterisks.
  * * [I am spooked by the unknown.]
    You return to the threshold before the door can close.
    // These choices look just like top level choices so 
    // can contain diverts.
    -> sleep
  * * [I am uncertain.]
    You sit, and contemplate this new view.
    // We can't use the sleep knot because we're already sitting.
    // So we just put the alternative ending in line.
    You wash yourself.
    // We can have only a single choice to help keep the reader engaged.
    * * * [It is becoming familiar. I am content]
    You fall asleep.
    -> END // This divert lets us end the story explicitly.
* [I wish to turn away from the bright and unfamiliar.]
You retreat to your familiar domain.
    * * [I am comforted]
    You sit and wash yourself.
        * * * [I like it here.]
        You fall asleep.
    -> END   
* [I am uncertain.]
There's plenty of time to contemplate the options.
-> sleep

/* It's not clear how useful this knot is at the moment
   in terms of structure. It might be better to put the 
   variable part into the path that varies and make all
   paths divert here. We do that in the next version. */

=== sleep

You sit and wash yourself.
You fall asleep.

-> DONE