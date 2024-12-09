Future<String> firstname() async {
  return "Kharis";
}

Future<String> lastname() async {
  return "Raihan";
}

Future<String> sayhello(String nama) async {
  return "hello $nama";
}

void main() {
  firstname().then((firstname) {
    return lastname().then((lastname) {
      var fullname = "$firstname $lastname";
      return sayhello(fullname);
    });
  }).then((response) => print(response));
}
