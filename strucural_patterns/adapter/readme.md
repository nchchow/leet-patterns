# Adapter

### Purpose

Allow incompatible objects to collaborate.

### How

1. With at least two classes with incompatible interfaces, create the adapter class and make it follow the client (the class using the incompatible service) interface.
2. Add a field to the adapter class to store a reference to the service object.
3. Implement all methods of the client interface in the adapter class that delegate the work to the service object.
4. Clients can then use the adapter via the client interface.

### Analogy

A translator translates the conversation spoken in differently languages and enables communication.
