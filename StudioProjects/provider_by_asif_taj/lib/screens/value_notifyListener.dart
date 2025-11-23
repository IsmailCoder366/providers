import 'package:flutter/material.dart';

class ValueNotifylistener extends StatelessWidget {
   ValueNotifylistener({super.key});

  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  ValueNotifier<bool> toggle = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless as statefull'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder(
              valueListenable: toggle,
              builder: (context, value, child){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    obscureText: toggle.value,
                    decoration: InputDecoration(
                        hintText: 'email',
                        border: OutlineInputBorder()
                    ),
                  ),
                );
          }),

          ValueListenableBuilder(
            valueListenable: _counter,
            builder: (context, value, child){
              return Text(_counter.value.toString(), style: TextStyle(fontSize: 50));
            },
          )


        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
_counter.value++;
print(_counter.value.toString());
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
