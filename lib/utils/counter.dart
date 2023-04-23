class Counter {
  int _count = 0;

  getCount()=>_count;

  void decrement() {
    _count--;
  }

  void increment() {
    _count++;
  }

  void clear() {
    _count = 0;
  }

}
