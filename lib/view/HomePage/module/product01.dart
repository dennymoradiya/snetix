// import 'package:flutter/material.dart';
// import 'package:responsive_grid/responsive_grid.dart';
// import 'package:shope/globle/Globle.dart';

// class Product01Widget extends StatefulWidget {
//   @override
//   _Product01WidgetState createState() => _Product01WidgetState();
// }

// class _Product01WidgetState extends State<Product01Widget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ResponsiveGridList(
//           scroll: false,
//           desiredItemWidth: 150,
//           minSpacing: 10,
//           children: List.generate(
//             6,
//             (index) => Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(5),
//                   topRight: Radius.circular(5),
//                   bottomLeft: Radius.circular(5),
//                   bottomRight: Radius.circular(5),
//                 ),
//                 color: Color.fromRGBO(255, 255, 255, 1),
//                 border: Border.all(
//                   color: Color.fromRGBO(234, 239, 255, 1),
//                   width: 1,
//                 ),
//               ),
//               padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Container(
//                       width: 133,
//                       height: 133,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(5),
//                           topRight: Radius.circular(5),
//                           bottomLeft: Radius.circular(5),
//                           bottomRight: Radius.circular(5),
//                         ),
//                         image: DecorationImage(
//                             image: AssetImage(product1[index]),
//                             fit: BoxFit.fitWidth),
//                       )),
//                   SizedBox(height: 8),
//                   Container(
//                     decoration: BoxDecoration(),
//                     padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                         Container(
//                           decoration: BoxDecoration(),
//                           padding:
//                               EdgeInsets.symmetric(horizontal: 0, vertical: 0),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               Text(
//                                 'Nike Air Max 270 React ENG',
//                                 textAlign: TextAlign.left,
//                                 style: TextStyle(
//                                     color: Color.fromRGBO(34, 50, 99, 1),
//                                     fontFamily: 'Poppins',
//                                     fontSize: 12,
//                                     letterSpacing: 0.5,
//                                     fontWeight: FontWeight.normal,
//                                     height: 1.5 /*PERCENT not supported*/
//                                     ),
//                               ),
//                               SizedBox(height: 4),
//                               Container(
//                                   width: 68,
//                                   height: 12,
//                                   decoration: BoxDecoration(),
//                                   child: Stack(children: <Widget>[
//                                   ])),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 16),
//                         Container(
//                           decoration: BoxDecoration(),
//                           padding:
//                               EdgeInsets.symmetric(horizontal: 0, vertical: 0),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: <Widget>[
//                               Text(
//                                 '\$299,43',
//                                 textAlign: TextAlign.left,
//                                 style: TextStyle(
//                                     color: Color.fromRGBO(64, 191, 255, 1),
//                                     fontFamily: 'Poppins',
//                                     fontSize: 12,
//                                     letterSpacing: 0.5,
//                                     fontWeight: FontWeight.normal,
//                                     height: 1.5 /*PERCENT not supported*/
//                                     ),
//                               ),
//                               SizedBox(height: 4),
//                               Container(
//                                 decoration: BoxDecoration(),
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: 0, vertical: 0),
//                                 child: Row(
//                                   mainAxisSize: MainAxisSize.min,
//                                   children: <Widget>[
//                                     Text(
//                                       '\$534,33',
//                                       textAlign: TextAlign.left,
//                                       style: TextStyle(
//                                           color:
//                                               Color.fromRGBO(144, 152, 177, 1),
//                                           fontFamily: 'Poppins',
//                                           fontSize: 10,
//                                           letterSpacing: 0.5,
//                                           fontWeight: FontWeight.normal,
//                                           height: 1.5 /*PERCENT not supported*/
//                                           ),
//                                     ),
//                                     SizedBox(width: 8),
//                                     Text(
//                                       '24% Off',
//                                       textAlign: TextAlign.left,
//                                       style: TextStyle(
//                                           color:
//                                               Color.fromRGBO(251, 113, 129, 1),
//                                           fontFamily: 'Poppins',
//                                           fontSize: 10,
//                                           letterSpacing: 0.5,
//                                           fontWeight: FontWeight.normal,
//                                           height: 1.5 /*PERCENT not supported*/
//                                           ),
//                                     ),
//                                   ],
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
//           )),
//     );
 
//   }
// }
