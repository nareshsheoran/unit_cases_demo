import 'package:flutter_test/flutter_test.dart';
import 'package:unit_cases_demo/utils/counter.dart';

void main() {
  group("counter data", () {
    test("check initial value of counter as zero", () {
      Counter counter = Counter();
      expect(counter.getCount(), 0);
    });

    test("check counter value of after increment", () {
      Counter counter = Counter();
      counter.increment();
      expect(counter.getCount(), 1);
    });

    test("check counter value of after decrement", () {
      Counter counter = Counter();
      counter.decrement();
      expect(counter.getCount(), -1);
    });

    test("check counter value after clear", () {
      Counter counter = Counter();
      counter.clear();
      expect(counter.getCount(), 0);
    });

    test("check counter value after increment or decrement", () {
      Counter counter = Counter();
      counter.decrement();
      counter.increment();
      counter.increment();
      counter.decrement();
      expect(counter.getCount(), 0);
    });
  });
}
