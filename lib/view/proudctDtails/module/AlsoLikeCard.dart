
import 'package:flutter/material.dart';
import 'package:shope/view/HomePage/module/productList.dart';

class AlsoLikeCard extends StatelessWidget {
  const AlsoLikeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: ProductList(
          name: "You May Also Like",
          catgoryshow: "Man",
        ),
      ),
    );
  }
}

