// 异步支持
/*
Dart 库中包含许多返回 Future 或 Stream 对象的函数. 这些函数在设置完耗时任务（例如 I/O 曹组）后， 就立即返回了，不会等待耗任务完成。 使用 async 和 await 关键字实现异步编程。 可以让你像编写同步代码一样实现异步操作。
*/

/*
处理 Future
可以通过下面两种方式，获得 Future 执行完成的结果：

使用 async 和 await.
使用 Future API，具体描述，参考 库概览.
使用 async 和 await 关键字的代码是异步的。 虽然看起来有点想同步代码。 例如，下面的代码使用 await 等待异步函数的执行结果。

await lookUpVersion();
要使用 await ， 代码必须在 异步函数（使用 async 标记的函数）中：

Future checkVersion() async {
  var version = await lookUpVersion();
  // Do something with version
}
提示： 虽然异步函数可能会执行耗时的操作， 但它不会等待这些操作。 相反，异步函数只有在遇到第一个 await 表达式（详情见）时才会执行。 也就是说，它返回一个 Future 对象， 仅在await表达式完成后才恢复执行。

使用 try， catch， 和 finally 来处理代码中使用 await 导致的错误。

try {
  version = await lookUpVersion();
} catch (e) {
  // React to inability to look up the version
}
在一个异步函数中可以多次使用 await 。 例如，下面代码中等待了三次函数结果：

var entrypoint = await findEntrypoint();
var exitCode = await runExecutable(entrypoint, args);
await flushThenExit(exitCode);
在 await 表达式 中， 表达式 的值通常是一个 Future 对象； 如果不是，这是表达式的值会被自动包装成一个 Future 对象。 Future 对象指明返回一个对象的承诺（promise）。 await 表达式 执行的结果为这个返回的对象。 await 表达式会阻塞代码的执行，直到需要的对象返回为止。

如果在使用 await 导致编译时错误， 确认 await 是否在一个异步函数中。 例如，在应用的 main() 函数中使用 await ， main() 函数的函数体必须被标记为 async ：

Future main() async {
  checkVersion();
  print('In main: version is ${await lookUpVersion()}');
}
*/

/*
声明异步函数
函数体被 async 标示符标记的函数，即是一个_异步函数_。 将 async 关键字添加到函数使其返回Future。 例如，考虑下面的同步函数，它返回一个 String ：
String lookUpVersion() => '1.0.0';
例如，将来的实现将非常耗时，将其更改为异步函数，返回值是 Future 。
Future<String> lookUpVersion() async => '1.0.0';
注意，函数体不需要使用Future API。 如有必要， Dart 会创建 Future 对象。
如果函数没有返回有效值， 需要设置其返回类型为 Future<void> 。
*/