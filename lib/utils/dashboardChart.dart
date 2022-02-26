import 'package:flutter/material.dart';

class DashboardChart extends StatefulWidget {
  DashboardChart({Key? key}) : super(key: key);

  @override
  _DashboardChartState createState() => _DashboardChartState();
}

class _DashboardChartState extends State<DashboardChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * .1,
      width: MediaQuery.of(context).size.width,
      // color: Colors.red,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Column(
                children: [
                  Text(
                    'BTC/USDT',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    '-0.75%',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.red,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    '482.7',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.red,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Text(
                    'ETH/USDT',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    '2.75%',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.green,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    '785.7',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.red,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Text(
                    'EOS/USDT',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    '15.75%',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.green,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    '289.15',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.green,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Text(
                    'LTC/USDT',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    '-2.54%',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.red,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    '784.7',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.green,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Text(
                    'ADA/USDT',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    '45.75%',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.green,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    '985.7',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.green,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
