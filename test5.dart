main(List<String> args) {
  Banana(20, 'yellow')..showWeight()..showColor();  
}

class Banana {
  var weight;
  var color;
  Banana(this.weight, this.color);

  void showWeight(){
    print("weight = $weight");
  }

  void showColor(){
    print("color = $color");
  }

}