import 'package:omega/page/PageDashboard.dart';
import 'package:omega/page/PageNews.dart';
import 'package:omega/page/PageTeam.dart';
import 'package:omega/page/PageTrading.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();
  int _selectedIndex = 0;

  // final List<Widget> screens = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            children: const [
              PageDashboard(),

              // _buildPage(
              //   icon: Icons.home,
              //   title: 'Home',
              //   color: Colors.blue,
              // ),
              PageTrading(),
              PageNews(),
              pageTeam(),
              pageTeam(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: Colors.black87,
          containerHeight: 50,
          selectedIndex: _selectedIndex,
          onItemSelected: (index) {
            setState(() {
              _selectedIndex = index;
              _controller.animateToPage(index,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.ease);
            });
          },
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: Colors.red,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.bar_chart),
              title: Text('Trading'),
              activeColor: Colors.amber,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.library_books),
              title: Text('News'),
              activeColor: Colors.blue,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.person),
              title: Text('Team'),
              activeColor: Colors.purple,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.chat_rounded),
              title: Text('Ebill'),
              activeColor: Colors.orange,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }

  _buildPage({IconData? icon, String? title, Color? color}) {
    return Container(
      color: color,
      child: Center(
        child: Column(
          children: [
            Icon(
              icon,
              size: 200,
              color: Colors.white,
            ),
            Text(
              title!,
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: 'Poppins'),
            )
          ],
        ),
      ),
    );
  }
}
