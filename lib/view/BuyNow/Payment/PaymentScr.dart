// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:shope/globle/Globle.dart';
// import 'package:shope/view/BuyNow/Conform/Conform.dart';

// class PaymentScreeen extends StatefulWidget {
//   PaymentScreeen({Key? key}) : super(key: key);

//   @override
//   _PaymentScreeenState createState() => _PaymentScreeenState();
// }

// class _PaymentScreeenState extends State<PaymentScreeen> {
//   TextEditingController cardnumber = TextEditingController();

//   TextEditingController cardname = TextEditingController();

//   TextEditingController cardexpire = TextEditingController();

//   TextEditingController cardcode = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.all(10),
//         child: ListView(
//           children: [
//             Container(
//               padding: EdgeInsets.all(10),
//               height: 190,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     height: 190,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       color: Color(0xff40bfff),
//                     ),
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 21,
//                       vertical: 24,
//                     ),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           width: 22,
//                           height: 22,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Color(0xffc4c4c4),
//                           ),
//                         ),
//                         Text(
//                           cardnumber.text.isEmpty
//                               ? "6326    9124    8124    9875"
//                               : cardnumber.text,
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 24,
//                             fontFamily: "Poppins",
//                             fontWeight: FontWeight.w700,
//                             letterSpacing: 0.50,
//                           ),
//                         ),
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               children: [
//                                 Opacity(
//                                   opacity: 0.50,
//                                   child: Text(
//                                     "CARD SAVE",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 10,
//                                       letterSpacing: 0.50,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(height: 0.33),
//                                 Text(
//                                   cardname.text.isEmpty
//                                       ? "Dominic Ovo"
//                                       : cardname.text,
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 10,
//                                     fontFamily: "Poppins",
//                                     fontWeight: FontWeight.w700,
//                                     letterSpacing: 0.50,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(width: 60),
//                             Column(
//                               children: [
//                                 Opacity(
//                                   opacity: 0.50,
//                                   child: Text(
//                                     "CARD HOLDER",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 10,
//                                       letterSpacing: 0.50,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(height: 0.33),
//                                 Text(
//                                   cardexpire.text.isEmpty
//                                       ? "19/2042"
//                                       : cardnumber.text,
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 10,
//                                     fontFamily: "Poppins",
//                                     fontWeight: FontWeight.w700,
//                                     letterSpacing: 0.50,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               child: Column(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Card Number",
//                     style: TextStyle(
//                       color: Color(0xff223263),
//                       fontSize: 14,
//                       fontFamily: "Poppins",
//                       fontWeight: FontWeight.w700,
//                       letterSpacing: 0.50,
//                     ),
//                   ),
//                   SizedBox(height: 12),
//                   Container(
//                     width: w - 20,
//                     height: 48,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       border: Border.all(
//                         color: Color(0xffeaefff),
//                         width: 1,
//                       ),
//                       color: Colors.white,
//                     ),
//                     padding: const EdgeInsets.only(
//                       left: 16,
//                     ),
//                     child: TextField(
//                       maxLength: 16,
//                       maxLines: 1,
//                       onChanged: (a) {
//                         setState(() {});
//                       },
//                       controller: cardnumber,
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.only(top: 12),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     height: 81,
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Expiration Date",
//                           style: TextStyle(
//                             color: Color(0xff223263),
//                             fontSize: 14,
//                             fontFamily: "Poppins",
//                             fontWeight: FontWeight.w700,
//                             letterSpacing: 0.50,
//                           ),
//                         ),
//                         SizedBox(height: 12),
//                         Container(
//                           width: 165,
//                           height: 48,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             border: Border.all(
//                               color: Color(0xffeaefff),
//                               width: 1,
//                             ),
//                             color: Colors.white,
//                           ),
//                           padding: const EdgeInsets.only(
//                             left: 16,
//                             right: 52,
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "Expiration Date",
//                                 style: TextStyle(
//                                   color: Color(0xff9098b1),
//                                   fontSize: 12,
//                                   letterSpacing: 0.50,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 81,
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Security Code",
//                           style: TextStyle(
//                             color: Color(0xff223263),
//                             fontSize: 14,
//                             fontFamily: "Poppins",
//                             fontWeight: FontWeight.w700,
//                             letterSpacing: 0.50,
//                           ),
//                         ),
//                         SizedBox(height: 12),
//                         Container(
//                           width: 165,
//                           height: 48,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             border: Border.all(
//                               color: Color(0xffeaefff),
//                               width: 1,
//                             ),
//                             color: Colors.white,
//                           ),
//                           padding: const EdgeInsets.only(
//                             left: 16,
//                             right: 59,
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "Security Code",
//                                 style: TextStyle(
//                                   color: Color(0xff9098b1),
//                                   fontSize: 12,
//                                   letterSpacing: 0.50,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.only(top: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Card Holder",
//                     style: TextStyle(
//                       color: Color(0xff223263),
//                       fontSize: 14,
//                       fontFamily: "Poppins",
//                       fontWeight: FontWeight.w700,
//                       letterSpacing: 0.50,
//                     ),
//                   ),
//                   SizedBox(height: 12),
//                   Container(
//                     width: w - 20,
//                     height: 48,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       border: Border.all(
//                         color: Color(0xffeaefff),
//                         width: 1,
//                       ),
//                       color: Colors.white,
//                     ),
//                     padding: const EdgeInsets.only(
//                       left: 16,
//                     ),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Text(
//                           "Enter Card Holder Name",
//                           style: TextStyle(
//                             color: Color(0xff9098b1),
//                             fontSize: 12,
//                             letterSpacing: 0.50,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomSheet: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Divider(
//             endIndent: 10,
//             indent: 10,
//           ),
//           Container(
//             height: 40,
//             margin: EdgeInsets.all(10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'Payament',
//                       style: TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.grey),
//                     ),
//                     Text(
//                       'Rs. 15.00',
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
//                     )
//                   ],
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
//                       Get.off(() => Conform());
//                     },
//                     child: Text('Conformed')),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
