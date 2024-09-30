# Report Week 4 - Group 09
You can find all of our related changes under [this fork repo](https://github.com/mrdedede/Chess).

## André FILHO

Our tasks for this week were rather simple, basically we should run mutation tests under our Chess tests, which was not complicated to run, so I actually took a few steps before and after running it, here we can find the steps taken:

1. Get the test coverage so far
2. Get the mutation score for our tests so far
3. Analyse the results of the mutation tests
4. Implement new tests based on the mutation results
5. Run test coverage and mutation score analysis

### Test Coverage

After running the test coverage analysis with Dr. Test in Pharo's Browser, we got some interesting results:
- 53.69% of Coverage for our test suite
- 69 uncovered methods
- 9 partially covered methods

This analysis has shown us that some further work on coverage is needed, especially for tests on methods that are not covered for now.

### Get mutation test analysis / score

Taking the following approach:
```smalltalk
testCases := { MyKingTest. MyRookTests. MyBishopTests }.
classesToMutate := { MyKing. MyRook. MyBishop }.

analysis := MTAnalysis new
    testClasses: testCases;
    classesToMutate: classesToMutate.

analysis run.
analysis generalResult mutationScore.
```

We got 61% for our mutation score under this analysis, which is not a bad result per se, but indicates that there are indeed some tests we'd need to do to increase our coverage and test suit in general, before proceeding to implement more features.

### Analyse the results
With 83 surviving mutants and 139 killed mutants, besides the need of creating more test cases, when focusing more on the task at hand - making only the possible moves available at hand - I decided to have a look on some specific cases that are somewhat related to this functionality.

Especially the following ones:
```smalltalk
1. Replace #and with false in MyKing>>#isCheckMated
2. Replace #or with true in MyKing>>#targetSquaresLegal:
3. Remove ^ in  MyKing>>#isCheckMated
4. Replace #and with #or in MyKing>>#targetSquaresLegal
5. Replace #and with #or in MyKing>>#isCheckMated
6. Nullify the arguments of MyKing>>#targetSquaresLegal
```

After a brief look at the web for some references for what reference should we get when comparing Coverage and Mutation Ratio and how it relates to test quality. I've found [an article](https://arxiv.org/pdf/2309.02395) that promotes the view that, acutally a good indicator for test quality is the difference between both of these metrics, which still made me promptly think about ways in which we could close this gap, whilst trying to increase both of them simultaneosly - the most obvious answer for me, as to where we stand at this point, was the planning of further tests.

### Test Implementation

You can find the results of the implemented tests at [our fork for Chess](https://github.com/mrdedede/Chess).
To put it briefly, we...

### Test Coverage / Mutation Analysis