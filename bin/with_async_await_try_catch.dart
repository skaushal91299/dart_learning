import 'dart:io';

void main() {
  callMethods();
}

void callMethods() async {
  method1();
  String result = await method2();
  method3(result);
}

void method1() {
  print('method 1 completed');
}

Future method2() async {
  try {
    Duration wait3sec = Duration(seconds: 8);
    late String result;
    await Future.delayed(wait3sec, () {
      result = 'data from method 2 ';
    });
    return result;
  } catch (e) {
    print('Error Caught $e');
  }
}

void method3(String data_from_method2) {
  print('method 3 completed, received ${data_from_method2}');
}
