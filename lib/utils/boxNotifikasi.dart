import 'package:flutter/material.dart';

class BoxNotifikasi extends StatefulWidget {
  const BoxNotifikasi({Key? key}) : super(key: key);

  @override
  State<BoxNotifikasi> createState() => _BoxNotifikasiState();
}

class _BoxNotifikasiState extends State<BoxNotifikasi> {
  var _var1 = false;
  var _var2 = false;
  var _var3 = false;
  var _var4 = false;
  var _var5 = false;
  var _var6 = false;
  var _var7 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.black45,
        ),
        child: Column(
          children: [
            SwitchListTile(
              value: _var1,
              onChanged: (value) {
                setState(() {
                  _var1 = value;
                  if (_var1 == true) {
                    print('notikasi on');
                  }
                });
              },
              activeColor: Colors.amber,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey,
              title: Text(
                'All',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: 'Poppins',
                ),
              ),
              secondary: Image.asset('assets/icons/expand.png'),
            ),
            Padding(padding: EdgeInsets.only(bottom: 8.0)),
            SwitchListTile(
              value: _var2,
              onChanged: (value) {
                setState(() {
                  _var2 = value;
                  if (_var2 == true) {
                    print('notikasi on');
                  }
                });
              },
              activeColor: Colors.amber,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey,
              title: Text(
                'Profit Earning',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: 'Poppins',
                ),
              ),
              secondary: Image.asset('assets/icons/expand.png'),
            ),
          ],
        ),
      ),
    );
  }
}
