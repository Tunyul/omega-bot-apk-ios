import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:omega/config/coindmodel.dart';

import '../config/coindcard.dart';
import 'package:http/http.dart' as http;

String url =
    'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=24h';

class DashboardLiveTicker extends StatefulWidget {
  DashboardLiveTicker({Key? key}) : super(key: key);

  @override
  State<DashboardLiveTicker> createState() => _DashboardLiveTickerState();
}

class _DashboardLiveTickerState extends State<DashboardLiveTicker> {
  Future<List<Coin>> futurecoin() async {
    coinlist = [];
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> value = [];
      value = jsonDecode(response.body);
      if (value.length > 0) {
        for (var i = 0; i < value.length; i++) {
          if (value[i] != null) {
            Map<String, dynamic> map = value[i];
            coinlist.add(Coin.fromJson(map));
          }
        }
        setState(() {
          coinlist;
        });
        return coinlist;
      }
    } else {
      throw Exception('Failed to load Ticker Live');
    }
    return futurecoin();
  }

  @override
  void initState() {
    // TODO: implement initState
    futurecoin();
    Timer.periodic(Duration(seconds: 10), (timer) => futurecoin());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          itemCount: coinlist.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => CoinCard(
              name: coinlist[index].name,
              symbol: coinlist[index].symbol,
              imageUrl: coinlist[index].imageUrl,
              price: coinlist[index].price.toDouble(),
              change: coinlist[index].change.toDouble(),
              changePrecentage: coinlist[index].changePrecentage.toDouble()),
        ),
      ),
    );
  }
}
