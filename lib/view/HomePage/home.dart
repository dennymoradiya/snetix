import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shope/main.dart';
import 'package:shope/view/HomePage/module/categoryc.dart';
import 'package:shope/view/HomePage/module/productList.dart';
import 'package:shope/view/HomePage/module/recommandBanner.dart';
import 'package:shope/view/category/catDetails/catproduct.dart';
import 'module/offerbanner.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          OfferbannerWidget(),
          CategoryWidget(),
          Obx(
            () => dataget.value
                ? Column(
                    children: [
                      ProductList(
                        name: "Women Fashion",
                        catgoryshow: "Women",
                      ),
                      ProductList(
                        name: "Flash Sale",
                        catgoryshow: "kids",
                      ),
                      ProductList(
                        name: "Man Fashion",
                        // bgcolor: Color(0xff65d3cd),
                        // fgcolor: Color(0xffe0feff),
                        catgoryshow: "Man",
                      ),
                    ],
                  )
                : Center(child: CircularProgressIndicator()),
          ),
          RecomendedproductbannerWidget(
            image:
                "https://img.freepik.com/free-vector/gradient-flash-sale-background_23-2149027975.jpg?size=338&ext=jpg",
            catgoryshow: "Mobile",
          ),
          Obx(
            () => dataget.value
                ? Column(
                    children: [
                      ProductList(
                        name: "Gadget's",
                        catgoryshow: "Mobile",
                      ),
                      ProductList(
                        name: "Bauty",
                        catgoryshow: "beauty",
                      ),
                      ProductList(
                        name: "Home care",
                        catgoryshow: "Home care",
                      ),
                    ],
                  )
                : Offstage(),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (a) => CatProducat(
                            lastname: "beauty",
                          )));
            },
            child: RecomendedproductbannerWidget(
              image:
                  "https://img.freepik.com/free-vector/mega-sale-banner-blue-yellow-colors_1017-32176.jpg?size=338&ext=jpg",
              catgoryshow: "beauty",
            ),
          ),
          Obx(
            () => dataget.value
                ? ProductList(
                    name: "Kids Fashion",
                    catgoryshow: "kids",
                  )
                : Container(),
          ),
        ],
      ),
    );
  }
}
