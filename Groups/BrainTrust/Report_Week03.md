AGOUAZI Lynda
In this week's lecture:
  - I have learned about Reverse Engineering with the teacher's explanations and some Google searches.
  - In the practice part, I looked at the LRUCache class to figure out what it does, how it works, and how it is made.
    I encountered some challenges in comprehending certain aspects of the class so I turned to Google for assistance with some Youtube videos.
  - Taking advantage of the extra time available, I revisited the project Artefact in order to enhance my understanding of its details.

CHAMI Nour
THE LECTURE PART : I learned quite a lot about how to dive into a project and explore its different part with what we called Reverse engineering , I also learned about mutation testing and how it can help evaluate the effectiveness of our tests.

THE EXERCICE PART : I tried to explore the LRU cache exercise and follow the steps mentioned.
1/ FIRST LOOK : I learned that an LRU Cache (Least Recently Used Cache) is a cache data structure that stores key-value pairs. It has a maximum capacity and evicts the least recently used items when the capacity is exceeded. 2/ UNDERSTANDING THE LRUcache EXAMPLE :

The example provided, is creating an instance of LRUCache called primeFactorsCache.
It generates 50 random numbers (n) between 1 and 100 and calculates their prime factors using the method primeFactors.
The at:ifAbsentPut: method is used to access the cache. If a value for the random number n is not found in the cache, it calculates the prime factors and stores the result in the cache. 3/ A little bit deeper ! The package has an abstract class that contains the main method “at:ifAbsentPut:”
There are 16 implementers of this method and 407 senders including 22 calls from the LRUcache class (tests) so the senders of at:ifAbsentPut: are not relevant to the LRUCache class , there are unrelated method calls with the same name.
This method is responsible for accessing and managing the cache, distinguishing between cache hits and misses, and ensuring thread safety ( refer to this with critical:, where a process or thread can access a shared resource, without interference from other processes or threads ).
The eviction happens within the handleMiss method , (I checked the senders of the method evict and found the method addweight ,with is called by the method HandleMiss)
I runned the tests, they worked fine. I also tried to read inside some methods to understand the syntax more.
