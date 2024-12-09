import 'dart:async';

void longRunningtask(
    void Function(String) onDone, void Function(Object?) onError) {
  Future.delayed(Duration(seconds: 5))
      .onError((error, StackTrace) => onError(error))
      .then((value) => onDone("task complete"));
}

Future<String> runlongRunningTask() {
  Completer<String> completer = Completer<String>();
  longRunningtask((data) {
    completer.complete(data);
  }, (error) {
    completer.completeError(error!);
  });
  return completer.future;
}

void main() {
  runlongRunningTask().then((value) => print(value));
  print("done");
}
