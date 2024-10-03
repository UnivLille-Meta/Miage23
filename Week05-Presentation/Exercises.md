# Making a double linked list

Implement a double linked list in Pharo.
Remember: a double linked list is a chain of nodes, where each node knows the next and the previous one.


## Features
Your linked list must have at least the following features:

- `add:` adds an element at the end the list.

```smalltalk
list := MyList new.
list add: 7.
list add: 42. "now the list is 7, 42"
```

- `add:before:` adds an element before another element in the list. Fails with an error if the second element is not in the list.

```smalltalk
list := MyList new.
list add: 7.
list add: 42 before: 7. "now the list is 42, 7"
list add: 17 before: 1. "Error!"
```


- `add:after:` adds an element after another element in the list. Fails with an error if the second element is not in the list.

```smalltalk
list := MyList new.
list add: 7.
list add: 42 after: 7. "now the list is 7, 42"
list add: 17 after: 1. "Error!"
```

- `includes:` returns a boolean indicating if an element is inside the list or not

```smalltalk
list := MyList new.
list add: 7.
list includes: 7. "true"
list includes: 17. "false"
```

- `size` returns the number of elements inside the list

```smalltalk
list := MyList new.
list add: 7.
list add: 42.
list size. 2
```

## Tests

You must implement your linked list with tests. Try to be thourough with it.
You will probably require to implement other methods to help you test.
It is up to you to decide what methods would be required.

Use frequently mutation testing to evaluate your test quality and observe how your code improves.

**Objective:** reach at least 90% of mutation score.

To think about:
- when a mutant survives, how do you kill it?
- to write an assertion you need to observe the state of your objects. But the only proposed methods that do that are size and includes. How can you test the order of the list?
- can you avoid `nil` checks in your code? how? try to implement it
- how can you implement one of the sexy iterator methods like `do:`, `select:` or `collect:`? Remember, blocks understand the `value` and `value:` message.
