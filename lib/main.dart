import 'package:flutter/material.dart';
import 'package:todo_two/HomeScreen/home_screen.dart';
import 'package:todo_two/theme.dart';

void main(){
  runApp( MyApp());
}


// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  String titleOfTabApp = 'TODO App';

  MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleOfTabApp,
      debugShowCheckedModeBanner: false,
      theme: Mytheme.myTheme,
      initialRoute: HomeScreen.routesName,
      routes: {
        HomeScreen.routesName:(context) => const HomeScreen(),
      },
      locale: const Locale('en'),
    );
  }
}