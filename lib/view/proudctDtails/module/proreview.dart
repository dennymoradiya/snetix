// import 'package:flutter/material.dart';
// import 'package:shope/globle/Globle.dart';

// class ProReview extends StatelessWidget {
//   const ProReview({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Container(
//         margin: EdgeInsets.all(10),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Review Product",
//                       style: TextStyle(
//                         color: Color(0xff223263),
//                         fontSize: 14,
//                         fontFamily: "Poppins",
//                         fontWeight: FontWeight.w700,
//                         letterSpacing: 0.50,
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         for (var i = 0; i < 5; i++)
//                           Icon(Icons.star, color: Colors.amber),
//                         Text(
//                           "4.5",
//                           style: TextStyle(
//                             color: Color(0xff9098b1),
//                             fontSize: 10,
//                             fontFamily: "Poppins",
//                             fontWeight: FontWeight.w700,
//                             letterSpacing: 0.50,
//                           ),
//                         ),
//                         SizedBox(width: 5),
//                         Text(
//                           "(5 Review)",
//                           style: TextStyle(
//                             color: Color(0xff9098b1),
//                             fontSize: 10,
//                             letterSpacing: 0.50,
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//                 Text(
//                   "See More",
//                   textAlign: TextAlign.right,
//                   style: TextStyle(
//                     color: Color(0xff40bfff),
//                     fontSize: 14,
//                     fontFamily: "Poppins",
//                     fontWeight: FontWeight.w700,
//                     letterSpacing: 0.50,
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               width: 183,
//               height: 16,
//               child: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: 96,
//                     height: 16,
//                     child: Stack(
//                       children: [],
//                     ),
//                   ),
//                   SizedBox(width: 5.50),
//                   SizedBox(width: 5.50),
//                 ],
//               ),
//             ),
//             SizedBox(height: 1),
//             Column(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   width: 176,
//                   height: 48,
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Align(
//                           alignment: Alignment.topLeft,
//                           child: Container(
//                             width: 48,
//                             height: 48,
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                             ),
//                             child: FlutterLogo(size: 48),
//                           ),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Align(
//                           alignment: Alignment.topRight,
//                           child: Text(
//                             "James Lawson",
//                             style: TextStyle(
//                               color: Color(0xff223263),
//                               fontSize: 14,
//                               fontFamily: "Poppins",
//                               fontWeight: FontWeight.w700,
//                               letterSpacing: 0.50,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Divider(),
//                 SizedBox(height: 5),
//                 Text(
//                   "Air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
//                   style: TextStyle(
//                     color: Color(0xff9098b1),
//                     fontSize: 12,
//                     letterSpacing: 0.50,
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 Container(
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       for (var i = 0; i < 3; i++)
//                         Container(
//                           width: 72,
//                           height: 72,
//                           margin: EdgeInsets.all(10),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8),
//                             image: DecorationImage(
//                                 image: AssetImage(product1[i]),
//                                 fit: BoxFit.fitWidth),
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 SizedBox(
//                   width: 343,
//                   child: Text(
//                     "December 10, 2016",
//                     style: TextStyle(
//                       color: Color(0xff9098b1),
//                       fontSize: 10,
//                       letterSpacing: 0.50,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
