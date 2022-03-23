import 'package:omega/config/datashared.dart';
import 'package:omega/page/Notifikasi.dart';
import 'package:omega/page/PageProfil.dart';
import 'package:omega/utils/bannerSlider.dart';
import 'package:omega/utils/dashboardAssets.dart';
import 'package:omega/utils/dashboardChart.dart';
import 'package:omega/utils/dashboardIsiProfit.dart';
import 'package:omega/utils/dashboardLiveTicker.dart';
import 'package:omega/utils/dashboardMenu.dart';
import 'package:omega/utils/dashboardProfit.dart';
import 'package:omega/utils/dashboardUtama.dart';
import 'package:omega/utils/dropdownBahasa.dart';
import 'package:omega/utils/imageSlider.dart';
import 'package:omega/utils/textSlider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageDashboard extends StatefulWidget {
  const PageDashboard({Key? key}) : super(key: key);

  @override
  State<PageDashboard> createState() => _PageDashboardState();
}

class _PageDashboardState extends State<PageDashboard> {
  String nlogin = '';

  Future<String> getName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    nlogin = preferences.getString('sname') ?? '';

    return nlogin;
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return FutureBuilder(
      future: getName(),
      builder: (context, _) => Scaffold(
        extendBodyBehindAppBar: true,
        // backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PageProfil()));
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              child: Stack(
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        height: 40,
                        width: 40,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Center(
                    child: Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
          title: Text(
            nlogin,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: dropdown_bahasa(),
            ),
            Container(
              margin: const EdgeInsets.only(left: 30.0),
              child: Icon(Icons.headphones),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => page_notifikasi()));
              },
              child: Container(
                margin: const EdgeInsets.all(15.0),
                child: Icon(Icons.notifications_active),
              ),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // ImageSlider(),
                  BannerSlider(),
                  // CarouselDemo(),
                  TextSlider(),
                  DashboardMenu(),
                  DashboardUtama(),
                  // DashboardChart(),
                  DashboardLiveTicker(),
                  // DashboardAssets(),
                  ChangeNotifierProvider(
                    create: (context) => HttpGetBalanceAcc(),
                    child: DashboardAssets(),
                  ),
                  DashboardProfit(),
                  DashboardIsiProfit(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
