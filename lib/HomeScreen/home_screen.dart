import 'package:flutter/material.dart';
import 'package:todo_two/theme.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  static const String routesName = 'Home-Screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title OF Content'),
      ),
      body: Container(color: Mytheme.backgroundColorLight),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            navIndex = value;
            setState(() {});
          },
          currentIndex: navIndex,
          items: const [
            BottomNavigationBarItem(
                icon:
                    ImageIcon(AssetImage('assets/icon/Icon awesome-list.png')),
                label: 'ico1'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/icon/Icon feather-settings.png')),
                label: 'ico1'),
          ]),
    );
  }
}
