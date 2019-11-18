
main(List<String> args) {
  showDesc("122", println);

  showDesc("12222", (name){
    print("name == $name");
  });

  showDesc2("3333");
}
void showDesc2(var name){

  void println(var name){
    print('name122 = $name');
  }

  println(name);
}
void println(String name){
  print("name = $name");
}

void showDesc(var name, Function log){
  log(name);
}


