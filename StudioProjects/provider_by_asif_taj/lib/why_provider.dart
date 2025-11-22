import 'dart:async';

import 'package:flutter/material.dart';

class WhyProvider extends StatefulWidget {
   WhyProvider({super.key});

  @override
  State<WhyProvider> createState() => _WhyProviderState();
}

class _WhyProviderState extends State<WhyProvider> {
  int count = 0;

  @override

  void initState(){

    Timer.periodic(Duration(seconds: 1), (timer){
        count++;
        // print(count);
        setState(() {

        });
    });
  }

  Widget build(BuildContext context) {
    print('ismail');
    return Scaffold(
      appBar: AppBar(
        title: Text('why Proider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(
            DateTime.now().hour.toString()+" : "+
                DateTime.now().minute.toString()+" : "+
                DateTime.now().second.toString(),
            style: TextStyle(fontSize: 50),)),
          Center(child: Text(count.toString(), style: TextStyle(fontSize: 50),)),

        ],
      ),
    );
  }
}
