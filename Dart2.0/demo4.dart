// 控制流程语句
/*
// if 和 else

if (isRaining()) {
  you.bringRainCoat();
} else if (isSnowing()) {
  you.wearJacket();
} else {
  car.putTopDown();
}

// for循环 for for in  Iterable接口
// while 和 do-while
// break 和 continue
// switch 和 case
在 Dart 中 switch 语句使用 == 比较整数，字符串，或者编译时常量。 比较的对象必须都是同一个类的实例（并且不可以是子类）， 类必须没有对 == 重写。
在 case 语句中，每个非空的 case 语句结尾需要跟一个 break 语句。 除 break 以外，还有可以使用 continue, throw，者 return。
当没有 case 语句匹配时，执行 default 代码：
fall-through

var command = 'CLOSED';
switch (command) {
  case 'CLOSED': // Empty case falls through.
  case 'NOW_CLOSED':
    // Runs for both CLOSED and NOW_CLOSED.
    executeNowClosed();
    break;
}

var command = 'CLOSED';
switch (command) {
  case 'CLOSED':
    executeClosed();
    continue nowClosed;
  // Continues executing at the nowClosed label.

  nowClosed:
  case 'NOW_CLOSED':
    // Runs for both CLOSED and NOW_CLOSED.
    executeNowClosed();
    break;
}
case 语句可以拥有局部变量， 这些局部变量只能在这个语句的作用域中可见。

assert
如果 assert 语句中的布尔条件为 false ， 那么正常的程序执行流程会被中断。
assert 语句只在开发环境中有效， 在生产环境是无效的； Flutter 中的 assert 只在 debug 模式 中有效。 开发用的工具，例如 dartdevc 默认是开启 assert 功能。 其他的一些工具， 例如 dart 和 dart2js, 支持通过命令行开启 assert ： --enable-asserts。

*/