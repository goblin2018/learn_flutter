import 'package:learn_flutter/pages/counter.dart';
import 'package:learn_flutter/pages/get_object_state.dart';
import 'package:learn_flutter/pages/home.dart';

final routes = {
  "/": (context) => const HomePage(),
  "counter": (context) => const CounterPage(title: 'Counter'),
  "object_state": (context) => const GetStateObjectPage(),
};
