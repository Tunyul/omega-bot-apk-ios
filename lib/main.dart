import 'package:omega/page/HomePage.dart';
import 'package:omega/page/LoginPage.dart';
import 'package:omega/page/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:omega/config/datashared.dart';

int initScren = 0;
  void main() {
    runApp(const MyApp());
  }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoadingBoarding(),
      routes: {
        'onboard': (context) => MultiProvider(
              providers: [
                ChangeNotifierProvider<HttpGetBalanceAcc>(
                  create: (_) => HttpGetBalanceAcc(),
                ),
              ],
              child: OnBoardingPage(),
            ),
        'home': (context) => MultiProvider(
              providers: [
                ChangeNotifierProvider<HttpGetBalanceAcc>(
                  create: (_) => HttpGetBalanceAcc(),
                ),
              ],
              child: HomePage(),
            ),
        'login': (context) => MultiProvider(
              providers: [
                ChangeNotifierProvider<HttpGetBalanceAcc>(
                  create: (_) => HttpGetBalanceAcc(),
                ),
              ],
              child: const LoginPage(),
            ),
      },
    );
  }
}

class LoadingBoarding extends StatefulWidget {
  const LoadingBoarding({Key? key}) : super(key: key);

  @override
  _LoadingBoardingState createState() => _LoadingBoardingState();
}

class _LoadingBoardingState extends State<LoadingBoarding> {
  @override
  void initState() {
    super.initState();
    loadScreen();
    setScreen();
  }

  loadScreen() {
    getScreen().then((value) {
      if (value == 0 || value == null) {
        // Navigator.of(context).pushNamed('onboard');
        Navigator.of(context).pushReplacementNamed('onboard');
      } else {
        getLogin().then((value) {
          if (value == true) {
            Navigator.of(context).pushReplacementNamed('home');
          } else {
            Navigator.of(context).pushReplacementNamed('login');
          }
        });
      }
    });
  }

  Future<int> getScreen() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    int cekScreen = preferences.getInt('initScreen') ?? 0;

    return cekScreen;
  }

  Future<bool> getLogin() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool cklogin = preferences.getBool('slogin') ?? false;

    return cklogin;
  }

  setScreen() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setInt('initScreen', 1);
    // await preferences.setString('stoken', '0');
    // await preferences.setString('skeybin', '0');
    // await preferences.setString('ssebin', '0');
    var clogin = preferences.getBool('slogin') ?? false;
  }

  ceklogin() async {
    final prefslogin = await SharedPreferences.getInstance();
    bool slogin;
    slogin = prefslogin.getBool('slogin') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
