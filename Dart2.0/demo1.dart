// 定义一个函数

printInteger(int aNumber){
  print('The number is $aNumber');
}

main(List<String> args) {
  var number = 42;
  printInteger(number);
  

// 1、变量
var  name = 'Bob';
dynamic name2 = 'Bob';
String name3 = 'Bob';
// 默认值 未初始化的默认值是null
// 即使变量是数字类型默认值也是null
int lineCount;
// assert(lineCount == null);

// Final 和 Const
/*
Final 变量的值只能被设置一次； 
Const 变量在编译时就已经固定 
(Const 变量 是隐式 Final 的类型.) 
最高级 final 变量或类变量在第一次使用时被初始化。

实例变量可以是 final 类型但不能是 const 类型。 
必须在构造函数体执行之前初始化 final 实例变量 —— 在变量声明中，
参数构造函数中或构造函数的初始化列表中进行初始化。

如果 Const 变量是类级别的，需要标记为 static const。
*/

final name4 = 'Bob';
final String nickname = 'Bobby';

const bar = 1000000;
const double atm = 1.01325 * bar;

var foo = const [];
final bar2 = const [];
const baz = []; // Equivalent to `const []`
// 非 Final ， 非 const 的变量是可以被修改的，即使这些变量 曾经引用过 const 值。
foo = [1, 2, 3];

// 2 内建类型
/*
Number
   int、double
String
Boolean
   true false
List
Map

Set

Rune
   Rune 用来表示字符串中的 UTF-32 编码字符。
Symbol
*/
var x = 1;
var hex = 0xDEADBEEF;

var y = 1.1;
double z = 1;

var one = int.parse('1');
String oneAsString = 1.toString();

var s1 = 'Single ddddd';
var s2 = '${s1} ddddd';
var s3 = '''dome.dart
ddddd
''';
var s4 = r"In a raw string, even \n isn't special.";


const aConstNum = 0;
const aConstBool = true;
const aConstString = 'a constant string';

// 非 const 类型数据
var aNum = 0;
var aBool = true;
var aString = 'a string';
const aConstList = [1, 2, 3];

const validConstString = '$aConstNum $aConstBool $aConstString'; //const 类型数据
// const invalidConstString = '$aNum $aBool $aString $aConstList'; //非 const 类型数据
var list = [1,2, 3];
 list[1] = 1;

var constantList = const [1, 3, 4];
// constantList[1] = 1;

var halogens = {'fluorine','chlorine', 'bromine', 'iodine', 'astatine'};

var names = <String>{};
Set<String> names2 = {};
var names3 = {}; // 这样会创建一个Map， 而不是Set；
/*
是 Set 还是 Map ？ Map 字面量语法同 Set 字面量语法非常相似。 因为先有的 Map 字母量语法，所以 {} 默认是 Map 类型。   如果忘记在 {} 上注释类型或赋值到一个未声明类型的变量上，   那么 Dart 会创建一个类型为 Map<dynamic, dynamic> 的对象。
*/
var elements = <String>{};
elements.add("fluorine");
elements.addAll(halogens);
// 常量
final constantSet = const {
  'fluorine',
  'chlorine',
  'bromine',
  'iodine',
  'astatine',
};


var gifts = {
'first': 'pratridge'
};
var nobleGases = {
  1: 'helium'
};

var setsss = Set();

var giftsa = Map();
gifts['first'] = 'partridge';
// 这里为什么只有 Map() ，而不是使用 new Map()。 因为在 Dart 2 中，new 关键字是可选的。 有关更多信息，参考 构造函数的使用。

final constantMap = const {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

}