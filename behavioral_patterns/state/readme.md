# State

### Purpose

When a program or a part of the program has a state to conditionally determine how to do something, we use a state. When the program grows with more states and/or behaviors, most methods will contain monstrous conditionals. This makes code very hard to maintain.

The State pattern implements new classes for all possible states and extract the state behaviors into these classes.

### How

1. Define the state interface that holds all the methods specific to the state.
2. For every state, implement the defined interface.
3. The context class (the state-dependent class) holds a state object, and define some way to set the state (constructor or setter).
4. In each of the methods of the context class that are state-dependent, call the state-equivalent methods instead.

### Analogy

A tank of gas will have 4 different states: full, partial, low, and empty. Depending on the current state, there will be different expected behaviors when: filling gas, on/off low fuel light, can the vehicle move, etc.
