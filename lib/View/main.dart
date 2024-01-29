import 'package:flutter/material.dart';
import 'package:flutter_learn/View/Alarm.dart';

void main() {
  runApp(const CalcAlarm());
}

class CalcAlarm extends StatelessWidget {
  const CalcAlarm({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '数学目覚まし',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const TopPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class TopPage extends StatefulWidget {
  const TopPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Row(children: const [
          Icon(Icons.timer),
          Text("タイトル")
        ],)
      ),
      body: Column(children: [
        Alarm()
        ],),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("aa"), child: const Icon(Icons.timer)
      ),
    );
  }
}
