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
enum LangLabel {
  english('English'),
  arabic('العربية');

  const LangLabel(this.label);
  final String label;
}

class LangDropdown extends StatefulWidget {
  LangDropdown({super.key});
  @override
  State<LangDropdown> createState() => _LangDropdownState();
}

class _LangDropdownState extends State<LangDropdown> {
  final TextEditingController langController = TextEditingController();
  LangLabel? selectedLanguage;

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
                child: DropdownMenu<LangLabel>(
                  width: MediaQuery.of(context).size.width * 0.80,
                  initialSelection: LangLabel.english,
                  controller: langController,
                  requestFocusOnTap: true,
                  label: Text(
                    AppLocalizations.of(context)!.lang,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  onSelected: (LangLabel? lang) {
                    selectedLanguage = lang;

                    if (selectedLanguage == LangLabel.arabic) {
                      provider.ChangeLanguage("ar");
                    } else {
                      provider.ChangeLanguage("en");
                    }
                    setState(() {});
                  },
                  dropdownMenuEntries: LangLabel.values
                      .map<DropdownMenuEntry<LangLabel>>((LangLabel lang) {
                    return (DropdownMenuEntry<LangLabel>(
                        value: lang, label: lang.label));
                  }).toList(),
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
