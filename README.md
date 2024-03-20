# sciengguidedsp_py

Python Implementation of the sample code in The Scientist and Engineer's Guide to Digital Signal Processing

This notebook contains Python implementatations of the code in [The Scientist and Engineer's Guide to Digital Signal Processing by By Steven W. Smith, Ph.D.](https://www.dspguide.com/)  The code is an almost exact translation of the BASIC code into Python, which will result in bad/low-performance/ugly python code (e.g. looping everything).  I've purposefully left out all sort of nice python features (e.g. enumerate) to match the original code closely.

I've tried to avoid using numpy or scipy because the goal of the example code is to show and explain how these DSP functions are actually implemented.  In many cases it would be much more pragmatic to use numpy and not fumbling around with a python list, but I think it's easier to stick to the spirit of the original BASIC code using standard python data structures and functions instead of using numpy to do all the heavy lifting.  However, a consequence of this is that some of the code is less elegant, and harder to read, than it would be if I was actually implementing this for a production application. 




