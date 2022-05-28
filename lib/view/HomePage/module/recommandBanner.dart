import 'package:flutter/material.dart';
import 'package:shope/view/category/catDetails/catproduct.dart';

class RecomendedproductbannerWidget extends StatelessWidget {
  final image;
  final catgoryshow;
  const RecomendedproductbannerWidget(
      {Key? key, required this.image, required this.catgoryshow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (a) => CatProducat(
                      lastname: catgoryshow,
                    )));
      },
      child: Container(
          height: 206,
          child: Stack(children: <Widget>[
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                    width: MediaQuery.of(context).size.width - 20,
                    height: 206,
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(image), fit: BoxFit.cover,onError: (e, e1) => Icon(Icons.error),),
                    ))),
          ])),
    );
  }
}
