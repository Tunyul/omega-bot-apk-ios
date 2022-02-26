import 'package:flutter/material.dart';

class DashboardAssetDropdown extends StatefulWidget {
  DashboardAssetDropdown({Key? key}) : super(key: key);

  @override
  _DashboardAssetDropdownState createState() => _DashboardAssetDropdownState();
}

class _DashboardAssetDropdownState extends State<DashboardAssetDropdown> {
  String dropdownValue = 'BINANCE';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: Colors.black,
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 12,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 0,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (newValue) {
        setState(() {});
      },
      items: <String>['BINANCE', 'TOKOCRYPTO', 'INDODAX']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        );
      }).toList(),
    );
  }
}
