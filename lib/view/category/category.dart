import 'package:flutter/material.dart';
import 'package:shope/view/category/module/catitem.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          CatItem(),
          // CatItem(name: "Woman Fashion"),
        ],
      ),
    );
  }
}
