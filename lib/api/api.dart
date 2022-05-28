import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:shope/globle/Globle.dart';
import 'package:shope/main.dart';
import 'package:shope/module/OrderModule.dart';
import 'package:shope/module/allproductmodule.dart';
import 'package:shope/module/categoryModule.dart';
// import 'package:unity_ads_plugin/unity_ads.dart';

late AllProduct allProduct;
Map<String, String> headers = {
  'Content-Type': 'application/json;charset=UTF-8',
  'Charset': 'utf-8'
};
Future<AllProduct> getAllproduct() async {
  // UnityAds.init(
  //   gameId: '4271393',
  // );
  Response response;
  try {
    response = await Dio().get(BASEURL + "product",
        options: Options(
          headers: headers,
          responseType: ResponseType.json,
        ));
    allProduct = AllProduct.fromMap(response.data);
    dataget.value = true;
    return allProduct;
  } catch (e) {
    response = await Dio().get(BASEURL + "product");
    print(e);
    return AllProduct.fromMap(response.data);
  }
}

void addOrderDetails({
  required pid,
  required pname,
  required pimage,
  required pprice,
  required pcat,
  required brand,
  required firstname,
  required lastname,
  required streetadrees,
  required street2addres,
  required state,
  required zipcode,
  required phoneno,
  required email,
  required uid,
  required orderid,
  required orderdate,
}) async {
  Map map = {
    "data": {
      "pid": pid,
      "pname": pname,
      "pimage": pimage,
      "pprice": pprice,
      "pcat": pcat,
      "brand": brand,
      "firstname": firstname,
      "lastname": lastname,
      "streetadrees": streetadrees,
      "street2addres": street2addres,
      "state": state,
      "zipcode": zipcode,
      "phoneno": phoneno,
      "email": email,
      "uid": uid,
      "orderid": orderid,
      "orderdata": orderdate,
    }
  };
  var body = json.encode(map);
  try {
    Response response = await Dio().post(
      BASEURL + 'addorder',
      options: Options(headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      }),
      data: body,
    );
    
  } catch (e) {
    print("Order error" + e.toString());
  }
}

Future<OrderModule> getOrders({required String uid}) async {
  var body = json.encode({"uid": uid});
  Response response;
  response = await Dio().post(
    BASEURL + 'findorder',
    options: Options(headers: headers),
    data: body,
  );
  OrderModule orderModule = OrderModule.fromMap(response.data);
  return orderModule;
}

Future<CategoryModule> getCategory({required String categoryname}) async {
  var body = json.encode({"category": categoryname});
  try {
    Response response = await Dio().post(BASEURL + "findcategory",
        options: Options(headers: headers), data: body);
    CategoryModule categoryModule = CategoryModule.fromMap(response.data);
    return categoryModule;
  } catch (e) {
    print(e);
    Response response = await Dio().post(BASEURL + "findcategory");
    return CategoryModule.fromMap(response.data);
  }
}
