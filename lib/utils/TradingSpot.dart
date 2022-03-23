import 'package:flutter/material.dart';

class TradingSpot extends StatefulWidget {
  const TradingSpot({Key? key}) : super(key: key);

  @override
  State<TradingSpot> createState() => _TradingSpotState();
}

class _TradingSpotState extends State<TradingSpot> {
  var _var1 = false;
  var _var2 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.amber.shade300,
                width: 1.5,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                ),
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 25.0,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            'Setting',
                            style: TextStyle(
                              color: Colors.amber,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          // color: Colors.green,
                          child: Text(
                            'Amount per Trade',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          // color: Colors.red,
                          child: TextField(
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              fillColor: Colors.grey.shade700,
                              labelStyle: const TextStyle(color: Colors.white),
                              suffixText: 'USDT',
                              hintText: '1000.90',
                              suffixStyle: const TextStyle(
                                  color: Colors.white, fontSize: 11),
                              // prefixStyle: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: const Icon(
                          Icons.notification_important_rounded,
                          size: 15,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          // color: Colors.green,
                          child: Text(
                            'Max Limit',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          // color: Colors.red,
                          child: Column(
                            children: [
                              SizedBox(
                                child: TextField(
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 12),
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey.shade700,
                                    labelStyle:
                                        const TextStyle(color: Colors.white),
                                    suffixText: '%',
                                    hintText: '50.0',
                                    suffixStyle: const TextStyle(
                                        color: Colors.white, fontSize: 11),
                                    // prefixStyle: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const Text(
                                'Recommend 75%',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 9.0,
                                    fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: const Icon(
                          Icons.notification_important_rounded,
                          size: 15,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: SwitchListTile(
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
                      'Martingale Strategy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    secondary: Image.asset('assets/icons/expand.png'),
                  ),
                ),
                Container(
                  child: SwitchListTile(
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
                      'Profit Type (Compund)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    secondary: Image.asset('assets/icons/expand.png'),
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 20.0)),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      color: Colors.green,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Text(
                        'Start',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      color: Colors.yellow,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Text(
                        'Stop',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      color: Colors.red,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Text(
                        'Clear',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontFamily: 'Poppins'),
                      ),
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
