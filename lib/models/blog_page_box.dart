class BlogPageBox {
  String? mainImageUrl;
  String? mainTital;
  List<Box>? box;

  BlogPageBox({this.mainImageUrl,  this.mainTital, this.box});

  BlogPageBox.fromJson(Map<String, dynamic> json) :
        mainImageUrl = json['main_image_url'],
        mainTital = json['main_tital'],
        box = ((json['box']??[])as List).map(( e) => Box.fromJson(e )).toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['main_image_url'] = mainImageUrl;
    data['main_tital'] = mainTital;
    if (box != null) {
      data['box'] = box?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Box {
  String? imageUrl;
  String? date;
  String? smText;
  String? tital;
  String? text;

  Box({ this.imageUrl,  this.date,  this.smText,  this.tital,  this.text});

  Box.fromJson(Map<String, dynamic> json) :
    imageUrl = json['image_url'],
    date = json['date'],
    smText = json['sm_text'],
    tital = json['tital'],
    text = json['text'];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image_url'] = imageUrl;
    data['date'] = date;
    data['sm_text'] = smText;
    data['tital'] = tital;
    data['text'] = text;
    return data;
  }
}