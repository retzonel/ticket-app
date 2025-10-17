import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());

  var test = TestClass(4, 10);
  print(test.x + test.y);

  var newTest = test.copyWith(x:30);
  print(newTest.x + newTest.y);

  var newTest2 = test.copyWith(y:50);
  print(newTest2.x + newTest2.y);
}

class TestClass {
  int x;
  int y;
  TestClass(this.x, this.y);
  TestClass copyWith({int? x, int? y}) {
    return TestClass(x ?? this.x, y ?? this.y);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 141, 2),
        ),
        useMaterial3: true,
      ),

      debugShowCheckedModeBanner: false,

      home: BottomNavBar(),
    );
  }
}
