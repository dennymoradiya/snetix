import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:shope/api/api.dart';
import 'package:shope/module/categoryModule.dart';
import 'package:shope/view/proudctDtails/productDetails.dart';

class CatProducat extends StatelessWidget {
  final lastname;
  const CatProducat({Key? key, this.lastname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          FutureBuilder<CategoryModule>(
            future: getCategory(categoryname: lastname),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (!snapshot.hasData) {
                return Center(
                  child: Text('No Catergory Data'),
                );
              }
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(snapshot.data!.getcategory.length.toString() +
                            ' result'),
                        Text(lastname ?? ''),
                      ],
                    ),
                  ),
                  Container(
                    child: ResponsiveGridList(
                      scroll: false,
                      desiredItemWidth: 150,
                      minSpacing: 10,
                      children: List.generate(
                        snapshot.data!.getcategory.length,
                        (index) => InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (a) => ProductDetails(
                                  snapshot: snapshot.data!.getcategory[index],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              color: Color.fromRGBO(255, 255, 255, 1),
                              border: Border.all(
                                color: Color.fromRGBO(234, 239, 255, 1),
                                width: 1,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    width: 133,
                                    height: 133,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            snapshot.data!.getcategory[index]
                                                .pimage,
                                          ),
                                          onError: (e, e1) => Icon(Icons.error),
                                          fit: BoxFit.fitWidth),
                                    )),
                                SizedBox(height: 8),
                                Container(
                                  decoration: BoxDecoration(),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Text(
                                              snapshot.data!.getcategory[index]
                                                  .pname,
                                              textAlign: TextAlign.left,
                                              maxLines: 2,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      34, 50, 99, 1),
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  letterSpacing: 0.5,
                                                  fontWeight: FontWeight.normal,
                                                  height:
                                                      1.5 /*PERCENT not supported*/
                                                  ),
                                            ),
                                            SizedBox(height: 4),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      Container(
                                        decoration: BoxDecoration(),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Text(
                                              "Rs. " +
                                                  snapshot
                                                      .data!
                                                      .getcategory[index]
                                                      .pprice,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      64, 191, 255, 1),
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  letterSpacing: 0.5,
                                                  fontWeight: FontWeight.normal,
                                                  height:
                                                      1.5 /*PERCENT not supported*/
                                                  ),
                                            ),
                                            SizedBox(height: 4),
                                            Container(
                                              decoration: BoxDecoration(),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 0, vertical: 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Text(
                                                    "Rs. " +
                                                        snapshot
                                                            .data!
                                                            .getcategory[index]
                                                            .offprice,
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        color: Color.fromRGBO(
                                                            144, 152, 177, 1),
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                        letterSpacing: 0.5,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        height:
                                                            1.5 /*PERCENT not supported*/
                                                        ),
                                                  ),
                                                  SizedBox(width: 8),
                                                  Text(
                                                    (int.parse(snapshot
                                                                    .data!
                                                                    .getcategory[
                                                                        index]
                                                                    .pprice) /
                                                                int.parse(snapshot
                                                                    .data!
                                                                    .getcategory[
                                                                        index]
                                                                    .offprice) *
                                                                100)
                                                            .toStringAsFixed(
                                                                2) +
                                                        '% Off',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            251, 113, 129, 1),
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                        letterSpacing: 0.5,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        height:
                                                            1.5 /*PERCENT not supported*/
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
