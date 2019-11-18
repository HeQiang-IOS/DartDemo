main(List<String> args) {
  FruitFactory<Banana> f = FruitFactory<Banana>();
  Banana b = f.produceFruit(Banana("a banana"));
  b.log();


  FruitFactory<Apple> f1 = FruitFactory<Apple>();
  Apple a = f1.produceFruit(Apple("an apple"));
  a.log();
  
}

class Apple {
  var desc;
  Apple(this.desc);

  void log(){
    print("${this.desc}");
  }
}

class Banana {
  var desc;
  Banana(this.desc);

  void log(){
    print("${this.desc}");
  }
}

class FruitFactory<T>{
  T produceFruit(T t){
    return t;
  }
}

