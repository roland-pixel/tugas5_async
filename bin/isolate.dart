import 'dart:io';
import 'dart:isolate';

Future<void> sayhello(String name) async {
  sleep(Duration(seconds: 2));
  print("helo $name");
  Isolate.exit();
}

void main() {
  Isolate.spawn(sayhello, "Kharis");
  print("done");
}
