class HomeBox2Model {
  String? id5;
  String? mainTital;
  String? text;
  List<Box>? box;

  HomeBox2Model({this.id5, this.mainTital,  this.text, this.box});

  HomeBox2Model.fromJson(Map<String, dynamic> json)
      : id5 = json['id5'],
        mainTital = json['main_tital'],
        text = json['text'] ,
        box = ((json['box'] ?? []) as List)
            .map((e) => Box.fromJson(e))
            .toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id5'] = id5;
    data['main_tital'] = mainTital;
    data['text'] = text;
    if (box != null) {
      data['box'] = box?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Box {
  String? imageUrl;
  String? tital;
  String? text;
  String? smText;
  String? raised;

  Box({this.imageUrl, this.tital,  this.text,  this.smText,  this.raised});

  Box.fromJson(Map<String, dynamic> json)
      : imageUrl = json['image_url'],
        tital = json['tital'],
        text = json['text'],
        smText = json['sm_text'],
        raised = json['raised'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image_url'] = imageUrl;
    data['tital'] = tital;
    data['text'] = text;
    data['sm_text'] = smText;
    data['raised'] = raised;
    return data;
  }
}
