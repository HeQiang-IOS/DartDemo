import 'dart:mirrors';

class Person{
  static const desc = "This a Person class";
  final name;
  Person(this.name);
}

String getName(){
  return 'Bruce';
}

String getName2() => 'Bruce';

void showDesc({var name, var age}) {
  if (name != null) {
    print("name = $name");
  }
  if(age != null){
    print("age = $age");
  }
}

void showDesc2(var name, [var age]){
  print("name = $name");
  if(age != null){
    print("age = $age");
  }
}

void showDesc3(var name, [var age = 18]){
  print("name = $name");
  print("age = $age");
}

main() {
   
   showDesc(name: "Bruce");
   showDesc2("xiaom", 18);

   showDesc3("xm");

   Person p = Person("Bruce");
   print("p.name = ${p.name}");
  //  p.name = "hehe";

  var name = 'hi'; 
  var age = 18;
  var high = 1.70;

  String name1 = 'bruce';
  int age1 = 18;
  
  dynamic value = 18;
  print("value = $value");
  value = 'bruce';
  print("value = $value");
  value = 3.5;
  print("value = $value");

  Object val = 18;
  print("val = $val");
  val = 'bruce';
  print("val = $val");
  val = 3.5;
  print("val = $val");


  int value1;
  print("value1 = $value1");
  bool value2;
  print("value2 = $value2");
  var value3;
  print("value3 = $value3");
  dynamic value4;
  print("value4 = $value4");


  print("=============");
  String str1 = 'hello';
  print("str1 == $str1");
  String str2 = """test1.dart
  This is Xiaoming
  """;
  print("str2 = $str2");

  List arr = ['Bruce', 'Nick', 'John'];
  print("arr = $arr");

  Map map = {
    'name':'Bruce',
    'age':18,
    'high':1.70
  };

  print("map = $map");
  print("map['name'] = ${map['name']}");


  var map1 = {
    1: 'hi',
    2: 'hello',
    3: 'yep'
  };

  print("map1 = $map1");
  print(map1[1]);

  String smile = '\u{1f600}';
  print("微笑: $smile");

  Runes input = new Runes('\u2665 \u{1f605}');

  print(String.fromCharCodes(input));


}