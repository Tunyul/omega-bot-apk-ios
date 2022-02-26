import 'package:omega/utils/dashboardIsiProfit.dart';
import 'package:flutter/material.dart';

class DashboardProfit extends StatelessWidget {
  const DashboardProfit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 10, right: 10),
      // color: Colors.amber,
      child: Container(
        height: 30,
        padding: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
          color: Colors.blue.shade900,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'TRADING PAIR',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 8,
                          child: Icon(
                            Icons.keyboard_arrow_up,
                            size: 15,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 15,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'PERFORMANCE',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 8,
                          child: Icon(
                            Icons.keyboard_arrow_up,
                            size: 15,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 15,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'PROFIT',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 8,
                          child: Icon(
                            Icons.keyboard_arrow_up,
                            size: 15,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 15,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
