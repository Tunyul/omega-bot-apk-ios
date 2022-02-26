import 'package:flutter/material.dart';

class DashboardMenu extends StatefulWidget {
  DashboardMenu({Key? key}) : super(key: key);

  @override
  _DashboardMenuState createState() => _DashboardMenuState();
}

class _DashboardMenuState extends State<DashboardMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * .12,
      width: MediaQuery.of(context).size.width,
      // color: Colors.red,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(top: 3),
              child: Column(
                children: [
                  Image.asset('assets/icons/star.png'),
                  Text('Ranking',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(top: 3),
              child: Column(
                children: [
                  Image.asset('assets/icons/trophy.png'),
                  Text('Winner',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(top: 3),
              child: Column(
                children: [
                  Image.asset('assets/icons/share.png'),
                  Text('Share',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(top: 3),
              child: Column(
                children: [
                  Image.asset('assets/icons/deposit.png'),
                  Text('Deposit',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(top: 3),
              child: Column(
                children: [
                  Image.asset('assets/icons/more.png'),
                  Text('More',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
