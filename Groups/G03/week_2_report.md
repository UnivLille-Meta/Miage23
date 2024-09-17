# Report on Message Dispatch in Pharo

---

## Introduction to Message Dispatch

In Pharo, message dispatch is the process of sending messages to objects, asking them to perform actions. 
Every action in Pharo happens through message dispatch.

In Pharo, **everything is an object**, and actions are performed by sending messages to these objects. 
The objects respond by executing corresponding methods (Method with the same name as the message).

---

## Basic Message Dispatch

In Pharo, you send a message to an object using the syntax:
**object message.** for exemple 
``` pharo 
25 + 1
```
object 25 receives the message (+1) with 5 being the argument.

---

## Message with arguments

Some message take arguments. 
- Ex1

``` pharo
  Transcript show: 'Bercy Stephanie'.
  
```
- Expectation: 'Bercy Stephanie' in the Console.
- Reality: at first, nothing displayed as no **message** was dispatched to Transcript to open, when corrected, ``` pharo Transcript open. Transcript show: 'Bercy Stephanie'. ``` as expected Bercy Stephanie was displayed.
- Conclusion: Transcript is the object which shows result in a console, receives the message show: and 'Bercy Stephanie' is the argument passed to message the show: method. Pharo then look for the show: method in the Transcript object.

- Ex2
``` pharo

  | my_even |
my_even := {2. 7. 5. 16. 40} select: [:each | each even].
my_even do: [:each | Transcript show: each asString; cr].


```
Explanation:
- select: This message is used to filter the collection based on a condition.
- The block [:each | each even] checks if each element is even.
- do: is used to iterate over each element of the filtered collection (my_even) and displays each number in the Transcript.
- asString: Converts the number to a string so that it can be displayed by Transcript.
- Expectations: This code will show the even numbers 2, 16, and 40 in the Transcript.
- Conclusion: as expected the numbers 2, 16 and 49 were displayed in Transcript.

---

## Cascading Messages

``` pharo

Transcript
    show: 'Hello'; 
    cr; 
    show: 'Pharo is cooooool!'.
```
here 3 messages are sent to the object Transcript show: cr show: again.
- Expectation: I expected to see 'Hello' on one line and 'pharo is cooool' on another line.
- Reality: the cascading worked as expected, each message was sent to traanscript one after another and both lines were displayed correctly.
- Conclusion: Multiple messages is allowed to be sent to the same object using cascades seperated by semicolin ```pharo ; ```

---
# Using Logical Operators and Conditionals
Conditionals are messages sent to boolean objects. There are the classical ones and the less traditionnal ones. The first ones like  **|** (OR), **&** (AND) which are eager // **or:** **and:** (lazy) , the latter ones conditional constructs like ifTrue:, ifFalse:, ifTrue:ifFalse:, and ifFalse:ifTrue: to control the flow of code.

## | (OR operator)
The Or operator checks if at least one of the conditions is true:
``` pharo
    | age |
age := 17.

(age > 17 | age = 18) ifTrue: [
    Transcript show: 'Suivant votre age vous etes majeur'; cr.
] ifFalse: [
    Transcript show: 'Suivant votre age vous etes mineur'; cr.
].

```
- Expectation: I expected to see the ``` pharo 'Suivant votre age vous etes mineur' ``` displayed in Transcript
- Reality and Conclusion: As expected ``` pharo 'Suivant votre age vous etes mineur' ``` was displayed in transcript.
  
---
## ifTrue: and ifFalse operator
Used to execeute blocks(anonymated methods that can be stored in variables) based on conditions.
ifTrue: Executes the block if the condition is true.
ifFalse: Executes the block if the condition is false.


``` pharo
  | number |
  number := 10
    (number even) ifTrue: [
    Transcript show: 'The number is even'; cr.
] ifFalse: [
    Transcript show: 'The number is odd'; cr.
].

```
---

## ifTrue:ifFalse: operator

This checks a condition and executes one block if it's true and another if it's false: 


``` pharo
    | number |
    number := 10.

(number > 5) ifTrue: [
    Transcript show: 'Number is greater than 5'; cr.
] ifFalse: [
    Transcript show: 'Number is 5 or less'; cr.
].


```

---
## ifFalse:ifTrue: operator
This is the opposite of ifTrue:ifFalse:, where the first block runs if the condition is false:

``` pharo
  | number |
number := 10.

(number > 5) ifFalse: [
    Transcript show: 'Number is 5 or less'; cr.
] ifTrue: [
    Transcript show: 'Number is greater than 5'; cr.
].


```

---

#Incorrect Message Example
``` pharo 

    | number |
number := 42.
Transcript show: number upperCase; cr.

```
  - Expectation: I mistakenly expected that the message upperCase would work with a number (like 42).
  - Reality: I received an error, as upperCase is only applicable to strings, not numbers.
  - Correction: I realized I should only send messages to objects that are appropriate for their type. I can check the class of the object before sending a message:

``` pharo 
  (number isString) ifTrue: [
    Transcript show: number upperCase; cr.
] ifFalse: [
    Transcript show: 'Cannot apply upperCase to a number'; cr.
].
  

```

---
# Key learning points
- Message dispatch is fundamental in Pharo. Everything happens by sending messages to objects.
- Messages can be simple (size, asUppercase, last, next) or more complex with arguments (copyReplaceAll:with, show:'a_message', do:[a_block]).
- Cascading messages allow you to send multiple messages to the same object in a compact form.
- Logical operators and conditionals like ifTrue: ifFalse: ifTue:ifFalse ifFalse:ifTrue: are used for flow control in pharo.
- Not all messages can be sent to all objects. I **must** understand the class of the object and which **messages** it can handle.
- If I'm unsure whether an object can respond to a certain message, using conditional checks like isString, isNumber, or the respondsTo: method is a good       practice.

# How to Correct Assumptions
- By consulting the Pharo available ressources and documentation to better understand which messages can be sent to objects of that class
- By testing small pieces of code and debugging them when unexpected errors occurred.

  ---

  # Conclusion

  Understanding message dispatch is key to mastering Pharo. The possibility to send messages to objects allows flexible, readble and dynamic code. Combining   message dispatch with logical contructs and cascades, one can do a lot.


  All infos and details reported here were found by watching MOOC videos on youtube, reading the pdf slides from https://advanced-design-mooc.pharo.org/#module1  http://files.pharo.org/media/pharoCheatSheet.pdf and code snippets from playgroung.














