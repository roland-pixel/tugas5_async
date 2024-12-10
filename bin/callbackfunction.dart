void longrunningstream(void Function(String) onNext,
    void Function(Error?) onError, void Function() onDone) {
  var listen = Stream.periodic(Duration(seconds: 1)).take(10).listen((event) {
    onNext("Kharis");
  });

  listen.onError((error) => onError(error));
  listen.onDone(() => onDone);
}
