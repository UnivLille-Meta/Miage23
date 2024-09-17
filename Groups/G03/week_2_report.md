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

```smalltalk
object message.
