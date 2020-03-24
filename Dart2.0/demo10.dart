// 生成器
/*
当您需要延迟生成( lazily produce )一系列值时， 可以考虑使用_生成器函数_。 Dart 内置支持两种生成器函数：

Synchronous 生成器： 返回一个 Iterable 对象。
Asynchronous 生成器： 返回一个 Stream 对象。
通过在函数体标记 sync*， 可以实现一个同步生成器函数。 使用 yield 语句来传递值：

Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}
通过在函数体标记 async*， 可以实现一个异步生成器函数。 使用 yield 语句来传递值：

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}
如果生成器是递归的，可以使用 yield* 来提高其性能：

Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}

*/


/*
可调用类
通过实现类的 call() 方法， 能够让类像函数一样被调用。

在下面的示例中，WannabeFunction 类定义了一个 call() 函数， 函数接受三个字符串参数，函数体将三个字符串拼接，字符串间用空格分割，并在结尾附加了一个感叹号。

class WannabeFunction {
  call(String a, String b, String c) => '$a $b $c!';
}

main() {
  var wf = new WannabeFunction();
  var out = wf("Hi","there,","gang");
  print('$out');
}

*/


/*
Isolates
大多数计算机中，甚至在移动平台上，都在使用多核CPU。 为了有效利用多核性能，开发者一般使用共享内存数据来保证多线程的正确执行。 然而， 多线程共享数据通常会导致很多潜在的问题，并导致代码运行出错。

所有 Dart 代码都在隔离区（ isolates ）内运行，而不是线程。 每个隔离区都有自己的内存堆，确保每个隔离区的状态都不会被其他隔离区访问。

*/

/*
Typedefs

在 Dart 中，函数也是对象，就想字符和数字对象一样。 
使用 typedef ，或者 function-type alias 为函数起一个别名， 
别名可以用来声明字段及返回值类型。 
当函数类型分配给变量时，typedef会保留类型信息。

*/

/*
元数据
使用元数据可以提供有关代码的其他信息。 元数据注释以字符 @ 开头， 后跟对编译时常量 (如 deprecated) 的引用或对常量构造函数的调用

对于所有 Dart 代码有两种可用注解：@deprecated 和 @override。 关于 @override 的使用， 参考 扩展类（继承）。 下面是使用 @deprecated 注解的示例：

class Television {
  /// _Deprecated: Use [turnOn] instead._
  @deprecated
  void activate() {
    turnOn();
  }

  /// Turns the TV's power on.
  void turnOn() {...}
}

元数据可以在 library、 class、 typedef、 type parameter、 constructor、 factory、 function、 field、 parameter 或者 variable 声明之前使用，也可以在 import 或者 export 指令之前使用。 使用反射可以在运行时获取元数据信息。


*/

/*
注释
   单行注释
   多行注释
   文档注释
*/