// 运算符
main(List<String> args) {
  // 算术运算符
  // 关系运算符
  // 类型判定运算符 as is is!
  /*
  if (emp is Person) {
  // Type check
  emp.firstName = 'Bob';
}
(emp as Person).firstName = 'Bob';
以上代码并不是等价的。 如果 emp 为 null 或者不是 Person 对象， 那么第一个 is 的示例，后面将不回执行； 第二个 as 的示例会抛出异常。
  */

  // 赋值运算符 =  ??=
  /* 将值赋值给变量a
     a = value;
     如果b为空时，将变量赋值给b，否则，b的值保持不变。
     b ??= value;
*/

// 逻辑运算符
// 按位和移动运算符
// 条件表达式 condition ？ expr1  : expr2


// 级联运算符（..）
/*
级联运算符（..）可以实现对同一对象进行一系列的操作。 除了调用函数， 还可以访问一对象上的字段属性。
这通常可以节省创建临时变量的步骤， 同时编写出更流畅的代码

querySelector('#confirm') // 获取对象。
  ..text = 'Confirm' // 调用成员变量。
  ..classes.add('important')
  ..onClick.listen((e) => window.alert('Confirmed!'));
等价于
var button = querySelector('#confirm');
button.text = 'Confirm';
button.classes.add('important');
button.onClick.listen((e) => window.alert('Confirmed!'));

提示： 严格的来讲， “两个点” 的级联语法不是一个运算符。 它只是一个 Dart 的特殊语法。
*/
}