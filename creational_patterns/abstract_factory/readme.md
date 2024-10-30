# Abstract Factory

### Purpose

Much like the Factory Method pattern, the Abstract Factory pattern also provides an interface for creating objects. However, the Abstract version allows for creating families of related or dependent objects.

Examples of "families" of objects:

For this set of classes: `jacket`, `pants`, `shoes`

There might be variants that look like:

- `rain jacket`, `bib`, `rain boots`
- `hoodie`, `sweatpants`, `sneakers`

### How

1. Map out a matrix of distinct classes and their variants. ie)

|            | Jacket      | Pants      | Shoes      |     |
| ---------- | ----------- | ---------- | ---------- | --- |
| Waterproof | Rain jacket | Bib        | Rain boots |     |
| Casual     | Hoodie      | Sweatpants | Sneakers   |     |

2. Declare interfaces for each distinct class in the family, ie) `jacket`, `pants`, `shoes`

3. Make all concrete classes implement these interfaces: `RainJacket < Jacket`, `Bib < Pants`, etc.

4. Declare abstract factory interface with a set of creation methods for all abstract class of the family. ie) `JacketFactory`, `PantsFactory`, `ShoesFactory`

5. For each variant, implement a concrete factory class. ie) `RainJacketFactory < JacketFactory`, `BibFactory < PantsFactory`, etc

6. Instantiate one of the concrete factories, depending on the configuration, and use this factory to create objects.
