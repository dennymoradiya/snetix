// To parse this JSON data, do
//
//     final categoryModule = categoryModuleFromMap(jsonString);

import 'dart:convert';

class CategoryModule {
    CategoryModule({
        required this.getcategory,
    });

    List<Getcategory> getcategory;

    factory CategoryModule.fromJson(String str) => CategoryModule.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CategoryModule.fromMap(Map<String, dynamic> json) => CategoryModule(
        getcategory: List<Getcategory>.from(json["getcategory"].map((x) => Getcategory.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "getcategory": List<dynamic>.from(getcategory.map((x) => x.toMap())),
    };
}

class Getcategory {
    Getcategory({
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

    factory Getcategory.fromJson(String str) => Getcategory.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Getcategory.fromMap(Map<String, dynamic> json) => Getcategory(
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
