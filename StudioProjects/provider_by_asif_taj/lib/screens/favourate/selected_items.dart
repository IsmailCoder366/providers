import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_by_asif_taj/screens/favourate/selected_items.dart';

import '../../provider/favourite_provider.dart';

class SelectedItems extends StatefulWidget {
  const SelectedItems({super.key});

  @override
  State<SelectedItems> createState() => _SelectedItemsState();
}

class _SelectedItemsState extends State<SelectedItems> {
  List<int> selectedItems = [];

  @override
  Widget build(BuildContext context) {
final provider = Provider.of<FavouriteItemsProvider>(context);
    print('build');
    return Scaffold(
        appBar: AppBar(
          title: Text('Selected Items Screen💫'),
          actions: [
            InkWell(
                onTap: (){
                },
                child: Icon(Icons.favorite, size: 35,)),
            SizedBox(width: 20,),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: provider.selectedItems.length,
                  itemBuilder: (context,index){
                    return Consumer<FavouriteItemsProvider>(
                        builder: (context, value, child){
                          return ListTile(
                            onTap: (){
                              if(value.selectedItems.contains(index)){
                                value.removeItems(index);
                              }


                            },
                            title:Text('items'+ index.toString()),
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