// To parse this JSON data, do
//
//     final orderModule = orderModuleFromMap(jsonString);

import 'dart:convert';

class OrderModule {
  OrderModule({
    required this.orderdeails,
  });

  List<Orderdeail> orderdeails;

  factory OrderModule.fromJson(String str) =>
      OrderModule.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderModule.fromMap(Map<String, dynamic> json) => OrderModule(
        orderdeails: List<Orderdeail>.from(
            json["orderdeails"].map((x) => Orderdeail.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "orderdeails": orderdeails == null
            ? null
            : List<dynamic>.from(orderdeails.map((x) => x.toMap())),
      };
}

class Orderdeail {
  Orderdeail({
    required this.pid,
    required this.pname,
    required this.pimage,
    required this.pprice,
    required this.pcat,
    required this.brand,
    required this.firstname,
    required this.lastname,
    required this.streetadrees,
    required this.street2Addres,
    required this.state,
    required this.zipcode,
    required this.phoneno,
    required this.email,
    required this.uid,
    required this.orderid,
    required this.orderdata,
  });

  String pid;
  String pname;
  String pimage;
  String pprice;
  String pcat;
  String brand;
  String firstname;
  String lastname;
  String streetadrees;
  String street2Addres;
  String state;
  String zipcode;
  String phoneno;
  String email;
  String uid;
  String orderid;
  String orderdata;

  factory Orderdeail.fromJson(String str) =>
      Orderdeail.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Orderdeail.fromMap(Map<String, dynamic> json) => Orderdeail(
        pid: json["pid"] == null ? null : json["pid"],
        pname: json["pname"] == null ? null : json["pname"],
        pimage: json["pimage"] == null ? null : json["pimage"],
        pprice: json["pprice"] == null ? null : json["pprice"],
        pcat: json["pcat"] == null ? null : json["pcat"],
        brand: json["brand"] == null ? null : json["brand"],
        firstname: json["firstname"] == null ? null : json["firstname"],
        lastname: json["lastname"] == null ? null : json["lastname"],
        streetadrees:
            json["streetadrees"] == null ? null : json["streetadrees"],
        street2Addres:
            json["street2addres"] == null ? null : json["street2addres"],
        state: json["state"] == null ? null : json["state"],
        zipcode: json["zipcode"] == null ? null : json["zipcode"],
        phoneno: json["phoneno"] == null ? null : json["phoneno"],
        email: json["email"] == null ? null : json["email"],
        uid: json["uid"] == null ? null : json["uid"],
        orderid: json["orderid"] == null ? null : json["orderid"],
        orderdata: json["orderdata"] == null ? null : json["orderdata"],
      );

  Map<String, dynamic> toMap() => {
        "pid": pid == null ? null : pid,
        "pname": pname == null ? null : pname,
        "pimage": pimage == null ? null : pimage,
        "pprice": pprice == null ? null : pprice,
        "pcat": pcat == null ? null : pcat,
        "brand": brand == null ? null : brand,
        "firstname": firstname == null ? null : firstname,
        "lastname": lastname == null ? null : lastname,
        "streetadrees": streetadrees == null ? null : streetadrees,
        "street2addres": street2Addres == null ? null : street2Addres,
        "state": state == null ? null : state,
        "zipcode": zipcode == null ? null : zipcode,
        "phoneno": phoneno == null ? null : phoneno,
        "email": email == null ? null : email,
        "uid": uid == null ? null : uid,
        "orderid": orderid == null ? null : orderid,
        "orderdata": orderdata == null ? null : orderdata,
      };
}
