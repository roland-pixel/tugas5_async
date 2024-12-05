Future<String> sayHello(String nama) {
  return Future.delayed(Duration(seconds: 2), () {
    return "Hello $nama";
  });
}

void main() {
  sayHello("Kharis Raihan").then((value) => print(value));
  print("done");
}
