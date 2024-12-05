Future<String> sayHello(String nama) {
  return Future.error(Exception("UPS"));
}

void main() {
  sayHello("Kharis Raihan")
      .whenComplete(() => print("done future"))
      .then((value) => print(value))
      .catchError((error) => print("Error with message ${error.message}"));
  print("done");
}
