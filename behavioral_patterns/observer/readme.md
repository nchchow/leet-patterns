# Observer

### Purpose

The Observer Design Pattern defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically. This pattern is particularly useful in scenarios where a change in one object requires updating multiple other objects.

### How

1. Create a `Subject` class that maintains a list of observers and provides methods to attach, detach, and notify them.
2. Create an `Observer` interface with an `update` method that concrete observers will implement.
3. Implement concrete observer classes that define specific behaviors for updates.

### Analogy

A traffic light is a subject and the vehicles on the road are the observers. When the traffic light changes state, eg. from red to green, the vehicles are updated to begin to accelerate.
