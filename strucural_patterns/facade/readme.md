# Facade

### Purpose

Simplify the use of a broad, complex set of functionality, often belonging to a sophisticated framework/library.

### How

1. If the existing interface of a subsystem can be simplified, implement this new simplified interface in a new facade class.
2. The facade should be responsible for the life cycle of the subsystem, and redirect calls from the contextual code to the appropriate objects or methods of the subsystem.

### Analogy

Imagine ordering pizza over the phone. The person taking your order is the facade to all the services and operations to the store. You don't need to know about how the pizza is made, how the store operates, or how the pizza gets to your front door. The person you're talking on the phone provides you with a simple point of contact and the rest is taken care of.
