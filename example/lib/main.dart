import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:focus_widget_list/focus_widget_list.dart';

void main() {
  debugRepaintRainbowEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Test',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
      test = false;
    });
  }

  int index = 0;
  bool test = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          fit: StackFit.passthrough,
          children: <Widget>[
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              child: FocusWidget(
                widgetList: listOfWidget,
                blur: false,
                index: index,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

List<Widget> listOfWidget = [
  CustomPopupMenu(
    pressType: PressType.singleClick,
    barrierColor: Colors.transparent,
    enablePassEvent: true,
    menuBuilder: () {
      return Container(color: Colors.blue, child: const Text('data'));
    },
    child: GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: Container(
        height: 50,
        color: Colors.amber[600],
        child: const Center(child: Text('Entry A')),
      ),
    ),
  ),
  CustomPopupMenu(
    pressType: PressType.singleClick,
    barrierColor: Colors.transparent,
    enablePassEvent: true,
    menuBuilder: () {
      return Container(color: Colors.blue, child: const Text('data'));
    },
    child: Container(
      height: 50,
      color: Colors.amber[500],
      child: const Center(child: Text('Entry B')),
    ),
  ),
  CustomPopupMenu(
    pressType: PressType.singleClick,
    barrierColor: Colors.transparent,
    enablePassEvent: true,
    menuBuilder: () {
      return Container(color: Colors.blue, child: const Text('data'));
    },
    child: Container(
      height: 50,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),
  ),
  CustomPopupMenu(
    pressType: PressType.singleClick,
    barrierColor: Colors.transparent,
    enablePassEvent: true,
    menuBuilder: () {
      return Container(color: Colors.blue, child: const Text('data'));
    },
    child: Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    ),
  ),
  CustomPopupMenu(
    pressType: PressType.singleClick,
    barrierColor: Colors.transparent,
    enablePassEvent: true,
    menuBuilder: () {
      return Container(color: Colors.blue, child: const Text('data'));
    },
    child: Container(
      height: 50,
      color: Colors.amber[500],
      child: const Center(child: Text('Entry B')),
    ),
  ),
  CustomPopupMenu(
    pressType: PressType.singleClick,
    barrierColor: Colors.transparent,
    enablePassEvent: true,
    menuBuilder: () {
      return Container(color: Colors.blue, child: const Text('data'));
    },
    child: Container(
      height: 50,
      color: Colors.amber[100],
      child: const Center(child: Text('Entry C')),
    ),
  ),
];
