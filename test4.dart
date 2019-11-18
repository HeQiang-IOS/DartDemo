main(List<String> args) {
  var b = getFruit();
  if(b is Apple){
    print("The fruit is an apple");
  } else if (b is Banana){
    print("The fruit is a banana");
  }



  String name;
  String nickName = name ?? 'Nick';
  print("nickName == $nickName");


  name = "Bruce";
  nickName = name ?? "Nick";
  print("nickName == $nickName");
  
}

getFruit() =>Banana(20);


class Banana {
  var weight;
  Banana(this.weight);
}

class Apple {
  var color;
  Apple(this.color);
}

