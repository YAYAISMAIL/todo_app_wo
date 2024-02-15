import 'package:flutter/material.dart';
import 'package:todo_two/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        title: Text(AppLocalizations.of(context)!.app_title),
      ),
      body: Container(color: Mytheme.backgroundColorLight),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            navIndex = value;
            setState(() {});
          },
          currentIndex: navIndex,
          items: [
            BottomNavigationBarItem(
                icon: const ImageIcon(
                    AssetImage('assets/icon/Icon awesome-list.png')),
                label: AppLocalizations.of(context)!.nav_btn_0),
            BottomNavigationBarItem(
                icon: const ImageIcon(
                    AssetImage('assets/icon/Icon feather-settings.png')),
                label: AppLocalizations.of(context)!.nav_btn_1),
          ]),
    );
  }

  List<Widget> MyTabs = [
    
  ];
}
