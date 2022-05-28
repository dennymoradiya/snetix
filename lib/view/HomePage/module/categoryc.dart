import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shope/globle/Globle.dart';
import 'package:shope/view/category/catDetails/catproduct.dart';
import 'package:shope/view/category/category.dart';

class CategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffeeffff),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 7, left: 10, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Category",
                  style: TextStyle(
                    color: Color(0xff223263),
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.50,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => Category());
                  },
                  child: Text(
                    "More Category",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xff40bfff),
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 85,
              child: ListView.builder(
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: catImage.length,
                itemBuilder: (context, index) => catcard(index: index),
              )),
        ],
      ),
    );
  }

  InkWell catcard({index}) {
    return InkWell(
      onTap: () {
        Get.to(() => CatProducat(lastname: catName[index]));
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(66),
              border: Border.all(
                color: Color(0xffeaefff),
                width: 1,
              ),
              image: DecorationImage(
                image: NetworkImage(catImage[index]),
                fit: BoxFit.fill,
                onError: (e, e1) => Icon(Icons.error),
              ),
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 70,
            height: 20,
            child: Text(
              catName[index],
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color(0xff9098b1),
                fontSize: 10,
                letterSpacing: 0.50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
