import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_by_asif_taj/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {

  void initState(){
    final countProvider = context.read<CountProvider>();
    Timer.periodic(Duration(seconds: 1), (timer){
      countProvider.setCount();
    });
  }

  @override

  Widget build(BuildContext context) {
    print('ismail');
    final countprovider = context.read<CountProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example'),
      ),
      body: Consumer<CountProvider>(builder: (context, value, child){
        print('khan');
        return Center(
          child: Text(value.count.toString(), style: TextStyle(fontSize: 50),),
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: (){
        countprovider.setCount();
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
