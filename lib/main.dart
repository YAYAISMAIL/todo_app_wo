import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_two/HomeScreen/home_screen.dart';
import 'package:todo_two/Provider/app_config_provider.dart';
import 'package:todo_two/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: MyApp()));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  String titleOfTabApp = 'TODO App';

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      title: titleOfTabApp,
      debugShowCheckedModeBanner: false,
      theme: Mytheme.myTheme,
      initialRoute: HomeScreen.routesName,
      routes: {
        HomeScreen.routesName: (context) => const HomeScreen(),
      },
      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
