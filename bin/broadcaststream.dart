Stream<int> numbers() {
  return Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
}

void main() {
  Stream<int> numberStream = numbers();
  Stream<int> broadcastStream = numberStream.asBroadcastStream();
  broadcastStream.listen((event) {
    print(event);
  });
  broadcastStream.listen((event) {
    print(event);
  });
  print('done');
}
