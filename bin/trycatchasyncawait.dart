Future<String> firstname() async {
  return "Kharis";
}

Future<String> lastname() async {
  return "Raihan";
}

Future<String> sayhello(String nama) async {
  return "hello $nama";
}

Future<void> say() async {
  try {
    var first = await firstname();
    var last = await lastname();
    var hello = await sayhello("$first $last");
    print(hello);
  } catch (e) {
    print(e);
  } finally {
    print('done say');
  }
}
