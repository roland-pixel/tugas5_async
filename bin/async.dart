Future<String> sayhello(String nama) async {
  return "hello $nama";
}

void main() {
  sayhello("World").then((String message) {
    print(message);
  });
  print('done');
}
