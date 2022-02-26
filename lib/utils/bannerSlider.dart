import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:omega/utils/imageSlider.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({Key? key}) : super(key: key);

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> imgList = [
    // 'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    // 'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    // 'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'assets/images/slide1.jpg',
    'assets/images/slide2.jpg',
    'assets/images/slide3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // ImageSlideshow(
          //   /// Width of the [ImageSlideshow].
          //   width: double.infinity,

          //   /// Height of the [ImageSlideshow].
          //   height: MediaQuery.of(context).size.height * 0.3,

          //   /// The page to show when first creating the [ImageSlideshow].
          //   initialPage: 0,

          //   /// The color to paint the indicator.
          //   indicatorColor: Colors.blue,

          //   /// The color to paint behind th indicator.
          //   indicatorBackgroundColor: Colors.grey,

          //   /// The widgets to display in the [ImageSlideshow].
          //   /// Add the sample image file into the images folder
          //   children: [
          //     Image.asset(
          //       'assets/images/slide1.jpg',
          //       fit: BoxFit.cover,
          //     ),
          //     Image.asset(
          //       'assets/images/slide2.jpg',
          //       fit: BoxFit.cover,
          //     ),
          //     Image.asset(
          //       'assets/images/slide3.jpg',
          //       fit: BoxFit.cover,
          //     ),
          //   ],

          //   /// Called whenever the page in the center of the viewport changes.
          //   onPageChanged: (value) {
          //     // print('Page changed: $value');
          //   },

          //   /// Auto scroll interval.
          //   /// Do not auto scroll with null or 0.
          //   autoPlayInterval: 3450,

          //   /// Loops back to first slide.
          //   isLoop: true,
          // ),
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: imgList
                .map(
                  (item) => Container(
                    margin: EdgeInsets.all(12.0),
                    child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: 1000.0,
                    ),
                  ),
                )
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                // onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 10.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.blue)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
