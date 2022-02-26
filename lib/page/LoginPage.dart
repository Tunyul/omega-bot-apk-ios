import 'dart:async';

import 'package:lottie/lottie.dart';
import 'package:omega/config/datashared.dart';
import 'package:omega/page/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:convert/convert.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passControl = TextEditingController();

  bool visible = false;

  // final String url = 'https://reqres.in/api/login';
  // final String url = 'http://api.ramboai.net/login/login.php?';
  final String url = 'https://omegabot.id/api/login?';
  Map<String, dynamic> _data = {};

  Map<String, dynamic> get data => _data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // _cekLogin();
  }

  _cekLogin() async {
    setState(() {
      visible = true;
    });
    final prefs = await SharedPreferences.getInstance();
    var respone = await http.post(Uri.parse(url),
        body: ({
          'email': emailControl.text,
          'password': passControl.text,
          'apiKey': 'PassKey2022'
        }));

    var isiEmail = emailControl.text;

    if (emailControl.text == '' || passControl.text == '') {
      Timer(Duration(seconds: 5), () {
        setState(() {
          visible = false;
          print('kosong');
          print(respone.statusCode);
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Lottie.asset('assets/animation/lottie_warning.json'),
                      Text(
                        "Warning!",
                        style: TextStyle(
                            fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Email or Password dont in field!",
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'OK',
                        style: TextStyle(fontFamily: 'Poppins'),
                      ))
                ],
              );
            },
          );
        });
      });
    } else {
      if (respone.statusCode == 200) {
        print('sukses terhubung');
        var hasil = json.decode(respone.body);
        print(hasil);
        if (hasil['error'] == false) {
          prefs.setBool('slogin', true);
          var user = jsonDecode(respone.body)['user'];
          print(user);
          _data = user;

          prefs.setString('sname', _data['name']);
          prefs.setString('semail', _data['email']);
          prefs.setString('spassword', passControl.text);

          print(_data['name']);
          print(_data['email']);

          print('sukses login');
          setState(() {
            visible = false;
          });
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(
                  'Succes!',
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
                content: Text(
                  'Welcome $isiEmail',
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
                actions: [
                  FlatButton(
                      onPressed: () {
                        // Navigator.of(context).pop();
                        goToHome(context);
                      },
                      child: Text(
                        'OK',
                        style: TextStyle(fontFamily: 'Poppins'),
                      ))
                ],
              );
            },
          );
        } else {
          print('gagal login');

          Timer(Duration(seconds: 5), () {
            setState(() {
              visible = false;
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          Lottie.asset('assets/animation/lottie_warning.json'),
                          Text(
                            "Warning!",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Email or Password its wrong!",
                            style: TextStyle(
                                fontFamily: 'Poppins', fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'OK',
                            style: TextStyle(fontFamily: 'Poppins'),
                          ))
                    ],
                  );
                },
              );
            });
          });
        }
      } else {
        Timer(Duration(seconds: 5), () {
          setState(() {
            visible = false;
            print('gagal');
            throw Exception('failed konek' + respone.body);
          });
        });
      }
    }

    // var data = jsonDecode(respone.body);
  }

  _cekMember() async {}

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (_) => ChangeNotifierProvider(
                  create: (context) => HttpGetBalanceAcc(),
                  child: HomePage(),
                )),
      );

  @override
  Widget build(BuildContext context) {
    final mqHeight = MediaQuery.of(context).size.height;
    final mqWidht = MediaQuery.of(context).size.width;

    final bodyHeight = mqHeight - MediaQuery.of(context).padding.top;
    final bodyWidht = mqWidht - MediaQuery.of(context).padding.vertical;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Positioned(
            top: bodyHeight * 0.05,
            child: Container(
              // color: Colors.black26,
              child: Image.asset(
                'assets/images/btc_onboard.png',
                width: bodyHeight * 0.10,
              ),
            ),
          ),
          Positioned(
            top: bodyHeight * 0.10,
            right: 0,

            // ),
            child: Container(
              child: Image.asset(
                'assets/images/eth_onboard.png',
                width: bodyHeight * 0.12,
              ),
              // color: Colors.black45,
            ),
          ),
          Positioned(
            top: bodyHeight * 0.30,
            left: 0,
            child: Container(
              // color: Colors.black38,
              child: Image.asset('assets/images/oth3_login.png'),
              width: bodyHeight * 0.12,
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                'OMEGA',
                style: TextStyle(
                    fontSize: 36.0, color: Colors.white, fontFamily: 'Poppins'),
              ),
            ),
          ),
          Positioned(
            top: bodyHeight * 0.42,
            left: 0,
            right: 0,
            child: Container(
              // color: Colors.black12,
              height: MediaQuery.of(context).size.height,
              // height: 200,
              decoration: BoxDecoration(
                // color: Colors.black12,
                color: Color(0xffF3F5F6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: bodyHeight * 0.20,
          //   // left: bodyWidht * .2,
          //   right: 0,
          //   // height: bodyHeight * 0.30,
          //   child: Container(
          //     // color: Colors.black12,
          //     // width: mqWidht * .5,
          //     child: Image.asset(
          //       'assets/images/robotoy1.png',
          //       width: bodyHeight * 0.12,
          //     ),
          //   ),
          // ),
          Positioned(
            top: bodyHeight * 0.20,
            left: bodyWidht * .3,
            child: Container(
              // color: Colors.black26,
              child: Image.asset(
                'assets/images/robotoy1.png',
                width: bodyHeight * 0.25,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 100,
                    offset: Offset(10, 50), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: bodyHeight * 0.45,
            left: 0,
            right: 0,
            child: Container(
              // color: Colors.black12,
              height: MediaQuery.of(context).size.height,
              // height: 200,
              decoration: BoxDecoration(
                  // color: Colors.black12,
                  // color: Colors.white,
                  ),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 28.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 21.0, left: 21.0, top: 15.0, bottom: 5.0),
                    child: Container(
                      // color: Colors.black12,
                      width: mqWidht,
                      height: mqHeight * .2,
                      decoration: BoxDecoration(
                          // color: Colors.black38,
                          // borderRadius: BorderRadius.all(
                          //   Radius.circular(30),
                          // ),
                          ),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 7,
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              controller: emailControl,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    borderSide: BorderSide.none),
                                filled: true,
                                // fillColor: Colors.black12,
                                hintText: 'Email',
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Color(0xFFFDC879),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 0.1, left: 0.1),
                            child: Container(
                              // height: mqHeight * 0.2,
                              color: Colors.blue,
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: TextField(
                              obscureText: true,
                              controller: passControl,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                    borderSide: BorderSide.none),
                                filled: true,
                                // fillColor: Colors.black26,
                                hintText: 'Password',
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xff767DFF),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 21.0, left: 21.0),
                    child: Container(
                      width: mqWidht,
                      height: mqHeight * .07,
                      // decoration: BoxDecoration(color: Colors.black12),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Text(
                              'Forget Email/Password?',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  // color: Color(0xff767DFF),
                                  color: Colors.blue,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: RaisedButton(
                                color: Color(0xff191C32),
                                // onPressed: () => goToHome(context),
                                onPressed: () {
                                  _cekLogin();
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        // right: 21.0,
                        // left: 21.0,
                        // top: 2.0,
                        ),
                    child: Container(
                      // height: mqHeight * 0.05,
                      // decoration: BoxDecoration(
                      //   color: Colors.black12,
                      // ),
                      child: SignInButton(
                        Buttons.Google,
                        onPressed: () {},
                        padding: EdgeInsets.only(right: 10, left: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        // text: 'Google Account',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            maintainSize: true,
            maintainState: true,
            visible: visible,
            maintainAnimation: true,
            child: AlertDialog(
                title: Text('Please Wait....'),
                content: Lottie.asset(
                    'assets/animation/lottie_loading_crypto.json')),
          ),
        ],
      ),
    );
  }
}
