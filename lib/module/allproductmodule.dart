// To parse this JSON data, do
//
//     final allProduct = allProductFromMap(jsonString);

import 'dart:convert';

class AllProduct {
    AllProduct({
        required this.id,
        required this.message,
        required this.data,
        required this.v,
    });

    String id;
    String message;
    List<Datum> data;
    int v;

    factory AllProduct.fromJson(String str) => AllProduct.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AllProduct.fromMap(Map<String, dynamic> json) => AllProduct(
        id: json["_id"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
        v: json["__v"],
    );

    Map<String, dynamic> toMap() => {
        "_id": id,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "__v": v,
    };
}

class Datum {
    Datum({
        required this.imagelist,
        required this.pid,
        required this.pname,
        required this.pimage,
        required this.pprice,
        required this.offprice,
        required this.pdiscount,
        required this.prating,
        required this.pdescription,
        required this.preview,
        required this.pshortdesc,
        required this.pcat,
        required this.brand,
    });
    List<String> imagelist;
    String pid;
    String pname;
    String pimage;
    String pprice;
    String offprice;
    String pdiscount;
    String prating;
    String pdescription;
    String preview;
    String pshortdesc;
    String pcat;
    String brand;

    factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        imagelist: List<String>.from(json["imagelist"].map((x) => x)),
        pid: json["pid"],
        pname: json["pname"],
        pimage: json["pimage"],
        pprice: json["pprice"],
        offprice: json["offprice"],
        pdiscount: json["pdiscount"],
        prating: json["prating"],
        pdescription: json["pdescription"],
        preview: json["preview"],
        pshortdesc: json["pshortdesc"],
        pcat: json["pcat"],
        brand: json["brand"],
    );

    Map<String, dynamic> toMap() => {
        "imagelist": List<dynamic>.from(imagelist.map((x) => x)),
        "pid": pid,
        "pname": pname,
        "pimage": pimage,
        "pprice": pprice,
        "offprice": offprice,
        "pdiscount": pdiscount,
        "prating": prating,
        "pdescription": pdescription,
        "preview": preview,
        "pshortdesc": pshortdesc,
        "pcat": pcat,
        "brand": brand,
    };
}
