main(List<String> args) {
  Tree t = Tree.init();
  print("${t.desc}");  

  Tree t1 = Tree("this is a tree");
  print("${t1.desc}");

  Apple a = Apple();
  // Apple.desc("say hello ");
  a.log();
}

class Tree {
  var desc;
  // 命名构造函数
  Tree.init(){
    desc = "this is a seed";
  }
  // 函数体运行之前初始化实例变量
  // Tree(var des) : desc = des;
  Tree(this.desc);
}

class LogUtil {
  void log(){
    print("this is a log");
  }
}

class Fruit {
  Fruit() {
    print("this is Fruit constructor with on param");
  }

  Fruit.desc(var desc) {
    print("$desc in Fruit");
  }
}


// mixin继承（with）
class Apple extends Fruit with LogUtil{
  Apple() :super() {
    print("this is Apple constructor with on param");
  }
  Apple.desc(var desc){
    print("$desc in Apple");
  }
}
