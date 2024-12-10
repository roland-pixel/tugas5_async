import 'package:flutter_test/flutter_test.dart';

Future<String> getName() async {
  return "Kharis Raihan";
}

void main() {
  test("future test", () async {
    final name = await getName();
  });
}
