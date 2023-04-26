import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return
    runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue,
          ),
          body: BallPage(),
        ),
      ),
    );
}

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var ballPage = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() { ballPage = Random().nextInt(5) + 1; });
              },
              child: Image.asset('images/ball$ballPage.png'),
            ),
          ),
        ],
      ),
    );
  }
}

