import 'package:flutter/material.dart';
import 'package:flutter_multi_child_animated_switcher/src/multi_child_animated_switcher.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({
    super.key,
    required this.show,
  });

  final int show;

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int? show;

  @override
  void initState() {
    super.initState();
    show = widget.show;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: MultiChildAnimatedSwitcher(
            showWidget: show ?? 0,
            children: const [
              Text('1'),
              Text('2'),
              Text('3'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          key: const ValueKey('fab'),
          onPressed: () {
            setState(() {
              show = (show! + 1) % 3;
            });
          },
        ),
      ),
    );
  }
}
