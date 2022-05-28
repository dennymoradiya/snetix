import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shope/globle/Globle.dart';
import 'package:shope/view/proudctDtails/module/BootomButon.dart';
import 'package:shope/view/proudctDtails/module/prodetails.dart';
import 'package:shope/view/proudctDtails/module/productUP.dart';
import 'module/AlsoLikeCard.dart';
import 'module/CanclePolicyCard.dart';
import 'module/DeliveryCard.dart';

class ProductDetails extends StatelessWidget {
  final snapshot;
  const ProductDetails({Key? key, required this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.black)),
            SizedBox(
              width: w - 100,
              child: Text(
                snapshot.pname,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textWidthBasis: TextWidthBasis.parent,
                textScaleFactor: 0.9,
                style: TextStyle(color: Colors.black, fontFamily: "poppins"),
              ),
            ),
          ],
        ),
        elevation: 1,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          ProductUp(
            image: snapshot.imagelist,
          ),
          ProDetails(
            discountprice: snapshot.offprice,
            name: snapshot.pname,
            price: snapshot.pprice,
            rating: snapshot.prating,
            description: snapshot.pdescription,
            shortdesc: snapshot.pshortdesc,
          ),
          DeliveryCard(),
          CanclePolicyCard(),
          AlsoLikeCard(),
          // ProReview(),
          SizedBox(height: 100),
        ],
      ),
      bottomSheet: BottomBtn(snapshot: snapshot),
    );
  }
}
