import 'dart:async';

void longrunningstream(void Function(String) onNext,
    void Function(Error?) onError, void Function() onDone) {
  var listen = Stream.periodic(Duration(seconds: 1)).take(10).listen((event) {
    onNext("Kharis");
  });

  listen.onError((error) => onError(error));
  listen.onDone(() => onDone);
}

Stream<String> runLongRunningStream() {
  StreamController<String> streamController = StreamController<String>();

  longrunningstream((event) {
    streamController.add(event);
  }, (error) {
    streamController.addError(error!);
  }, () {
    streamController.close();
  });
  return streamController.stream;
}

void main() {
  runLongRunningStream().listen((event) {
    print(event);
  });
  print('done');
}
