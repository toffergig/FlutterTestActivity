import "package:flutter_test/flutter_test.dart";
import "package:fluttertestexample/counter.dart";

main(){
  test('Given Counter class, when instantiated, then count = 0', (){
    //ARRANGE
      Counter counter;

    //ACT
    counter = Counter();
    int count = counter.count;

    //ASSERT
    expect(count, 0);
  });

  test('Given Counter class, when increment button pressed, then count = count + 1', () {
    // ARRANGE
    Counter counter = Counter(); //instantiate Counter class

    // ACT
    counter.incrementCount(); // Simulate pressing the increment button
    
    // ASSERT
    expect(counter.count, 1);
  });
  
}