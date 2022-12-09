import 'package:flutter/material.dart';
import 'package:flutter_multi_child_animated_switcher/flutter_multi_child_animated_switcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int show = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: MultiChildAnimatedSwitcher(
          zeroIndexed: true,
          showWidget: show,
          children: const [
            WidgetOne(),
            WidgetTwo(),
            WidgetThree(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            show = (show + 1) % 3;
          });
        },
        tooltip: 'Change Widget',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class WidgetOne extends StatefulWidget {
  const WidgetOne({super.key});

  @override
  State<WidgetOne> createState() => _WidgetOneState();
}

class _WidgetOneState extends State<WidgetOne> {
  @override
  void initState() {
    super.initState();
    debugPrint('1');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
    );
  }
}

class WidgetTwo extends StatefulWidget {
  const WidgetTwo({super.key});

  @override
  State<WidgetTwo> createState() => _WidgetTwoState();
}

class _WidgetTwoState extends State<WidgetTwo> {
  @override
  void initState() {
    super.initState();
    debugPrint('2');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.blue,
    );
  }
}

class WidgetThree extends StatefulWidget {
  const WidgetThree({super.key});

  @override
  State<WidgetThree> createState() => _WidgetThreeState();
}

class _WidgetThreeState extends State<WidgetThree> {
  @override
  void initState() {
    super.initState();
    debugPrint('3');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.green,
    );
  }
}
