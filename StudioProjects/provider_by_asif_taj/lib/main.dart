import 'package:flutter/material.dart';
import 'package:provider_by_asif_taj/statefull_widgets.dart';
import 'package:provider_by_asif_taj/stateless_widgets.dart';
import 'package:provider_by_asif_taj/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home:  WhyProvider(),
    );
  }
}

