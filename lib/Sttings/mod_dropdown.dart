import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_two/Provider/app_config_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo_two/theme.dart';

// Flutter code sample for [DropdownMenu]s. The first dropdown menu
// has the default outlined border and demos using the
// [DropdownMenuEntry] style parameter to customize its appearance.
// The second dropdown menu customizes the appearance of the dropdown
// menu's text field with its [InputDecorationTheme] parameter.
// DropdownMenuEntry labels and values for the first dropdown menu.
enum ModLable {
  light('Light Mode'),
  dark('Dark Mode');

  const ModLable(this.mod);
  final String mod;
}

class ModeDropdown extends StatefulWidget {
  ModeDropdown({super.key});
  @override
  State<ModeDropdown> createState() => _ModeDropdownState();
}

class _ModeDropdownState extends State<ModeDropdown> {
  final TextEditingController modeController = TextEditingController();
  ModLable? selectedMode;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Mytheme.white,
                child: Container(
                  color: Mytheme.white,
                  child: DropdownMenu<ModLable>(
                    width: MediaQuery.of(context).size.width * 0.80,
                    initialSelection: ModLable.light,
                    controller: modeController,
                    requestFocusOnTap: true,
                    label: Text(
                      AppLocalizations.of(context)!.app_mode,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    onSelected: (ModLable? mode) {
                      selectedMode = mode;

                      if (selectedMode == ModLable.light) {
                        //
                      } else {
                        //
                      }
                      setState(() {});
                    },
                    dropdownMenuEntries: ModLable.values
                        .map<DropdownMenuEntry<ModLable>>((ModLable mode) {
                      return (DropdownMenuEntry<ModLable>(
                          value: mode, label: mode.mod));
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(width: 24),
            ],
          ),
        ),
      ],
    );
  }
}
