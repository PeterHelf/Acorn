1. What is a precompiled header? Name pros and cons:
    - Compiles multiple header files into one compiled binary
    - Standard libraries and files that are rarely changed should be contained in these precompiled headers
        - Pros: Speeds up compilation time
        - Cons: If one of the files/libraries in the pch is modified the whole file has to be recompiled
2. Describe the layer of abstraction with your own words:
    - Hides details of the subsystem
    - Simplyfies the actual implementation away for the user using the abstraction layer
    - Several layers can be stacked on top of each other depending on use case

3. Name the SOLID principles and describe them briefly:
    - Single-responsibility principle
        - A class should only have one responsibility
    - Open-closed principle
        - Sofware should be easily extendable without requiring many modifications to the existing code
    - Liskov substitution principle
        - Functions should be able to substitude their parameters with child classes of their expected class without knowing that the received class is a child class
    - Interface segregation principle
        - All functions expected by an interface should be useful for the class implementing the interface
    - Dependency inversion principle
        - Classes should depend on abstraction like abstract classes and interfaces and not concrete classes