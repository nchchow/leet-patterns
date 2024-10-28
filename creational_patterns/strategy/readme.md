# Strategy Pattern

### Purpose

Defines a family of algorithms, encapsulates each one, and makes them interchangeable. This pattern allows the algorithm to vary independently from clients that use it.

### How

1. Create an abstract base class (`Strategy`) that declares a method for executing an algorithm.
2. Implement concrete strategies (`StrategyA`, `StrategyB`) that extend the base class and provide specific implementations of the algorithm.
3. Create a `Context` class that holds a reference to a `Strategy` object and delegates the execution to it.

### Analogy

Think of a navigation app that can use different modes of transportation: driving, walking, or biking. Each mode of transportation has its own strategy for determining the best route, but the app (the context) can switch between them seamlessly based on user preference.
