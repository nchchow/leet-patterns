# Singleton

### Purpose

Ensures that a class has only one instance, while providing a global access point to this instance.

### How

1. The default constructor must be private. This makes the Singleton class the only one that can instantiate itself.
2. Create a static method that acts as the constructor. This method calls the private constructor to create an object and saves it. Any subsequent calls to this method returns the cached object.

### Analogy

Conductor of an Orchestra who leads and coordinates the musicians. The single point of access for any part of the Orchestra that needs to interact with it.
