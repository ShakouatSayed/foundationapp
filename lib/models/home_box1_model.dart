class HomeBox1Model {
  String? id4;
  String? imageUrl;
  String? text;
  List<Box>? box;

  HomeBox1Model({this.id4, this.imageUrl, this.text, this.box});

  HomeBox1Model.fromJson(Map<String, dynamic> json)
      : id4 = json['id4'],
        imageUrl = json['image_url'],
        text = json['text'],
        box =
            ((json['box'] ?? []) as List).map((e) => Box.fromJson(e)).toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id4'] = id4;
    data['image_url'] = imageUrl;
    data['text'] = text;
    if (box != null) {
      data['box'] = box?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Box {
  String? tital;
  String? text1;
  String? text2;

  Box({this.tital, required this.text1, required this.text2});

  Box.fromJson(Map<String, dynamic> json)
      : tital = json['tital'],
        text1 = json['text1'],
        text2 = json['text2'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tital'] = tital;
    data['text1'] = text1;
    data['text2'] = text2;
    return data;
  }
}
