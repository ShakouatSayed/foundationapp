import 'package:cloud_firestore/cloud_firestore.dart';



final fireStore = FirebaseFirestore.instance;
final aboutPageBoxRF = fireStore.collection("allBoxs");

final fireStore1 = FirebaseFirestore.instance;
final blogPageBoxRF = fireStore1.collection("allBoxs");

final fireStore2 = FirebaseFirestore.instance;
final gallaryPageBoxRF = fireStore2.collection("allBoxs");

final fireStore3 = FirebaseFirestore.instance;
final homeBox1ModelRF = fireStore3.collection("allBoxs");

final fireStore4 = FirebaseFirestore.instance;
final homeBox2ModelRF = fireStore4.collection("allBoxs");

final fireStore5 = FirebaseFirestore.instance;
final homeBox3ModelRF = fireStore5.collection("allBoxs");
DocumentReference boxRF({
   required String bid,
   required String boxId,
}) =>
    homeBox3ModelRF.doc(bid).collection("box").doc(boxId);


