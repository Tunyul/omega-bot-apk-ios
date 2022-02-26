import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TextSlider extends StatefulWidget {
  TextSlider({Key? key}) : super(key: key);

  @override
  _TextSliderState createState() => _TextSliderState();
}

class _TextSliderState extends State<TextSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          // color: Colors.red,
          ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset('assets/icons/megaphone2.png'),
          ),
          Expanded(
            flex: 9,
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                scrollDirection: Axis.vertical,
              ),
              items: [
                '1.2.3.5.4.5.6.7.8.9.10.11.12.13.14.15',
                '1.2.3.5.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20',
                '1.2.3.5.4.5.6.7.8.9.10.11.12.13.14.15.16.17.18.19.20.21.22.23.24.25'
              ]
                  .map(
                    (item) => Container(
                      child: Text(
                        item,
                        style: TextStyle(
                            color: Colors.white, fontSize: 15 < 20 ? 12 : 15),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}


// child: CarouselSlider(
//             options: CarouselOptions(
//                 height: 20.0, autoPlay: true, scrollDirection: Axis.vertical),
//             items: [
//               'loremloremloremloremlorem',
//               'texttetxtexttexttext',
//               'stringstringstring'
//             ].map((i) {
//               return Builder(
//                 builder: (BuildContext context) {
//                   return Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         i,
//                         style: TextStyle(
//                             color: Colors.white, fontSize: 100 < 300 ? 9 : 11),
//                       )
//                     ],
//                   );
//                 },
//               );
//             }).toList(),
//           ),
