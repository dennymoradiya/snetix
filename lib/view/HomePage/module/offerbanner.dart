import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shope/globle/Globle.dart';
import 'package:shope/view/category/catDetails/catproduct.dart';

class OfferbannerWidget extends StatefulWidget {
  @override
  _OfferbannerWidgetState createState() => _OfferbannerWidgetState();
}

class _OfferbannerWidgetState extends State<OfferbannerWidget> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: List.generate(
          offerBImage.length,
          (index) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (a) => CatProducat(
                                lastname: offerCatName[index],
                              )));
                },
                child: Container(
                    height: 206,
                    color: Color(0xffeaffff),
                    margin: EdgeInsets.all(10),
                    child: Stack(children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 206,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(offerBImage[index]),
                            fit: BoxFit.cover,onError: (e, e1) => Icon(Icons.error),

                          ),
                        ),
                      ),
                    ])),
              )),
      options: CarouselOptions(
        height: 207,
        aspectRatio: 16 / 9,
        viewportFraction: 0.9,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
