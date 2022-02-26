import 'package:flutter/material.dart';

class DashboardUtama extends StatefulWidget {
  DashboardUtama({Key? key}) : super(key: key);

  @override
  _DashboardUtamaState createState() => _DashboardUtamaState();
}

class _DashboardUtamaState extends State<DashboardUtama> {
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
                  Image.asset('assets/icons/gift-card.png'),
                  Text('Gift Card',
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
                  Image.asset('assets/icons/pickaxe.png'),
                  Text('Game',
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
                  Image.asset('assets/icons/coins.png'),
                  Text('Reward',
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
                  Image.asset('assets/icons/line-chart.png'),
                  Text('Referal',
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
                  Image.asset('assets/icons/bonus32.png'),
                  Text('Bonus',
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
