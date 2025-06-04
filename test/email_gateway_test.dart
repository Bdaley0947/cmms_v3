import 'package:flutter_test/flutter_test.dart';

class EmailGateway {
  void send() {}
}

void main() {
  test('Basic test', () {
    final gateway = EmailGateway();
    gateway.send();
    expect(true, true);
  });
}
