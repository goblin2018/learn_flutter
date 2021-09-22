import 'package:flutter/material.dart';
import 'package:learn_flutter/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // onGenerateRoute: ,
      routes: routes,
    );
  }

  // 调用时将对应的page返回出来
  // Route<dynamic> onGenerateRoute(RouteSettings settings) {
  //   return MaterialPageRoute(builder: (context) {
  //     String routeName = settings.name!;

  //   });
  // }
}
