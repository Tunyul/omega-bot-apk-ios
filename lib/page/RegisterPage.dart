import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mqHeight = MediaQuery.of(context).size.height;
    final mqWidht = MediaQuery.of(context).size.width;

    final bodyHeight = mqHeight - MediaQuery.of(context).padding.top;
    final bodyWidht = mqWidht - MediaQuery.of(context).padding.vertical;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: Stack(
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
                  'OMEGA1.1a',
                  style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.white,
                      fontFamily: 'Poppins'),
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
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 0.1, left: 0.1),
                                child: Container(
                                  // height: mqHeight * 0.2,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 7,
                              child: TextField(
                                obscureText: true,
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
                                  onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
