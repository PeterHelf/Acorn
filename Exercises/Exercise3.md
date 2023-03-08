1. What is the difference between a dynamic linked library and a static library?
    - Dynamic linked library
        - Seperate from your own binary
        - Can be changed later on as long as the new dll is compatible
    - Static library
        - Incapsulated into your own binary
        - Can not be changed after compilation

2. Describe a logging system with your own words
    - Logging systems allow the developers to output information about the program to a file, console, or other location where the information can be retrieved
    - The logged information can help with bug fixing and general monintoring of the program

3. What is a Design Pattern?
    - A solution for a common software design problem.
    - Customizable Blueprint to solve a specific design problem

4. Name and describe 2 Design Patterns (except facade or adapter):
    - Singleton
        - Ensures that the class only has one instance
        - Other classes are able to access this one instance
    - Command
        - Encapsulates an action into a single object
        - This e.g. allows the passing of the action as a method argument
        - Seperation of concerns
        - Often used to seperate UI and business logic