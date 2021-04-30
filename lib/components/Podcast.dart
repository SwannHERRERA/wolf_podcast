import 'package:flutter/material.dart';

class Podcast extends StatelessWidget {
  const Podcast({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.deepPurple,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            children: [Text('Test 1'), Icon(Icons.play_arrow_rounded)],
          ),
        ),
      ),
    );
  }
}
