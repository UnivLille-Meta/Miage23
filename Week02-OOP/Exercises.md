# Exercises 

The main objective of this week's practice is to start preparing the presentation due in Week 5.
During this exercise you will have to analyze two existing software projects: AVL and Artefact.
Then, you will have to prepare a 10' presentation that shows two aspects of your analysis:

- What conclusions did you get from the data structure?
- *How* did you learn?


## Projects

- AVL is an implementation of balanced trees https://github.com/pharo-containers/AVL
- Artefact is a generator of PDF documents https://github.com/pharo-contributions/artefact

## Analysis

For each project perform *at least* the following analyses.

Tips:
- You can check the code from the Class browser,
- Execute examples from the playground,
- and inspect the results using the inspector.
- To execute the tests use DrTests (see menus)
- And check the options in the browser/playground (senders, implementors) what do they do and why are they useful?

### From a user perspective
- Is there good starting documentation? Look for installation instructions, starting points, examples.
- How do we use the project/library?
- What does it do? Why would you use it?
- What are the key classes to look at?

### From an implementor/contributor perspective
- how is it implemented? Do you recognize some known patterns?
- what are the invariants? For AVL you will see plenty since it is a data structure. For Artefact, can you zoom into a feature and get some insights?
- what is the design?

### What about tests
- Are there tests?, do they run?
- Is coverage good? Are there missing tests?
- What kind of tests do you find? Positive, negative, boundary checks?

### Propose improvements
Either
- improving existing tests 
- proposing new (missing) tests
- if you find problems please open issues in the github repository of the project
- you can also propose pull requests to address problems and improve the project
