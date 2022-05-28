import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:shope/api/api.dart';
import 'package:shope/globle/Globle.dart';
import 'package:shope/view/category/catDetails/catproduct.dart';
// import 'package:unity_ads_plugin/unity_ads.dart';

class CatItem extends StatelessWidget {
  CatItem({Key? key}) : super(key: key);
  List catli = [];
  @override
  Widget build(BuildContext context) {
    List.generate(allProduct.data.length, (ine) {
      if (allProduct.data[ine].pcat == "man") catli.add(allProduct.data[ine]);
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text(
            "Top Category",
            style: TextStyle(
              color: Color(0xff223263),
              fontSize: 16,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
              letterSpacing: 0.50,
            ),
          ),
        ),
        ResponsiveGridList(
          desiredItemWidth: 80,
          scroll: false,
          minSpacing: 10,
          children: List.generate(
            catImage.length,
            (index) {
              return catcard(index: index);
            },
          ),
        ),
      ],
    );
  }

  Column catcard({index}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            // UnityAds.showVideoAd(placementId: 'Rewarded_Android');
            Get.to(() => CatProducat(
                  lastname: catName[index],
                ));
          },
          child: Container(
            margin: EdgeInsets.only(left: 10),
            height: 65,
            width: 65,
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
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(
          width: 70,
          height: 20,
          child: Text(
            catName[index] ?? "",
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
    );
  }
}
