Stream<String> names() {
  return Stream.fromIterable(["Kharis", "raihan"]);
}

Future<String> fullname() async {
  String name = "";
  await for (String n in names()) {
    name += "$n ";
  }
  return name.trim();
}

void main() {
  fullname().then((value) => print(value));
  print('done');
}
