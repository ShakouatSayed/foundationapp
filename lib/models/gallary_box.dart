import 'package:cloud_firestore/cloud_firestore.dart';

class GellaryBox {
  String? id;
  String? tital;
  String? image_url;

  GellaryBox({
    this.tital,
    this.image_url,
    this.id,
  });
  GellaryBox.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        tital = json['tital'],
        image_url = json['image_url'];

  GellaryBox.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> json)
      : id = json.id,
        tital = json['tital'],
        image_url = json['image_url'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['tital'] = tital;
    data['image_url'] = image_url;
    return data;
  }
}
