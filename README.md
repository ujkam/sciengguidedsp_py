# sciengguidedsp_py

Python Implementation of the sample code in The Scientist and Engineer's Guide to Digital Signal Processing

This notebook contains Python implementations of the code in [The Scientist and Engineer's Guide to Digital Signal Processing by By Steven W. Smith, Ph.D.](https://www.dspguide.com/)  The code is an almost exact translation of the BASIC code into Python, which will result in bad/low-performance/ugly python code (e.g. looping everything). When rewriting the sample code, I've purposefully left out all sort of nice python features (e.g. enumerate) to match the original code closely.

For the code samples, I've tried to avoid using numpy or scipy because the goal of the example code is to show and explain how some of these DSP functions are actually implemented.  In any non-academic setting it would be more pragmatic to use a numpy array and not a python list, but I think it's easier to stick to the spirit of the original BASIC code using standard python data structures and functions.  A consequence of this is that some of the code is less elegant, and harder to read, than it would be if I was actually implementing this for a production application.   

I have used numpy and scipy for some things. The sample code in the textbook doesn't contain actual signal data, have code for plotting, etc.  I wanted every code sample to actually run, so I have used numpy and scipy to generate data and to analyze the output of the algorithms.





