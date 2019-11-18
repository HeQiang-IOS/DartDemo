main(List<String> args) {
  Person p;
  var name = p?.name;
  print(name);

  var num =10;
  var result = num ~/3; // 得出一个小于等于num/3的最大整数
  print(result);

  // as 作为类型转化
  dynamic b = Banana(20);
  (b as Banana).weight = 20;

  print("b.weight = ${(b as Banana).weight}");

  (b as Apple).weight = 30;
  print((b as Apple).weight);

}

class Banana {
  var weight;
  Banana(this.weight);
}

class Apple {
  var weight;
  Apple(this.weight);
}

class Person {
  var name;
  Person(this.name);
}
