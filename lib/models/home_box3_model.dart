class HomeBox3Model {
  String? id6;
  String? imageUrl;
  List<Box>? box;

  HomeBox3Model({ this.id6, this.imageUrl, this.box});

  HomeBox3Model.fromJson(Map<String, dynamic> json)
      : id6 = json['id6'],
        imageUrl = json['image_url'],
        box = ((json['box'] ?? []) as List)
            .map((dynamic e) => Box.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id6'] = id6;
    data['image_url'] = imageUrl;
    if (box != null) {
      data['box'] = box?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Box {
  String? id;
  String? subImageUrl;
  String? tital;
  String? name;
  String? email;
  String? message;
  List<From1>? from1;

  Box({this.subImageUrl,    this.from1,   this.id,this.tital,  this.name,  this.email,  this.message});

  Box.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        subImageUrl = json['sub_image_url'],
        tital = json['tital'],
        name = json['name'],
        email = json['email'],
        message = json['message'],
        from1=
            ((json['from1'] ?? []) as List).map(( dynamic e) => From1.fromJson(e as Map<String, dynamic>)).toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['sub_image_url'] = subImageUrl;
    data['tital'] = tital;
    data['name'] = name;
    data['email'] = email;
    data['message'] = message;
    if (from1 != null) {
      data['from1'] = from1?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class From1 {
  String? tital;
  String? name;
  String? email;
  String? message;

  From1({ this.tital,  this.name,  this.email,  this.message});

  From1.fromJson(Map<String, dynamic> json)
      : tital = json['tital'],
        name = json['name'],
        email = json['email'],
        message = json['message'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tital'] = tital;
    data['name'] = name;
    data['email'] = email;
    data['message'] = message;
    return data;
  }
}
