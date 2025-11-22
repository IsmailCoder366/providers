import 'package:flutter/material.dart';
class StateLessWidgets extends StatelessWidget {

   StateLessWidgets({super.key});
   int x = 10;

  @override
  Widget build(BuildContext context) {
    print('ismail khan');
    return Scaffold(
      appBar: AppBar(
        title: Text('home screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
        Center(
          child: Container(
            height: 100,
            width: 100,
            child: Center(child: Text(x.toString(), style: TextStyle(fontSize: 30, color: Colors.black),)),
          ),
        )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print(x++);
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
