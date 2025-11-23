import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_by_asif_taj/screens/favourate/selected_items.dart';

import '../../provider/favourite_provider.dart';

class FavourateScreen extends StatefulWidget {
  const FavourateScreen({super.key});

  @override
  State<FavourateScreen> createState() => _FavourateScreenState();
}

class _FavourateScreenState extends State<FavourateScreen> {
  List<int> selectedItems = [];

  @override
  Widget build(BuildContext context) {

    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourate Screen💫'),
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectedItems()));
    },
              child: Icon(Icons.favorite, size: 35,)),
          SizedBox(width: 20,),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context,index){
                  return Consumer<FavouriteItemsProvider>(
                      builder: (context, value, child){
                        return ListTile(
                          onTap: (){
                            if(value.selectedItems.contains(index)){
                              value.removeItems(index);
                            }
                            else {
                              value.addItems(index);
                            }

                          },
                          title: index == 0 ? Text('item'+ index.toString()) : Text('items'+ index.toString()),
                          trailing:value.selectedItems.contains(index) ? Icon(Icons.favorite): Icon(Icons.favorite_border),
                        );
                      });
                }),
          ),
        ],
      )
    );
  }
}