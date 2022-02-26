import 'package:flutter/material.dart';

class CoinCard extends StatelessWidget {
  CoinCard({
    required this.name,
    required this.symbol,
    required this.imageUrl,
    required this.price,
    required this.change,
    required this.changePrecentage,
  });

  String name;
  String symbol;
  String imageUrl;
  double price;
  double change;
  double changePrecentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 450,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.black54,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.brown,
                child: Column(
                  children: [
                    Container(
                      // color: Colors.red,
                      margin: EdgeInsets.all(5.0),
                      child: Image.network(
                        imageUrl,
                      ),
                    ),
                    Container(
                      // color: Colors.orange,
                      child: Icon(
                        change.toDouble() < 0
                            ? Icons.trending_down_outlined
                            : Icons.trending_up_outlined,
                        color:
                            change.toDouble() < 0 ? Colors.red : Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 3,
              child: Container(
                // color: Colors.indigo,
                child: Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      symbol,
                      style: TextStyle(
                        fontSize: 10.0,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      price.toDouble().toString(),
                      style: TextStyle(
                        fontSize: 10.0,
                        fontFamily: 'Poppins',
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      change.toDouble() < 0
                          ? change.toDouble().toString()
                          : '+' + change.toDouble().toString(),
                      style: TextStyle(
                          fontSize: 9.0,
                          fontFamily: 'Poppins',
                          color:
                              change.toDouble() < 0 ? Colors.red : Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      changePrecentage.toDouble() < 0
                          ? changePrecentage.toDouble().toString() + '%'
                          : '+' + changePrecentage.toDouble().toString() + '%',
                      style: TextStyle(
                          fontSize: 9.0,
                          fontFamily: 'Poppins',
                          color: changePrecentage.toDouble() < 0
                              ? Colors.red
                              : Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   width: 25,
            //   height: 25,
            //   child: Image.network(
            //       'https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579'),
            // ),
            // Container(
            //     width: 50,
            //     height: 50,
            //     child: Icon(Icons.trending_down_outlined)),
          ],
        ),
      ),
    );
  }
}
