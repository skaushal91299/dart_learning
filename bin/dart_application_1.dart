import 'dart:io';

import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main() {
  callMethods();
}

void callMethods() {
  method1();
  method2();
  method3();
}

void method1() {
  print('method 1 completed');
}

void method2() {
  Duration wait = Duration(seconds: 5);
  Future.delayed(wait, () {
    print('Waiting for 5 Seconds');
  });
  print('method 2 completed');
}

void method3() {
  print('method 3 completed');
}
