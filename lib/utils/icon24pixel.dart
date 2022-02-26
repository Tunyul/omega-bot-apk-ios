import 'package:flutter/material.dart';

class Iconmini extends StatelessWidget {
  final IconData iconnya;
  const Iconmini({required this.iconnya, required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10), child: Icon(iconnya));
  }
}
