import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_by_asif_taj/screens/count_example_one.dart';
class ExampleOneProvider extends StatefulWidget {
  const ExampleOneProvider({super.key});

  @override
  State<ExampleOneProvider> createState() => _ExampleOneProviderState();
}

class _ExampleOneProviderState extends State<ExampleOneProvider> {
  @override
  Widget build(BuildContext context) {
    print('ismail');

    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Provider '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CountExampleOne>(builder: (context, value, child){
            return Slider(value: value.value, onChanged: (newValue){
              value.setValue(newValue);
            });
          }),
          SizedBox(height: 10,),
          Consumer<CountExampleOne>(builder: (context, value, child){
            return Row(
              children: [
                Expanded(child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(value.value)
                  ),
                  child: Center(child: Text('Container 1')),
                )),
                Expanded(child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(value.value)
                  ),
                  child: Center(child: Text('Container 2')),
                ))
              ],
            );
          })
        ],
      ),
    );
  }
}
