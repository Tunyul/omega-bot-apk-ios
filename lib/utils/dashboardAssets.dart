import 'package:binance/binance.dart';
import 'package:omega/config/datashared.dart';
import 'package:omega/utils/dashboardAssetsDropdown.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:convert/convert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

class DashboardAssets extends StatefulWidget {
  DashboardAssets({Key? key}) : super(key: key);

  @override
  _DashboardAssetsState createState() => _DashboardAssetsState();
}

class _DashboardAssetsState extends State<DashboardAssets> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setload();
    loadbalance();
  }

  loadbalance() {
    getKeyBin().then((value) {
      if (value == '0' || value == null || value == '') {
        print('tidak ada keybin');
      } else {
        getSecBin().then((value) {
          if (value == '0' || value == null || value == '') {
            print('tidak ada secbin');
          } else {
            print('data key dan sec ada');
            final dataGetbalances =
                Provider.of<HttpGetBalanceAcc>(context, listen: false);
            dataGetbalances.getBalances();
          }
        });
      }
    });
  }

  setload() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String getkey = preferences.getString('skeybin') ?? '0';
    String getsec = preferences.getString('ssecbin') ?? '0';
  }

  Future<String> getKeyBin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String setKeybin = preferences.getString('skeybin') ?? '0';

    return setKeybin;
  }

  Future<String> getSecBin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String setSecBin = preferences.getString('ssecbin') ?? '0';

    return setSecBin;
  }

  @override
  Widget build(BuildContext context) {
    final dataGetbalances =
        Provider.of<HttpGetBalanceAcc>(context, listen: false);
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5),
      // height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.amber.shade300,
          width: 1.5,
        ),
      ),
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                    flex: 1, child: Image.asset('assets/icons/database.png')),
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'ASSET',
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 14,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: OutlineButton(
                      onPressed: () {
                        // dataGetbalances.getBalances();
                        loadbalance();
                      },
                      child: Text(
                        'Refresh',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(child: Image.asset('assets/icons/coin.png')),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    child: Text(
                      '1 OMEGA',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Consumer<HttpGetBalanceAcc>(
                      builder: (context, value, child) => Text(
                        (value.data['free'] == null) ? '0' : value.data['free'],
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'USDT',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      child: Image.asset('assets/icons/bar-chart.png')),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Text(
                      'WALLET',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: DashboardAssetDropdown(),
                    // child: Text(
                    //   'TOKOCRYPTO',
                    //   style: TextStyle(
                    //       color: Colors.white,
                    //       fontFamily: 'Poppins',
                    //       fontSize: 12),
                    // ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Consumer<HttpGetBalanceAcc>(
                      builder: (context, value, child) => Text(
                        (value.data['free'] == null) ? '0' : value.data['free'],
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'USDT',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child:
                      Container(child: Image.asset('assets/icons/money.png')),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    child: Text(
                      'BONUS',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '500.100.000,00',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'USDT',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      child: Image.asset('assets/icons/dollar-symbol.png')),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    child: Text(
                      'TRADING PROFIT',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '500.100.000,00',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'USDT',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(child: Image.asset('assets/icons/coin.png')),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    child: Text(
                      'TOKEN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '100.000,00',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'USDT',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(child: Image.asset('assets/icons/coin.png')),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    child: Text(
                      'REWARD OMEGA',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '50.000,00',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'USDT',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
