import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share/share.dart';
import 'package:shope/globle/Globle.dart';
import 'package:shope/view/setting/Orders/orders.dart';
import 'package:url_launcher/url_launcher.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Card(
            margin: EdgeInsets.all(10),
            elevation: 0.0,
            borderOnForeground: false,
            color: Colors.transparent,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    foregroundImage: NetworkImage(
                      box.get('photo').toString(),
                    ),
                    backgroundColor: Colors.blue,
                    maxRadius: 36,
                  ),
                ),
                SizedBox(width: 4),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(box.get('name').toString(),
                        style: TextStyle(fontSize: 17)),
                    Text(box.get('email').toString(),
                        style: TextStyle(fontSize: 13)),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Get.to(() => OrdersDetails());
                  },
                  leading: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'Order',
                    style: TextStyle(fontFamily: "Poppins"),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Detail's ",
                        style: TextStyle(fontSize: 14, fontFamily: "Poppins"),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                ListTile(
                  leading: Icon(
                    Icons.email_outlined,
                    color: Colors.blue,
                  ),
                  title: Text('Email', style: TextStyle(fontFamily: "Poppins")),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 125,
                        child: Text(
                          box.get('email').toString(),
                          style: TextStyle(fontSize: 14, fontFamily: "Poppins"),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                // ListTile(
                //   leading: Icon(
                //     Icons.phone_android_outlined,
                //     color: Colors.blue,
                //   ),
                //   title: Text('Phone'),
                //   trailing: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //       Text(
                //         '(+91) 9664922646 ',
                //         style: TextStyle(fontSize: 14),
                //       ),
                //       Icon(
                //         Icons.arrow_forward_ios,
                //         color: Colors.blue,
                //         size: 20,
                //       ),
                //     ],
                //   ),
                // ),
                ListTile(
                  leading: Icon(
                    Icons.ios_share_outlined,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    Share.share(APPURL, subject: "Let's shop with snetix");
                  },
                  title: Text('Share', style: TextStyle(fontFamily: "Poppins")),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Share with friend's ",
                        style: TextStyle(fontSize: 13, fontFamily: "Poppins"),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                ListTile(
                  leading: Icon(
                    Icons.rate_review_outlined,
                    color: Colors.blue,
                  ),
                  title:
                      Text('Rating', style: TextStyle(fontFamily: "Poppins")),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "share your expirence",
                        style: TextStyle(fontSize: 14, fontFamily: "Poppins"),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                ListTile(
                  leading: Icon(
                    Icons.contact_page_outlined,
                    color: Colors.blue,
                  ),
                  onTap: () async {
                    await canLaunch("http://wa.me/919664922646")
                        ? await launch("http://wa.me/919664922646")
                        : Get.snackbar("error ", "Can't lunch whatsapp");
                  },
                  title: Text('Contact us',
                      style: TextStyle(fontFamily: "Poppins")),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "on whatsapp",
                        style: TextStyle(fontSize: 13, fontFamily: "Poppins"),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                        size: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              child: Text(
                'Due to current situation we are witnessing a huge surge in calls/e-mails. There amy be adelay in respone from our side. kindly bear with us. ',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                    fontFamily: "Poppins"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
