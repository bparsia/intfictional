// Should I Stay or Should I Go?
// by a cat

/* Nested choices can be very handy and quick for pounding
out a tree like story which doesn't get very deep and 
we are always "in context", but it also can get a bit confusing. 
So we're going to make knots for each bit of text, including the 
start text!
*/

// We need an initial divert!
-> start

=== start
* [I wish to go out.]
->go_out
* [I wish to turn away from the bright and unfamiliar.]
->turn_away
* [I am uncertain.]
->uncertain

=== go_out
You step over the threshold.
Warm sun heats your back. A light breeze cools your nose. The scents are unfamiliar.
* [I am spooked by the unknown.]
->unknown
* [I am uncertain.]
->uncertain

=== unknown
You return to the threshold before the door can close.
You sit and wash yourself.    
-> sleep

=== turn_away
You retreat to your familiar domain.

* [I am comforted.] 
You sit and wash yourself.
    // Since this choice is more like a reveal, we leave it
    // nested.
    * * I like it here. 
    -> sleep
    
=== uncertain
There's plenty of time to contemplate the options.
You sit and wash yourself.
-> sleep


=== sleep
You fall asleep.

-> DONE

/*  You can see that this version is still pretty easy
    to follow, given the names we've chosen. Note that
    we have two paths that go through "uncertain"! You can
    have your paths wander off then join back up at key places.*/