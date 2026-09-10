# Weekly Report

## Glariel

---
---

## Tien

### 1. Write small code examples challenging your knowledge about dispatch.

Essence of dispatch in Pharo is `self` and `super`.

#### Example of `self` :

- Class definition:
```
A >> foo
    ^ 10

A >> bar
    ^ self foo

B subclassOf: A
B >> foo
    ^ 50
```
- Execution:
```
aB := B new.
aB bar.
    ^ 50
```

#### Example of `super` :

- Class definition:
```
A >> foo
    ^ 10

B subclassOf: A
B >> foo
    ^ super foo

C subclassOf: B
C >> foo
    ^ super foo
```
- Execution:
```
aC := C new.
aC foo.
    ^ 10
```

---

### 2. Did the examples work as expected?

- Example 1: No, at first I thought `aB bar` would return `10`.
- Example 2: Yes, `aC foo` returns `10`.

---

### 3. What was different between expectation and reality?
- Expectation: I thought when we call `self` method, we will run the method in the class we are currently in: when `self foo` is in class A, it would call `foo` in class A so it would return `10` instead of `50`.
- Reality: `self` always represents the receiver of the message, and method lookup starts dynamically in the class of the receiver so `50`.

---

### 4. Correcting assumptions and how the information was found

#### Corrected Assumptions:
- `self` dispatch is dynamic: `self` always represents the receiver of the message, and method lookup starts dynamically in the class of the receiver.
- Sending a message is a two-step process:
    1. Look up the method matching the message
    2. Execute this method on the receiver

#### How this information was found:
All fundemental information about `self` in Pharo *Inheritance and Lookup: Self- (`M1-4-Essence-04-Self.pdf`) covers dynamic lookup starting at the receiver's class.


### Finish the exercises of the preparation

Finish the exercises that you should have done for the lecture preparation: See the ModulePreparation-01 folder

Link to the MyCounter repository :

### Conclusion




