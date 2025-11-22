import 'package:flutter/material.dart';
class StatefullWidgets extends StatefulWidget {
  const StatefullWidgets({super.key});



  @override
  State<StatefullWidgets> createState() => _StatefullWidgetsState();
}

class _StatefullWidgetsState extends State<StatefullWidgets> {

  int x = 0;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('statefull widgets'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(child: Text(x.toString(), style: TextStyle(fontSize: 50),)),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          x++;
        });
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
