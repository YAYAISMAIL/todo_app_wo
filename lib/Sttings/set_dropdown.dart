import 'package:flutter/material.dart';

/// Flutter code sample for [DropdownMenu].

const List<String> list = <String>['English', 'Arabic'];

class SetDropDownMenu extends StatefulWidget {
  const SetDropDownMenu({super.key});

  @override
  State<SetDropDownMenu> createState() => _SetDropDownMenuState();
}

class _SetDropDownMenuState extends State<SetDropDownMenu> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: MediaQuery.of(context).size.width * 0.8,
      initialSelection: list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}
