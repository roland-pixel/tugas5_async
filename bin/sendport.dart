import 'dart:io';
import 'dart:isolate';

Future<void> numbers(SendPort sendPort) async {
  for (var i = 0; i < 10; i++) {
    sleep(Duration(seconds: 2));
    sendPort.send(i);
  }
  Isolate.exit();
}

void main() {
  final receivePort = ReceivePort();
  Isolate.spawn(numbers, receivePort.sendPort);
  receivePort.take(5).listen((event) {
    print(event);
  });
  print('done');
}
