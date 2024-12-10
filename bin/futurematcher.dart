import 'package:test_api/test_api.dart';
Future<String> getName() async{
  return Future.delayed(Duration(seconds: 2), () => "Kharis Raihan");
}

void main() {
  test("future matcher", () {
    final name = getName();
    expect(name, completion(equals("Kharis Raihan")));
  });
  test("future Test", () async);
}