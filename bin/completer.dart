void longRunningtask(
    void Function(String) onDone, void Function(Object?) onError) {
  Future.delayed(Duration(seconds: 5))
      .onError((error, StackTrace) => onError(error))
      .then((value) => onDone("task complete"));
}
