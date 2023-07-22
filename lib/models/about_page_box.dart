class AboutPageBox {
  String? id0;
  String? mainImageUrl;
  String? text;
  List<Box>? box;

  AboutPageBox({required this.id0, this.mainImageUrl, this.text, this.box});

  AboutPageBox.fromJson(Map<String, dynamic> json)
      : id0 = json['id0'],
        mainImageUrl = json['main_image_url'],
        text = json['text'],
        box = ((json['box'] ?? []) as List)
            .map((dynamic e) => Box.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id0"] = id0;
    data['main_image_url'] = mainImageUrl;
    data['text'] = text;
    if (box != null) {
      data['box'] = box?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Box {
  String? subImageUrl;
  String? tital;
  String? text1;

  Box({this.subImageUrl, this.tital, this.text1});

  Box.fromJson(Map<String, dynamic> json)
      : subImageUrl = json['sub_image_url'],
        tital = json['tital'],
        text1 = json['text1'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sub_image_url'] = subImageUrl;
    data['tital'] = tital;
    data['text1'] = text1;
    return data;
  }
}
