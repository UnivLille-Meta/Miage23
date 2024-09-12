# Report Week 1

## CARNEIRO A SANTANA FILHO, André
andre.carneiro-a-santana-filho.etu@univ-lille.fr

**What is a Collection in Pharo?**

A Collection is an object which its main characteristic is the possibility of being iterated, as well as the capacity of storing multiple values at once, like a sequence of objects in which every one is chained to the next. There are some types of collections, namely: Sequencial Collections, which has a well-defined order, from first to last elements; Hashed Collections, which provide a way to access elements through indexing and specific keys, but they are not necessarily sorted by any attribute, and Bag.An example of a collection’s application is to build an Array with the keyword "with", for instance, if I wanted to store values related to grade of students in a certain class, I could write it as:

```pharo
grades := Array with: 16 with: 14 with: 10 with: 12
```
Which gives the variable “grades" the following array
```pharo
#(16, 14, 10, 12)
```
One of the possible ways to iterate this array would be to write the following code for giving one extra point to all students:
```pharo
grades collect: [ :g | g+1 ]
```
Which will generate the following array:
```pharo
#(17 15 11 13)
```

This information could be found in the book “Pharo by Example 5”

**What is a Conditional in Pharo?**

Differently from other programming languages, Pharo does not include control constructs, so its conditionals are actually defined by some built-in methods such as “ifTrue:” and “ifFalse” to deal with results from boolean expressions.

Still sticking to the grades example, let’s say we want to find out which students have had grades better than 14 for this class, we could use a conditional inside the iterator to only print these grades out.

```pharo
grades collect: [ ;g | (g > 14) ifTrue: g]
```
Which returns us the following array:

```pharo
#(17 15 nil nil)
```
Since the two lesser students did not make pass the cut of 14.

This information could be found in the book “Pharo by Example 5”

**Pharo’ Methods and Classes**

Pharo is a very IDE-oriented language, meaning that developing without PharoLauncher - or any other native or specific IDE - could be a pain, so I did start to learn it with PharoLauncher. Creating classes with the launcher is rather simple, as all we need to do is gather a package (or create a new one from scratch) and work on it by creating classes that deal with our goal in each case.

After creating a class, an instance could be created to relate to this class’ behaviors, in this case, we are going to work, still with the grades and students context, and the changes that data under this context may need changes.

Here is the usual new Pharo’s notation for a student class that contains its name and grade:

```pharo
Object << #Student
	slots: { 'grade' };
	package: ‘test_package'
```
This represents a “Student" class, which contains a attribute (in here called slots), called grade.

Creating a method “inscription”, to represent that the student just started taking a course, we can initialize this attribute “grade" without any value for now:
```pharo
inscription
	^ grade
```
Afterwards, imagining the student has already taken the test and has its grade in hands, we can input it into the class by the following method:

```pharo
takeTest: n
	^ grade := n
```
Finally, imagining that we need to check if the student’s grade is over 14 in order to approve him or not, we can build another method, including a conditional:
```pharo
checkPass
	^ (grade > 14) ifTrue: 'Passed' ifFalse: ‘Failed’
```
By using PharoLauncher, we can notice that, in fact, this method raises a warning, due to the impossibility of optimization of this method, as if already includes all possibilities and maybe raises some issues (for instance, what if we do recover tests for students with grades between 10 and 14?) - This is all related to Pharo’s coding guideline and style, which can be learned more about int the book “Pharo with Style”.