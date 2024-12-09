Future<String> sayhello(String nama) {
  return Future.error(Exception("Ups"));
}

void main() {
  sayhello("kharis Raihan")
      .then((value) => print(value))
      .catchError((error) => print("Error with message ${error.message}"))
      .whenComplete(() => print("All done"));
  print("done");
}
