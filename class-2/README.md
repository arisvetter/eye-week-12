# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

Lab Summary:

In this lab, we created a 6-state state machine with two different implementations. We first created a One Hot implementation, where only one D Flip Flop was ever "active". We also created a Binary implementation where we only used lg n D Flip Flops and kept track of the state based on the output of our three D Flip Flops, which each represented one binary digit for the state number. We then displayed the output of the state machine (the states of C and E would light up the LED, but not any other states).

### Compare and contrast One Hot and Binary encodings

One Hot encodings have one D Flip Flop per state, wheras binary encodings only require lg n D Flip Flop per state. However they both represent the same information: they both track current state and find next state based off of current state and the input bit.

### Which method did your team find easier, and why?

We found the one hot easier--while we see the value of the binary encoding, the additional work of solving K Maps added to the time it took to create.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.

If you were trying to build an extremely large state machine and ran out of logic gates in the FPGA, you would need to switch to a binary implementation, as reducing the number of D Flip Flops from n to lg n would solve the resource constraint.