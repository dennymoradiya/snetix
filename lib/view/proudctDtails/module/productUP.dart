import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductUp extends StatelessWidget {
  final image;
  const ProductUp({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxInt pagei = 0.obs;
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
              options: CarouselOptions(
                height: 400.0,
                enableInfiniteScroll: false,
                viewportFraction: 0.7,
                onPageChanged: (index, reason) => pagei.value = index,
              ),
              items: List.generate(
                image.length,
                (index) => InkWell(
                  onTap: () {
                    Get.dialog(
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(image[index]),
                            fit: BoxFit.fitHeight,
                            onError: (e, e1) => Icon(Icons.error),
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(image[index]),
                        fit: BoxFit.fitHeight,
                        onError: (e, e1) => Icon(Icons.error),
                      ),
                    ),
                  ),
                ),
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < image.length; i++)
                Obx(
                  () => Container(
                    height: 5,
                    margin: EdgeInsets.all(6),
                    width: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: pagei.value == i ? Colors.blue : Colors.grey,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
