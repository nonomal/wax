import '../basic/methods.dart';

const _propertyName = "passed";
late bool _passed;

Future<void> initPassed() async {
  _passed = (await methods.loadProperty(k: _propertyName)) == "true";
}

bool currentPassed() {
  return _passed;
}

Future<void> firstPassed() async {
  await methods.saveProperty(k: _propertyName, v: "true");
}
