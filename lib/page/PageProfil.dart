import 'package:flutter/material.dart';
import 'package:omega/utils/boxMenuProfil.dart';
import 'package:omega/utils/boxProfile.dart';

class PageProfil extends StatefulWidget {
  const PageProfil({Key? key}) : super(key: key);

  @override
  _PageProfilState createState() => _PageProfilState();
}

class _PageProfilState extends State<PageProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.amber,
          ),
        ),
        title: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            'Profil',
            style: TextStyle(
              color: Colors.amber,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: SafeArea(
            child: Column(
          children: [
            BoxProfil(),
            BoxMenuProfil(),
          ],
        )),
      ),
    );
  }
}
