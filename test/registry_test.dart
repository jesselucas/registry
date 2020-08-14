import 'package:flutter_test/flutter_test.dart';

import 'package:registry/registry.dart';

void main() {
  test('put and get in registry', () {
    Registry r = Registry();
    r.put(key: 'string1', value: "a string");
    String string1 = r.get('string1');
    expect(string1, 'a string');

    r.put(key: 'int1', value: 123);
    int int1 = r.get('int1');
    expect(int1, 123);

    SomeCoolClass scc =
        SomeCoolClass(intValue: 1, boolValue: false, strValue: "ice cold");

    r.put(key: 'cold', value: scc);
    SomeCoolClass gotScc = r.get('cold');
    expect(scc, gotScc);
  });
}

class SomeCoolClass {
  int intValue;
  bool boolValue;
  String strValue;

  SomeCoolClass({this.intValue, this.boolValue, this.strValue});
}
