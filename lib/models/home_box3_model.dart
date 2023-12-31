﻿class HomeBox3Model {
  String? tital;
  String? imageUrl;
  List<Box>? box;

  HomeBox3Model({this.tital, this.imageUrl, this.box});

  HomeBox3Model.fromJson(Map<String, dynamic> json)
      : tital = json['tital'],
        imageUrl = json['image_url'],
        box = ((json['box'] ?? []) as List)
            .map((dynamic e) => Box.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tital'] = tital;
    data['image_url'] = imageUrl;
    if (box != null) {
      data['box'] = box?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Box {
  String? sub_doc;
  String? subImageUrl;
  List<From1>? from1;

  Box({
    this.subImageUrl,
    this.from1,
    this.sub_doc,
  });

  Box.fromJson(Map<String, dynamic> json)
      : sub_doc = json['sub_doc'],
        subImageUrl = json['sub_image_url'],
        from1 = ((json['from1'] ?? []) as List)
            .map((dynamic e) => From1.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sub_doc'] = sub_doc;
    data['sub_image_url'] = subImageUrl;
    if (from1 != null) {
      data['from1'] = from1?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class From1 {
  String? name;
  String? email;
  String? message;

  From1({this.name, this.email, this.message});

  From1.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'],
        message = json['message'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['message'] = message;
    return data;
  }
}
