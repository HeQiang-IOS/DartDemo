

main(List<String> args) {
  // 函数
  /*
  Dart 是一门真正面向对象的语言， 甚至其中的函数也是对象，并且有它的类型 Function 。 这也意味着函数可以被赋值给变量或者作为参数传递给其他函数。 也可以把 Dart 类的实例当做方法来调用。
  */
  enableFlage(bold: true, hidden: false);

  var list2 = [1, 2, 3];
  list2.forEach(printElement);
}
bool isNoble(int atomicNumber) {
  return atomicNumber > 2;
}
isNoble2(int aN){
  return aN > 2;
}

bool isNoble3(int aN) => aN > 2;

// 可选参数
// 可选参数可以是命名参数或者位置参数，但一个参数只能选择其中一种方式修饰
// 命名可选参数 {}, required
void enableFlage({bool bold, bool hidden}){}

// 位置可选参数
// 将参数放到[]中来标记参数是可选的
String say(String from, String msg, [String device]){
  var result ='$from says $msg';
  if(device != null) {
    result = '$result with a $device';
  }
  return result;
}

// 默认参数值
// 在定义方法的时候，可以使用 = 来定义可选参数的默认值。 默认值只能是编译时常量。 如果没有提供默认值，则默认值为 null。

void enableFlags2({bool bold = false, bool hidden = false}){}

void doStuff({List<int> list = const [1, 2, 3], Map<String,String> gifts = const{
  'first': 'paper',
  'second': 'cotton',
  'third': 'leather'
}}){
  print('list:  $list');
  print('gifts: $gifts');
}

// main()函数
// 任何应用都必须有一个顶级 main() 函数，作为应用服务的入口。 main() 函数返回值为空，参数为一个可选的 List<String> 。
// void main() {
//   querySelector('#sample_text_id')
//     ..text = 'Click me!'
//     ..onClick.listen(reverseText);
// }
// 以上代码中的 .. 语法为 级联调用 （cascade）。 使用级联调用， 可以简化在一个对象上执行的多个操作。

// 函数是一等对象
// 一个函数可以作为另一个函数的参数
void printElement(int element){
  print(element);
}

// 匿名函数
/*
多数函数是有名字的， 比如 main() 和 printElement()。 也可以创建没有名字的函数，这种函数被称为 匿名函数， 有时候也被称为 lambda 或者 closure 。 匿名函数可以赋值到一个变量中， 举个例子，在一个集合中可以添加或者删除一个匿名函数。
匿名函数和命名函数看起来类似— 在括号之间可以定义一些参数或可选参数，参数使用逗号分割。
后面大括号中的代码为函数体：
([[Type] param1[, …]]) {
  codeBlock;
};
var list = ['apples', 'bananas', 'oranges'];
list.forEach((item){
  print('${list.indexOf(item)}: $item');
});
如果函数只有一条语句， 可以使用箭头简写。
list.forEach((item)=> print('${list.indexOf(item)}: $item'))
*/

// 词法作用域
// Dart 是一门词法作用域的编程语言，就意味着变量的作用域是固定的， 简单说变量的作用域在编写代码的时候就已经确定了。 花括号内的是变量可见的作用域。

// 词法闭包
// 闭包 即一个函数对象，即使函数对象的调用在它原始作用域之外， 依然能够访问在它词法作用域内的变量。
/*
/// 返回一个函数，返回的函数参数与 [addBy] 相加。
Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

void main() {
  // 创建一个加 2 的函数。
  var add2 = makeAdder(2);

  // 创建一个加 4 的函数。
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}
*/

// 测试函数是否相等
/*
void foo() {} // 顶级函数

class A {
  static void bar() {} // 静态方法
  void baz() {} // 示例方法
}

void main() {
  var x;

  // 比较顶级函数。
  x = foo;
  assert(foo == x);

  // 比较静态方法。
  x = A.bar;
  assert(A.bar == x);

  // 比较实例方法。
  var v = A(); // A的1号实例
  var w = A(); // A的2号实例
  var y = w;
  x = w.baz;

  // 两个闭包引用的同一实例（2号）,
  // 所以它们相等。
  assert(y.baz == x);

  // 两个闭包引用的非同一个实例，
  // 所以它们不相等。
  assert(v.baz != w.baz);
}
*/

// 返回值
// 所有函数都会返回一个值，如果没有明确指定返回值，函数体会被隐私的添加 return null; 语句。