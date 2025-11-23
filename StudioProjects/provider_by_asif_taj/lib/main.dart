import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_by_asif_taj/provider/auth_provider.dart';
import 'package:provider_by_asif_taj/provider/count_provider.dart';
import 'package:provider_by_asif_taj/provider/example_one_provider.dart';
import 'package:provider_by_asif_taj/provider/favourite_provider.dart';
import 'package:provider_by_asif_taj/provider/theme_changer_provider.dart';
import 'package:provider_by_asif_taj/screens/count_example.dart';
import 'package:provider_by_asif_taj/screens/count_example_one.dart';
import 'package:provider_by_asif_taj/screens/favourate/favourite_screen.dart';
import 'package:provider_by_asif_taj/screens/login.dart';
import 'package:provider_by_asif_taj/screens/theme_example/dark_theme.dart';
import 'package:provider_by_asif_taj/screens/value_notifyListener.dart';
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


    return MultiProvider(providers: [
        ChangeNotifierProvider(create: (_)=>CountProvider()),
        ChangeNotifierProvider(create: (_)=>CountExampleOne()),
        ChangeNotifierProvider(create: (_)=>FavouriteItemsProvider()),
        ChangeNotifierProvider(create: (_)=>ThemeChangerProvider()),
        ChangeNotifierProvider(create: (_)=>AuthProvider()),
    ],
    child: Builder(
      builder: (BuildContext context) {
        final provider = Provider.of<ThemeChangerProvider>(context);
        return MaterialApp(
          title: ('provider example'),
          themeMode: provider.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.yellow,
            primaryColor: Colors.purple
          ),
          home: Login(),
        );
      }
    ),
    );
  }
}

