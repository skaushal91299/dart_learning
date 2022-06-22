void main() {
  callMethods();
}

//note: that method 3 get data from the result of method 2, but method 3 get executed before method 2 return the result, due to which null get printed
void callMethods() {
  method1();
  String result = method2();
  method3(result);
}

void method1() {
  print('method 1 completed');
}

String method2() {
  late String result;
  Duration wait3sec = Duration(
    seconds: 10,
  );
  Future.delayed(wait3sec, () {
    result = 'data from method 2 ';
    return result;
  });

  return result;
}

void method3(String data_from_method2) {
  print('method 3 completed, received ${data_from_method2}');
}
