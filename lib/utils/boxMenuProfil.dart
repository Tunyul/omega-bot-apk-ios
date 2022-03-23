import 'package:flutter/material.dart';

class BoxMenuProfil extends StatefulWidget {
  const BoxMenuProfil({Key? key}) : super(key: key);

  @override
  State<BoxMenuProfil> createState() => _BoxMenuProfilState();
}

class _BoxMenuProfilState extends State<BoxMenuProfil> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height * .12,
      width: MediaQuery.of(context).size.width,
      // color: Colors.red,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(top: 3),
                    child: Column(
                      children: [
                        Image.asset('assets/icons/profile.png'),
                        Text('Profile',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(top: 3),
                    child: Column(
                      children: [
                        Image.asset('assets/icons/asset.png'),
                        Text('Assets',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(top: 3),
                    child: Column(
                      children: [
                        Image.asset('assets/icons/security.png'),
                        Text('Security',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(top: 3),
                    child: Column(
                      children: [
                        Image.asset('assets/icons/share-link.png'),
                        Text('Share Link',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(top: 3),
                  child: Column(
                    children: [
                      Image.asset('assets/icons/fund.png'),
                      Text('Fund Statement',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ))
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(top: 3),
                  child: Column(
                    children: [
                      Image.asset('assets/icons/ecosystem.png'),
                      Text('Ecosystem',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ))
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(top: 3),
                  child: Column(
                    children: [
                      Image.asset('assets/icons/medal24.png'),
                      Text('Reward',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ))
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(top: 3),
                  child: Column(
                    children: [
                      Image.asset('assets/icons/logout.png'),
                      Text('Logout',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
