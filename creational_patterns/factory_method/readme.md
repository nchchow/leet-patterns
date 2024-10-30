# Factory Method

### Purpose

The Factory Method Pattern provides an interface for creating objects in a superclass but allows subclasses to alter the type of objects that will be created. This pattern promotes loose coupling by eliminating the need to specify the exact class of the object that will be created, making the code more flexible and easier to manage.

### How

1. Create an interface or abstract class that defines the methods that the concrete class must implement.
2. Implement the concrete classes.
3. Definte and implement a factory class that instantiate and return the appropriate objects based on specific conditions or parameters.

### Analogy

An oven can be considered a factory for bakery goods. The oven can produce different bakeries dependant on what goes in, and what settings are in place to bake the goods.
