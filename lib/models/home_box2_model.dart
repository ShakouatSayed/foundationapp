class HomeBox2Model {
  String? mainTital;
  String? text;
  List<Box>? box;

  HomeBox2Model({this.mainTital,  this.text, this.box});

  HomeBox2Model.fromJson(Map<String, dynamic> json)
      :mainTital = json['main_tital'],
        text = json['text'] ,
        box = ((json['box'] ?? []) as List)
            .map((e) => Box.fromJson(e))
            .toList();

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
  String? date;
  String? time;
  String? place;

  Box({this.imageUrl, this.tital,  this.text,  this.time,  this.place, this.date});

  Box.fromJson(Map<String, dynamic> json)
      : imageUrl = json['image_url'],
        tital = json['tital'],
        text = json['text'],
        date = json['date'],
        time = json['time'],
        place = json['place'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image_url'] = imageUrl;
    data['tital'] = tital;
    data['text'] = text;
    data['date'] = date;
    data['time'] = time;
    data['place'] = place;
    return data;
  }
}
