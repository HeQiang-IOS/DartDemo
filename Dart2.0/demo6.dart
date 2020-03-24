// 类
/*
Dart 是一种基于类和 mixin 继承机制的面向对象的语言。 
每个对象都是一个类的实例，所有的类都继承于 Object. 。 
基于 * Mixin 继承* 意味着每个类（除 Object 外） 都只有一个超类， 
一个类中的代码可以在其他多个继承类中重复使用。
*/

/*
使用类的成员变量
对象的由函数和数据（即方法和实例变量）组成。 方法的调用要通过对象来完成： 调用的方法可以访问其对象的其他函数和数据。
使用 (.) 来引用实例对象的变量和方法：
var p = Point(2, 2);
p.y = 3
使用 ?. 来代替 . ， 可以避免因为左边对象可能为 null ， 导致的异常：
p?.y = 4;
*/

/*
使用构造函数
通过 构造函数 创建对象。 构造函数的名字可以是 ClassName 或者 ClassName.identifier。

var p1 = Point(2, 2);
var p2 = Point.fromJson({'x': 1, 'y': 2});

一些类提供了常量构造函数。 使用常量构造函数，在构造函数名之前加 const 关键字，来创建编译时常量时：
var p = const ImmutablePoint(2, 2);
构造两个相同的编译时常量会产生一个唯一的， 标准的实例：

var a = const ImmutablePoint(1, 1);
var b = const ImmutablePoint(1, 1);

assert(identical(a, b)); // 它们是同一个实例。


在 常量上下文 中， 构造函数或者字面量前的 const 可以省略。 例如，下面代码创建了一个 const 类型的 map 对象：

// 这里有很多的 const 关键字。
const pointAndLine = const {
  'point': const [const ImmutablePoint(0, 0)],
  'line': const [const ImmutablePoint(1, 10), const ImmutablePoint(-2, 11)],
};
保留第一个 const 关键字，其余的全部省略：

// 仅有一个 const ，由该 const 建立常量上下文。
const pointAndLine = {
  'point': [ImmutablePoint(0, 0)],
  'line': [ImmutablePoint(1, 10), ImmutablePoint(-2, 11)],
};
如果常量构造函数在常量上下文之外， 且省略了 const 关键字， 此时创建的对象是非常量对象：

var a = const ImmutablePoint(1, 1); // 创建一个常量对象
var b = ImmutablePoint(1, 1); // 创建一个非常量对象

assert(!identical(a, b)); // 两者不是同一个实例!

*/

/*
获取对象的类型
使用对象的 runtimeType 属性， 可以在运行时获取对象的类型， runtimeType 属性回返回一个 Type 对象。

print('The type of a is ${a.runtimeType}');
*/

/*
实例变量
class Point {
  num x; // 声明示例变量 x，初始值为 null 。
  num y; // 声明示例变量 y，初始值为 null 。
  num z = 0; // 声明示例变量 z，初始值为 0 。
}

所有实例变量都生成隐式 getter 方法。 非 final 的实例变量同样会生成隐式 setter 方法。
*/

