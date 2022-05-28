import 'package:hive/hive.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

var w;
const BASEURL = "http://nodeshope.herokuapp.com/";
const APPURL =
    "https://play.google.com/store/apps/details?id=com.sahilr.snetix";
late Box box;
bool setstate = false;
bool firstTime = box.get('firsttime') ?? false;
var u;
String myUid = '';
String myNAME = '';
String myEMAIL = '';
String myPic = '';

sendData({name, about, photoUrl, email, uid}) async {
  // var status = await OneSignal.shared.getDeviceState();
  // curplayerId = status!.userId;
  return await FirebaseFirestore.instance.collection('Userinfo').doc(uid).set({
    'id': uid,
    'Name': name,
    'photo': photoUrl,
    "email": email,
    // 'playerID': curplayerId,
    'time': DateTime.now(),
  });
}

List catName = [
  "Man",
  "Women",
  "Election",
  "Home care",
  "Application",
  "travaling",
  "care",
  "prod",
  "Mobile",
  "beauty"
];

List catImage = [
  "https://rukminim1.flixcart.com/flap/128/128/image/1dfca1558f649fc3.jpg?q=100",
  "https://images-na.ssl-images-amazon.com/images/G/31/img2020/fashion/WA_2020/AW_Flip/topbannerscroll/PC/tops._SY530_QL85_.jpg",
  "https://rukminim1.flixcart.com/flap/128/128/image/929c19aa238c1ed5.jpg?q=100",
  "https://rukminim1.flixcart.com/flap/128/128/image/40f9e12bcef2472f.jpg?q=100",
  "https://rukminim1.flixcart.com/flap/128/128/image/f9002812e5673020.jpg?q=100",
  "https://rukminim1.flixcart.com/flap/128/128/image/a7367070e1d78018.jpg?q=100",
  "https://rukminim1.flixcart.com/flap/128/128/image/6cd38f9cbe1261ce.jpg?q=100",
  "https://rukminim1.flixcart.com/flap/128/128/image/5c9cee8c470ab852.jpg?q=100",
  "https://rukminim1.flixcart.com/flap/128/128/image/41735aded44a11a2.jpg?q=100",
  "https://img.freepik.com/free-vector/beauty-salon-logo-template_22857-6.jpg?size=128&ext=jpg",
];

List offerBImage = [
  "https://image.freepik.com/free-photo/retro-man-dressed-shirt-lies-floor-posing_171337-9906.jpg",
  "https://image.freepik.com/free-photo/excited-stylish-curly-haired-girl-sunglasses-pointing-right-showing-way_176420-20193.jpg",
  "https://www.jiomart.com/images/cms/aw_rbslider/slides/1628272681_web.jpg"
];

List offerCatName = [
  "Man",
  "Women",
  "beauty",
];

// List BRENDImage = [
//   "https://images-workbench.99static.com/lOqkMGLlctdAKKmjEeFxQZSFqh8=/http://s3.amazonaws.com/projects-files/101/10165/1016553/09deac31-4bdc-4bb6-b6f2-e644b4ff0500.png",
//   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReGvJWQilQ_Dal-tP6QLckgnp0ZUKYoAeq-XEcd7KlDETXlPCsk976uCZXae8eNa_OSGc&usqp=CAU",
//   "https://qph.fs.quoracdn.net/main-qimg-9495358bd88ac696fd49e47f647d6abd",
//   "https://cdn.shopify.com/s/files/1/0142/1056/4182/files/images_1_large.png",
//   "https://image.shutterstock.com/image-vector/men-fashion-vector-logo-design-260nw-589496405.jpg",
//   "https://t4.ftcdn.net/jpg/02/48/41/93/360_F_248419312_JiP5h9OBTgZsTRnHZwntiiShjHveffPp.jpg",
//   "https://thumbs.dreamstime.com/b/vector-logo-template-men-s-club-m-letter-sign-design-abstract-icon-103920305.jpg",
//   "https://img.freepik.com/free-vector/letter-m-logo-design-elegant-luxury-fashion-cosmetics-logotype-linear-style_126523-2771.jpg?size=626&ext=jpg&ga=GA1.2.1183271439.1627862400",
// ];
// List BRENDname= [
//   "Lailekik",
//   "Adidas",
//   "Armani",
//   "Louis",
//   "Brend",
//   "Fasion",
//   "Metopolis",
//   "Mirecle",
// ];
