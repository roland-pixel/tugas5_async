Future<void> hello() {
  return Future.delayed(Duration(seconds: 2), () {
    print("Belajar dart");
  });
}

void main() {
  hello();
  print("Done");
}
