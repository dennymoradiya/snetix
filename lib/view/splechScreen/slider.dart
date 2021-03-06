import 'package:flutter/material.dart';


class SliderPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  SliderPage(
      {required this.title, required this.description, required this.image});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // SvgPicture.asset(
          //   image,
          //   width: width * 0.6,
          // ),
          SizedBox(
            height: 60,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'Nunito',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              description,
              style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
                fontSize: 18,
                letterSpacing: 0.7,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
