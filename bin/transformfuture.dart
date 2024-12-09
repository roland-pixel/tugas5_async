Future<String> nama() {
  return Future.value("Kharis Raihan");
}

void main() {
  nama()
      .then((value) => value.split(" "))
      .then((value) => value.reversed)
      .then((value) => value.map((e) => e.toUpperCase()))
      .then((value) => print(value));
  print('done');
}
