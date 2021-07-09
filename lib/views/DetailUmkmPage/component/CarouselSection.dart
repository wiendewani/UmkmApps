import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';

class CarouselSection extends StatefulWidget {
  @override
  _CarouselSectionState createState() => _CarouselSectionState();
}

class _CarouselSectionState extends State<CarouselSection> {
  int _current = 0;
  List _imgList = [
    'kripik.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  Widget imageContent(imgUrl) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 240,
          decoration: BoxDecoration(
            color: PaletteColor.grey40,
            image: DecorationImage(
              image: AssetImage(
                'assets/images/$imgUrl',
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.8,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              stops: [0.1, 0.9],
              colors: [
                PaletteColor.grey.withOpacity(.5),
                Color(0xFF5D5D5D).withOpacity(0),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PaletteColor.primarybg2,
      child: Stack(
        children: [
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: false,
                  height: 240.0,
                  viewportFraction: 1.0,
                  aspectRatio: 2.0,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(seconds: 2),
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: _imgList.map((imgUrl) {
                return Builder(builder: (BuildContext buildContext) {
                  return imageContent(imgUrl);
                });
              }).toList(),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(
                  _imgList,
                  (index, url) {
                    return Container(
                      width: 20.0,
                      height: 5.0,
                      margin: EdgeInsets.only(
                        bottom: 20.0,
                      ),
                      decoration: BoxDecoration(
                        shape: _current == index
                            ? BoxShape.rectangle
                            : BoxShape.circle,
                        borderRadius: _current == index
                            ? BorderRadius.all(
                                Radius.circular(
                                  SpacingDimens.spacing16,
                                ),
                              )
                            : null,
                        color: _current == index
                            ? PaletteColor.primary40
                            : PaletteColor.grey40,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
