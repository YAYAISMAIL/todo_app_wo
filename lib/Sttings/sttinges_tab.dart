import 'package:flutter/material.dart';
import 'package:todo_two/Sttings/lang_dropdown.dart';
import 'package:todo_two/Sttings/mod_dropdown.dart';
import 'package:todo_two/theme.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.05,
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      color: Mytheme.backgroundColorLight,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        LangDropdown(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.2),
        ModeDropdown(),
      ]),
    );
  }
}

// DropdownMenuEntry labels and values for the first dropdown menu.
enum ColorLabel {
  blue('Blue', Colors.blue),
  pink('Pink', Colors.pink),
  green('Green', Colors.green),
  yellow('Orange', Colors.orange),
  grey('Grey', Colors.grey);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;
}
