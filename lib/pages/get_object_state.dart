import 'package:flutter/material.dart';

class GetStateObjectPage extends StatefulWidget {
  const GetStateObjectPage({Key? key}) : super(key: key);

  @override
  _GetStateObjectPageState createState() => _GetStateObjectPageState();
}

class _GetStateObjectPageState extends State<GetStateObjectPage> {
  static final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      Builder(builder: (context) {
        return ElevatedButton(
          onPressed: () {
            ScaffoldState _state = context.findAncestorStateOfType<ScaffoldState>()!;
            _state.openDrawer();
          },
          child: const Text('open drawer 1'),
        );
      }),
      Builder(builder: (context) {
        return ElevatedButton(
            onPressed: () {
              ScaffoldState _state = Scaffold.of(context);
              _state.openDrawer();
            },
            child: const Text('open drawer 2'));
      }),
      Builder(builder: (context) {
        return ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('I am snackbar')));
            },
            child: const Text('open snakbar'));
      }),
      ElevatedButton(
          onPressed: () {
            _globalKey.currentState!.openDrawer();
          },
          child: const Text('open drawer with globalKey'))
    ];
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(title: const Text('获取State')),
      body: Center(
        child: Column(
          children: children,
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