/*
构造函数
通过创建一个与其类同名的函数来声明构造函数 （另外，还可以附加一个额外的可选标识符，如 命名构造函数 中所述）。 下面通过最常见的构造函数形式， 即生成构造函数， 创建一个类的实例：

class Point {
  num x, y;

  Point(num x, num y) {
    // 还有更好的方式来实现下面代码，敬请关注。
    this.x = x;
    this.y = y;
  }
}
使用 this 关键字引用当前实例。

提示： 近当存在命名冲突时，使用 this 关键字。 否则，按照 Dart 风格应该省略 this 。

通常模式下，会将构造函数传入的参数的值赋值给对应的实例变量， Dart 自身的语法糖精简了这些代码：

class Point {
  num x, y;

  // 在构造函数体执行前，
  // 语法糖已经设置了变量 x 和 y。
  Point(this.x, this.y);
}

默认构造函数
构造函数不被继承 子类不会继承父类的构造函数。 子类不声明构造函数，那么它就只有默认构造函数 (匿名，没有参数) 。
命名构造函数

调用父类非默认构造函数
默认情况下，子类的构造函数会自动调用父类的默认构造函数（匿名，无参数）。 父类的构造函数在子类构造函数体开始执行的位置被调用。 如果提供了一个 initializer list （初始化参数列表）， 则初始化参数列表在父类构造函数执行之前执行。 总之，执行顺序如下：

initializer list （初始化参数列表）
superclass’s no-arg constructor （父类的无名构造函数）
main class’s no-arg constructor （主类的无名构造函数）
如果父类中没有匿名无参的构造函数， 则需要手工调用父类的其他构造函数。 在当前构造函数冒号 (:) 之后，函数体之前，声明调用父类构造函数。
class Person {
  String firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson(data).
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}
由于父类的构造函数参数在构造函数执行之前执行， 所以参数可以是一个表达式或者一个方法调用：

class Employee extends Person {
  Employee() : super.fromJson(getDefaultData());
  // ···
}
警告： 调用父类构造函数的参数无法访问 this 。 例如，参数可以为静态函数但是不能是实例函数。


初始化列表
除了调用超类构造函数之外， 还可以在构造函数体执行之前初始化实例变量。 各参数的初始化用逗号分隔。

// 在构造函数体执行之前，
// 通过初始列表设置实例变量。
Point.fromJson(Map<String, num> json)
    : x = json['x'],
      y = json['y'] {
  print('In Point.fromJson(): ($x, $y)');
}


重定向构造函数
有时构造函数的唯一目的是重定向到同一个类中的另一个构造函数。 重定向构造函数的函数体为空， 构造函数的调用在冒号 (:) 之后。

class Point {
  num x, y;

  // 类的主构造函数。
  Point(this.x, this.y);

  // 指向主构造函数
  Point.alongXAxis(num x) : this(x, 0);
}


常量构造函数
如果该类生成的对象是固定不变的， 那么就可以把这些对象定义为编译时常量。 为此，需要定义一个 const 构造函数， 并且声明所有实例变量为 final。

class ImmutablePoint {
  static final ImmutablePoint origin =
      const ImmutablePoint(0, 0);

  final num x, y;

  const ImmutablePoint(this.x, this.y);
}

工厂构造函数
当执行构造函数并不总是创建这个类的一个新实例时，则使用 factory 关键字。 例如，一个工厂构造函数可能会返回一个 cache 中的实例， 或者可能返回一个子类的实例。
class Logger {
  final String name;
  bool mute = false;

  // 从命名的 _ 可以知，
  // _cache 是私有属性。
  static final Map<String, Logger> _cache =
      <String, Logger>{};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}

工厂构造函数无法访问 this。
*/


/*
方法
方法是为对象提供行为的函数

实例方法
Getter 和 Setter
抽象方法
实例方法， getter， 和 setter 方法可以是抽象的， 只定义接口不进行实现，而是留给其他类去实现。 抽象方法只存在于 抽象类 中。

定义一个抽象函数，使用分号 (;) 来代替函数体：

abstract class Doer {
  // 定义实例变量和方法 ...

  void doSomething(); // 定义一个抽象方法。
}

class EffectiveDoer extends Doer {
  void doSomething() {
    // 提供方法实现，所以这里的方法就不是抽象方法了...
  }
}
*/

/*
抽象类
使用abstract修饰符来定义 抽象类 — 抽象类不能实例化。 抽象类通常用来定义接口，以及部分实现。 如果希望抽象类能够被实例化，那么可以通过定义一个 工厂构造函数 来实现。
// 这个类被定义为抽象类，
// 所以不能被实例化。
abstract class AbstractContainer {
  // 定义构造行数，字段，方法...

  void updateChildren(); // 抽象方法。
}
*/

/*
隐式接口
每个类都隐式的定义了一个接口，接口包含了该类所有的实例成员及其实现的接口。 如果要创建一个 A 类，A 要支持 B 类的 API ，但是不需要继承 B 的实现， 那么可以通过 A 实现 B 的接口。
一个类可以通过 implements 关键字来实现一个或者多个接口， 并实现每个接口要求的 API

// person 类。 隐式接口里面包含了 greet() 方法声明。
class Person {
  // 包含在接口里，但只在当前库中可见。
  final _name;

  // 不包含在接口里，因为这是一个构造函数。
  Person(this._name);

  // 包含在接口里。
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// person 接口的实现。
class Impostor implements Person {
  get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));
}
*/

