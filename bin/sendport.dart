import 'dart:io';
import 'dart:isolate';

Future<void> numbers(SendPort sendPort) async {
  for (var i = 0; i < 10; i++) {
    sleep(Duration(seconds: 2));
    sendPort.send(i);
  }
  Isolate.exit();
}
