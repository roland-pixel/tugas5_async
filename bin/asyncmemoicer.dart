import 'package:async/async.dart';

Future<String> getData() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    return 'get data';
  });
}

void main() async {
  final asyncMemorizer = AsyncMemoizer<String>();
  final Result1 = await asyncMemorizer.runOnce(() => getData());
  print(Result1);
  final result2 = await asyncMemorizer.runOnce(() => getData());
  print(result2);
}