/*
扩展类（继承）
使用 extends 关键字来创建子类， 使用 super 关键字来引用父类：
class Television {
  void turnOn() {
    _illuminateDisplay();
    _activateIrSensor();
  }
  // ···
}

class SmartTelevision extends Television {
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _initializeMemory();
    _upgradeApps();
  }
  // ···
}


重写类成员
子类可以重写实例方法，getter 和 setter。 可以使用 @override 注解指出想要重写的成员：
class SmartTelevision extends Television {
  @override
  void turnOn() {...}
  // ···
}


重写运算符
class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  // 运算符 == 和 hashCode 部分没有列出。 有关详情，请参考下面的注释。
  // ···
}

void main() {
  final v = Vector(2, 3);
  final w = Vector(2, 2);

  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));
}
如果要重写 == 操作符，需要重写对象的 hashCode getter 方法。 重写 == 和 hashCode 的实例


noSuchMethod()
当代码尝试使用不存在的方法或实例变量时， 通过重写 noSuchMethod() 方法，来实现检测和应对处理：

class A {
  // 如果不重写 noSuchMethod，访问
  // 不存在的实例变量时会导致 NoSuchMethodError 错误。
  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: ' +
        '${invocation.memberName}');
  }
}
除非符合下面的任意一项条件， 否则没有实现的方法不能够被调用：

receiver 具有 dynamic 的静态类型 。

receiver 具有静态类型，用于定义为实现的方法 (可以是抽象的), 并且 receiver 的动态类型具有 noSuchMethod() 的实现， 该实现与 Object 类中的实现不同。
*/


/*
枚举类型
枚举类型也称为 enumerations 或 enums ， 是一种特殊的类，用于表示数量固定的常量值。

使用枚举
使用enum 关键字定义一个枚举类型
enum Color {red, green, blue}
枚举中的每个值都有一个 index getter 方法， 该方法返回值所在枚举类型定义中的位置（从 0 开始）。 例如，第一个枚举值的索引是 0 ， 第二个枚举值的索引是 1。

使用枚举的 values 常量， 获取所有枚举值列表（ list ）。
List<Color> colors = Color.values;
assert(colors[2] == Color.blue);

可以在 switch 语句 中使用枚举， 如果不处理所有枚举值，会收到警告：

var aColor = Color.blue;

switch (aColor) {
  case Color.red:
    print('Red as roses!');
    break;
  case Color.green:
    print('Green as grass!');
    break;
  default: // 没有这个，会看到一个警告。
    print(aColor); // 'Color.blue'
}

枚举类型具有以下限制：
枚举不能被子类化，混合或实现。
枚举不能被显式实例化。
*/

/*
为类添加功能 Mixin
Mixin 是复用类代码的一种途径， 复用的类可以在不同层级，之间可以不存在继承关系。

通过 with 后面跟一个或多个混入的名称，来 使用 Mixin ， 下面的示例演示了两个使用 Mixin 的类：

class Musician extends Performer with Musical {
  // ···
}

class Maestro extends Person
    with Musical, Aggressive, Demented {
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }
}


通过创建一个继承自 Object 且没有构造函数的类，来 实现 一个 Mixin 。 如果 Mixin 不希望作为常规类被使用，使用关键字 mixin 替换 class 。 例如：

mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}
指定只有某些类型可以使用的 Mixin - 比如， Mixin 可以调用 Mixin 自身没有定义的方法 - 使用 on 来指定可以使用 Mixin 的父类类型：

mixin MusicalPerformer on Musician {
  // ···
}

*/

/*
类变量和方法
使用static 关键字实现类范围的变量和方法。

静态变量
静态变量（类变量）对于类级别的状态是非常有用的：

class Queue {
  static const initialCapacity = 16;
  // ···
}

void main() {
  assert(Queue.initialCapacity == 16);
}
静态变量只到它们被使用的时候才会初始化。


静态方法
静态方法（类方法）不能在实例上使用，因此它们不能访问 this 。 例如：
import 'dart:math';

class Point {
  num x, y;
  Point(this.x, this.y);

  static num distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  var a = Point(2, 2);
  var b = Point(4, 4);
  var distance = Point.distanceBetween(a, b);
  assert(2.8 < distance && distance < 2.9);
  print(distance);
}

静态函数可以当做编译时常量使用。 例如，可以将静态方法作为参数传递给常量构造函数。


*/