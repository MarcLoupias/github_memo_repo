
#### mock vs spy

[mocking vs spying] (http://stackoverflow.com/questions/12827580/mocking-vs-spying-in-mocking-frameworks)

#### glossary

[TestDouble : martinfowler.com] (http://martinfowler.com/bliki/TestDouble.html) :

**Test Double** is a generic term for any case where you replace a production object for testing purposes. There are various kinds of double that Gerard lists:

- **Dummy objects** are passed around but never actually used. Usually they are just used to fill parameter lists.
- **Fake objects** actually have working implementations, but usually take some shortcut which makes them not suitable for production (an InMemoryTestDatabase is a good example).
- **Stubs** provide canned answers to calls made during the test, usually not responding at all to anything outside what's programmed in for the test.
- **Spies** are stubs that also record some information based on how they were called. One form of this might be an email service that records how many messages it was sent.
- **Mocks** are pre-programmed with expectations which form a specification of the calls they are expected to receive. They can throw an exception if they receive a call they don't expect and are checked during verification to ensure they got all the calls they were expecting.
