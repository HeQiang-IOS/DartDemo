main(List<String> args) {
  var fruit = 'apple';
  switch (fruit) {
    case 'banana':
      print("this is a banana");
      continue anotherFruit;
    anotherFruit:
    case 'apple':
      print("this is an apple");
      break;  
    default:
  }


  void handleOperator() => throw Exception("this operator exception !");

  try {
    handleOperator();
  } on Exception catch (e) {
    print(e);
  } finally {
    print("finally");
  }
}