class GellaryBox {
  String? id3;
  String? imageUrl1;
  String? imageUrl2;
  String? imageUrl3;
  String? imageUrl4;
  String? imageUrl5;
  String? imageUrl6;
  String? imageUrl7;
  String? imageUrl8;

  GellaryBox(
      { this.id3,
        this.imageUrl1,
       this.imageUrl2,
       this.imageUrl3,
       this.imageUrl4,
       this.imageUrl5,
       this.imageUrl6,
       this.imageUrl7,
       this.imageUrl8});

  GellaryBox.fromJson(Map<String, dynamic> json)
      : id3 = json['id3'],
        imageUrl1 = json['image_url_1'],
        imageUrl2 = json['image_url_2'],
        imageUrl3 = json['image_url_3'],
        imageUrl4 = json['image_url_4'],
        imageUrl5 = json['image_url_5'],
        imageUrl6 = json['image_url_6'],
        imageUrl7 = json['image_url_7'],
        imageUrl8 = json['image_url_8'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id3'] = id3;
    data['image_url_1'] = imageUrl1;
    data['image_url_2'] = imageUrl2;
    data['image_url_3'] = imageUrl3;
    data['image_url_4'] = imageUrl4;
    data['image_url_5'] = imageUrl5;
    data['image_url_6'] = imageUrl6;
    data['image_url_7'] = imageUrl7;
    data['image_url_8'] = imageUrl8;
    return data;
  }
}
