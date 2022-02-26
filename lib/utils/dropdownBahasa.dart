import 'package:flutter/material.dart';

class dropdown_bahasa extends StatefulWidget {
  const dropdown_bahasa({Key? key}) : super(key: key);

  @override
  State<dropdown_bahasa> createState() => _dropdown_bahasaState();
}

class _dropdown_bahasaState extends State<dropdown_bahasa> {
  String dropdownValue = 'assets/icons/indonesia.png';

  List<String> bahasa = [
    'assets/icons/indonesia.png',
    'assets/icons/chinese.png',
    'assets/icons/united-kingdom.png'
  ];

  String Selected = 'assets/icons/united-kingdom.png';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: Colors.black,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 0,
      elevation: 16,
      value: Selected,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 0,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (value) {
        print(value);
        setState(() {
          Selected = value.toString();
        });
      },
      items: <String>[
        'assets/icons/indonesia.png',
        'assets/icons/chinese.png',
        'assets/icons/united-kingdom.png'
      ].map<DropdownMenuItem<String>>(
        (String e) {
          return DropdownMenuItem<String>(
            value: e,
            child: Image.asset(e),
          );
        },
      ).toList(),
    );
  }
}
