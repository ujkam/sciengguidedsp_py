# sciengguidedsp_py

Python Implementation of the sample code in The Scientist and Engineer's Guide to Digital Signal Processing

This notebook contains Python implementatations of the code in [The Scientist and Engineer's Guide to Digital Signal Processing by By Steven W. Smith, Ph.D.](https://www.dspguide.com/)  I've tried to have two versions of the code.  The first is an almost exact translation of the BASIC code into Python, which includes things that woudln't be considered Python best practices (e.g. using a loop to inititalize all values of a list to zero). I've also tried to reimplement the code by trying to be more "pythonic" and also using the standard libraries that would normally be used when implementing these types of functions.

I've tried to avoid using numpy or scipy because the goal of the example code is to show and explain how these DSP functions are actually implemented.  In many cases it would be much more pragmatic to use numpy and not fumbling around with a python list, but I think it's easier to stick to the spirit of the original BASIC code using standard python data structures and functions instead of using numpy to do all the heavy lifting.  However, a consequence of this is that some of the code is less elegant, and harder to read, than it would be if I was actually implementing this for a production application. 




