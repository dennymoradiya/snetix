import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';
import 'package:shope/globle/Globle.dart';
import 'package:shope/view/HomePage/home.dart';
import 'package:shope/view/cart/cart.dart';
import 'package:shope/view/category/category.dart';
import 'package:shope/view/setting/Orders/orders.dart';
import 'package:shope/view/setting/setting.dart';
// import 'package:unity_ads_plugin/ad/unity_banner_ad.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;
  late PageController _pageController;
  void setserceen() async {
    await box.put("firsttime", true);
  }

  @override
  void initState() {
    super.initState();
    setserceen();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(box.get('name').toString()),
              accountEmail: Text(box.get('email').toString()),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blue
                        : Colors.white,
                child: Text(
                  box.get('name').toString().substring(0, 1),
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text(
                    'Home Page',
                    style: TextStyle(fontFamily: "Poppins"),
                  ),
                  onTap: () {
                    Get.back();
                    _pageController.jumpToPage(0);
                  },
                  trailing: Icon(Icons.home_outlined),
                ),
                ListTile(
                  title: Text(
                    'Order',
                    style: TextStyle(fontFamily: "Poppins"),
                  ),
                  onTap: () {
                    Get.to(() => OrdersDetails());
                  },
                  trailing: Icon(Icons.shopping_bag_outlined),
                ),
                ListTile(
                  title: Text(
                    'Cart',
                    style: TextStyle(fontFamily: "Poppins"),
                  ),
                  onTap: () {
                    Get.to(() => Cart());
                  },
                  trailing: Icon(Icons.shopping_cart_outlined),
                ),
                ListTile(
                  title: Text(
                    'Category',
                    style: TextStyle(fontFamily: "Poppins"),
                  ),
                  onTap: () {
                    Get.to(() => Category());
                  },
                  trailing: Icon(Icons.category_outlined),
                ),
                Divider(endIndent: 10, indent: 10),
                ListTile(
                  title: Text(
                    'Share',
                    style: TextStyle(fontFamily: "Poppins"),
                  ),
                  onTap: () {
                    Share.share(APPURL, subject: "Let's shop with snetix");
                  },
                  trailing: Icon(Icons.share_outlined),
                ),
                // ListTile(
                //   title: Text(
                //     'Review',
                //     style: TextStyle(fontFamily: "Poppins"),
                //   ),
                //   onTap: () async {
                //     await canLaunch(APPURL)
                //         ? await launch(APPURL)
                //         : Get.snackbar("Can't Lunche", "some thing error");
                //   },
                //   trailing: Icon(Icons.rate_review_outlined),
                // ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              child: Image.asset(
                "assets/images/logo1.png",
                height: 22,
              ),
            ),
            Text(
              "SNETIX",
              style: TextStyle(color: Colors.black, fontFamily: "Poppins"),
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white70,
      ),
      bottomNavigationBar: BottomNavyBar(
        showElevation: false,
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text(' Home'),
            icon: Icon(Icons.home),
            inactiveColor: Colors.blueGrey,
            activeColor: Colors.blue,
          ),
          BottomNavyBarItem(
            title: Text('category'),
            icon: Icon(Icons.apps),
            inactiveColor: Colors.grey,
          ),
          BottomNavyBarItem(
            title: Text('cart'),
            icon: Icon(Icons.shopping_cart),
            inactiveColor: Colors.blueGrey,
          ),
          BottomNavyBarItem(
            title: Text('setting'),
            icon: Icon(Icons.settings),
            inactiveColor: Colors.blueGrey,
          ),
        ],
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() => _currentIndex = index);
                },
                children: <Widget>[
                  HomePage(),
                  Category(),
                  Cart(),
                  Setting(),
                ],
              ),
            ),
            // Container(
            //   height: 0.0,
            //   child: UnityBannerAd(placementId: "Banner_Android"),
            // ),
          ],
        ),
      ),
    );
  }
}
