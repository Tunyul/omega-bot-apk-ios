import 'package:omega/page/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset("assets/images/robotoy3.png"),
        title: 'Konten 1.3',
        body:
            'Isi Konten 1 adalah informasi aplikasi sekilas tentang penggunaan aplikasi untuk user interface',
      ),
      PageViewModel(
        image: Image.asset("assets/images/robotoy2.png"),
        title: 'Konten 2',
        body:
            'Isi Konten 2 adalah informasi aplikasi sekilas tentang penggunaan aplikasi untuk user interface',
      ),
      PageViewModel(
        image: Image.asset("assets/images/robotoy1.png"),
        title: 'Konten 3',
        // bodyWidget: Container(
        //   width: 10,
        //   height: 10,
        //   decoration: BoxDecoration(color: Colors.blue),
        // ),
        body:
            'Isi Konten 3 adalah informasi aplikasi sekilas tentang penggunaan aplikasi untuk user interface',
      ),
    ];
  }

  void goToLogin(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginPage()),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        done: Text(
          'Great!',
          style: TextStyle(color: Colors.black),
        ),
        skip: Text(
          'Skip',
          style: TextStyle(color: Colors.black),
        ),
        next: Icon(Icons.arrow_forward),
        onDone: () => goToLogin(context),
        onSkip: () => goToLogin(context),
        showDoneButton: true,
        showNextButton: true,
        showSkipButton: true,
      ),
    );
  }
}
