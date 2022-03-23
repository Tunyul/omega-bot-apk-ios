import 'package:flutter/material.dart';
import 'package:omega/utils/boxNotifikasi.dart';
import 'package:omega/utils/boxProfile.dart';

class page_notifikasi extends StatefulWidget {
  page_notifikasi({Key? key}) : super(key: key);

  @override
  State<page_notifikasi> createState() => _page_notifikasiState();
}

class _page_notifikasiState extends State<page_notifikasi> {
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
            'Notifications',
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
          children: [BoxNotifikasi()],
        )),
      ),
    );
  }
}
