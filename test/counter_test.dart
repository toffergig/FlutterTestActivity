import "package:flutter_test/flutter_test.dart";
import "package:fluttertestexample/counter.dart";

main(){

  group('Counter class:', () { 
  late Counter counter;
  setUp(() => counter = Counter());

  test('Given Counter class, when instantiated, then count = 0', (){
    //ARRANGE


    //ACT
    int count = counter.count;

    //ASSERT
    expect(count, 0);
  });

  test('Given Counter class is instantiated, when incrementCount is called, then count =  1', () {
    // ARRANGE

    // ACT
    counter.incrementCount(); // Simulate pressing the increment button
    
    // ASSERT
    expect(counter.count, 1);
  });

    test('Given Counter class is instantiated, when decrementCount is called, then count = 0', () {
      

      counter.decrementCount();

      expect(counter.count, 0);

    });

    test('Given Counter class is instantiated, when incrementCount is called and resetCount is called, then count = 0', () {

      counter.incrementCount();
      counter.resetCount();
      expect(counter.count, 0);

    });


    test('Given Counter class is instantiated, when incrementCount is called 4 times, then count increase to 1, 3, 6 and 10', () {

      counter.incrementCount();
      expect(counter.count, 1);
      
      counter.incrementCount();
      expect(counter.count, 3);

      counter.incrementCount();
      expect(counter.count, 6);

      counter.incrementCount();
      expect(counter.count, 10);
    });


    });
  
}