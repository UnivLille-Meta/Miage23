---Group 13: Week 1 report  

--SOLEIMANI SEPIDEH	PART :
--Collection:
is an object that gathers multiple elements together in order to save or update the data.
Common Collections: OrderedCollection (dynamically changing), Array (fixed size, access), Set (unique data), Dictionary.
It depends on these keys which will help us choose the right one: Sequenceable, Sortable, Indexable, Keyed,Accepts, duplicates and Growable.
Source: Pharo 9 by Example, Stéphane Ducasse and Gordana Rakic with Sebastijan Kaplar and Quentin Ducasse

For example in  order to have a set of arrays which is possible to be modified:
Arr1 := #(1 2 3 4).
OrderedCollection1 := OrderedCollection newFrom: Arr1. 
Now we can access and modify the array’s elements.

--Class and Methods:

I wrote a class with two methods, one gets students passed units and the other returns how much units remain to study.
Here is the github repository link:
https://github.com/sepideh94/C3P_week1

-----------------------------------------------
HAMZAOUI IKRAM LEILA PART :

**Conditionals in Pharo**

1. How do you write conditionals in Pharo?
   In Pharo, instead of using `if` statements like in other languages, we use **message sending**. For example, we can use `ifTrue:` and `ifFalse:` to handle conditions. The condition itself is an object (like `true` or `false`), and we send it a message to decide what code to run.

2. What is different from other programming languages?
 In most languages, like Java or Python, we use a special `if` statement. But in Pharo, the condition is an object, and we send it messages like `ifTrue:` and `ifFalse:`. So, instead of using special syntax for conditionals, Pharo keeps everything object-oriented.

3. The benefits and drawbacks of the approach :
   Benefits: We don’t have to learn new syntax for conditionals; it's just message sending.
   Drawbacks: I think that it is harder to understand at the first time and sometimes it is more complicated compared to other languages.

4. How did you find this information ? I learned this by reading some of the Pharo documentation and MOOC.

**Pharo Basic Coding Style**
1. What rules are common to follow?
In Pharo, code should be easy to read and understand. Some important rules to follow are:
- **Small Methods**: Methods should be short and do one thing only. If a method is too long, it can be hard to understand.
- **Good Names**: Give variables and methods names that explain what they do. For example, `calculateTotal` is better than `doStuff`.

2. Are there tools that show you violations of such rules?
Yes, Pharo has tools to help you follow these rules. One of the most helpful tools is the **Critic Browser**, which can check your code and point out any mistakes or areas that don't follow good style practices.

Here is my tp, i worked on the pdf of chapter one: https://github.com/ikramleilahm/MyCounter





   




