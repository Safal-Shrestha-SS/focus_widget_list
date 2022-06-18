// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:focus_widget_list/focus_widget_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  void disable() {
    setState(() {
      disbleFocus = false;
    });
  }

  bool disbleFocus = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: FocusWidget(
              widgetList: listOfWidget,
              blur: disbleFocus,
              blurColor: Colors.blue,
              blurValue: 0.7,
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: disable,
        child: const Icon(Icons.add),
      ),
    );
  }
}

List<Widget> listOfWidget = [
  Container(
    height: 50,
    color: Colors.amber[600],
    child: const Center(child: Text('Entry A')),
  ),
  Container(
    height: 50,
    color: Colors.amber[500],
    child: const Center(child: Text('Entry B')),
  ),
  Container(
    height: 50,
    color: Colors.amber[100],
    child: const Center(child: Text('Entry C')),
  ),
  Container(
    height: 50,
    color: Colors.amber[600],
    child: const Center(child: Text('Entry A')),
  ),
  Container(
    height: 50,
    color: Colors.amber[500],
    child: const Center(child: Text('Entry B')),
  ),
  Container(
    height: 50,
    color: Colors.amber[100],
    child: const Center(child: Text('Entry C')),
  ),
  Container(
    height: 50,
    color: Colors.amber[600],
    child: const Center(child: Text('Entry A')),
  ),
  Container(
    height: 50,
    color: Colors.amber[500],
    child: const Center(child: Text('Entry B')),
  ),
  Container(
    height: 50,
    color: Colors.amber[100],
    child: const Center(child: Text('Entry C')),
  ),
];
