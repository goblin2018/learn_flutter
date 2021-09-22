import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttons = <Widget>[
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('counter');
        },
        child: const Text('counter'),
      ),
      const Echo(text: 'Echo', backgroundColor: Colors.grey),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('object_state');
          },
          child: const Text('object_state'))
    ];

    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: buttons,
      ),
    );
  }
}

class Echo extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  const Echo({Key? key, required this.text, required this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: backgroundColor,
        child: Text(text),
      ),
    );
  }
}
