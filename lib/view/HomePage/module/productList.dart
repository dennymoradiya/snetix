import 'package:flutter/material.dart';
import 'package:shope/api/api.dart';
import 'package:shope/view/category/catDetails/catproduct.dart';
import 'package:shope/view/proudctDtails/productDetails.dart';
// import 'package:unity_ads_plugin/unity_ads.dart';

class ProductList extends StatelessWidget {
  final bgcolor;
  final fgcolor;
  // final AsyncSnapshot<AllProduct> snapshot;
  final name;
  final catgoryshow;
  const ProductList({
    Key? key,
    required this.name,
    // required this.snapshot,
    required this.catgoryshow,
    this.bgcolor,
    this.fgcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List catli = [];

    List.generate(
        allProduct.data.length,
        (index) => {
              if (allProduct.data[index].pcat == catgoryshow)
                {catli.add(allProduct.data[index])}
            });
    return Container(
      height: 281,
      color: bgcolor ?? Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name ?? "Flash Sale",
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
                    // UnityAds.showVideoAd(placementId: 'Rewarded_Android');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (a) => CatProducat(
                                  lastname: catgoryshow,
                                )));
                  },
                  child: Text(
                    "See More",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
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
            height: 238,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: catli.length,
              itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (a) => ProductDetails(
                                  snapshot: catli[index],
                                )));
                  },
                  child: productCard(index: index, catli: catli[index])),
            ),
          ),
        ],
      ),
    );
  }

  Container productCard({index, catli}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: fgcolor ?? Colors.white70,
        border: Border.all(
          color: Color(0xffeaefff),
          width: 1,
        ),
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(right: 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 109,
            height: 109,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: NetworkImage(catli.pimage),
                fit: BoxFit.fitHeight,
                onError: (e, e1) => Icon(Icons.error),
              ),
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            width: 109,
            child: Text(
              catli.pname,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color(0xff223263),
                fontSize: 12,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
                letterSpacing: 0.50,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "Rs. " + catli.pprice,
            maxLines: 1,
            style: TextStyle(
              color: Color(0xff40bfff),
              fontSize: 12,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
              letterSpacing: 0.50,
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 15,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Rs. " + catli.offprice,
                  maxLines: 1,
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Color(0xff9098b1),
                    fontSize: 10,
                    letterSpacing: 0.50,
                  ),
                ),
                SizedBox(width: 8),
                SizedBox(
                  width: 59,
                  child: Text(
                    (int.parse(catli.pprice) / int.parse(catli.offprice) * 100)
                            .toStringAsFixed(2) +
                        "% Off",
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                    style: TextStyle(
                      color: Color(0xfffb7181),
                      fontSize: 10,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
