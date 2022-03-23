import 'package:flutter/material.dart';
import 'package:omega/utils/TradingSpot.dart';

import '../utils/textSlider.dart';

class PageTrading extends StatefulWidget {
  const PageTrading({Key? key}) : super(key: key);

  @override
  State<PageTrading> createState() => _PageTradingState();
}

class _PageTradingState extends State<PageTrading> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        // backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.add_chart_rounded),
              ),
              Text(
                'Trading',
                style: TextStyle(color: Colors.amber),
              ),
            ],
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.android),
                text: "Spot",
              ),
              Tab(
                icon: Icon(Icons.phone_iphone),
                text: "Future",
              ),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover),
          ),
          child: SafeArea(
            child: TabBarView(
              children: [
                TradingSpot(),
                Center(
                  child: Text(
                    'On Going',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
