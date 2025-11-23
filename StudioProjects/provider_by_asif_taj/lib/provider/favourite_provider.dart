import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FavouriteItemsProvider with ChangeNotifier{

  List<int> _selectedIitems = [];

  List<int> get selectedItems => _selectedIitems;

  void addItems(int item){
    _selectedIitems.add(item);

    notifyListeners();
  }

  void removeItems(int item){
    _selectedIitems.remove(item);

    notifyListeners();
  }
}