// import 'dart:convert';
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:foundationapp/firebase_ref/refarence1.dart';
// import 'package:foundationapp/models/about_page_box.dart';
// import 'package:foundationapp/models/blog_page_box.dart';
// import 'package:foundationapp/models/gallary_box.dart';
// import 'package:foundationapp/models/home_box1_model.dart';
// import 'package:foundationapp/models/home_box2_model.dart';
// import 'package:foundationapp/models/home_box3_model.dart';
// import 'package:get/get.dart';
// class DataUpload1 extends GetxController {
//   @override
//   void onReady() {
//     uploadData();
//     super.onReady();
//   }
//
//   void uploadData() async{
//     final fireStore = FirebaseFirestore.instance;
//     final manifestContent = await DefaultAssetBundle.of(Get.context!)
//         .loadString("AssetManifest.json");
//     final Map<String, dynamic> manifastMap = json.decode(manifestContent);
//
//     //load json file and print path
//     final boxInAssets = manifastMap.keys
//         .where((path) =>
//     path.startsWith("assets/DB/box/about_page") &&
//         path.contains(".json"))
//         .toList();
//
//     final boxInAssets1 = manifastMap.keys
//         .where((path) =>
//     path.startsWith("assets/DB/box/blog_page") &&
//         path.contains(".json"))
//         .toList();
//
//     final boxInAssets2 = manifastMap.keys
//         .where((path) =>
//     path.startsWith("assets/DB/box/gallary") && path.contains(".json"))
//         .toList();
//
//     final boxInAssets3 = manifastMap.keys
//         .where((path) =>
//     path.startsWith("assets/DB/box/home_page_1") &&
//         path.contains(".json"))
//         .toList();
//
//     final boxInAssets4 = manifastMap.keys
//         .where((path) =>
//     path.startsWith("assets/DB/box/home_page_2") &&
//         path.contains(".json"))
//         .toList();
//
//
//     final boxInAssets5 = manifastMap.keys
//         .where((path) =>
//     path.startsWith("assets/DB/box1/home_page_4") &&
//         path.contains(".json"))
//         .toList();
//     List<AboutPageBox> aboutPageBox = [];
//     List<BlogPageBox> blogPageBox = [];
//     List<GellaryBox> gellaryBox = [];
//     List<HomeBox1Model> homeBox1Model = [];
//     List<HomeBox2Model> homeBox2Model = [];
//     List<HomeBox3Model> homeBox3Model = [];
//
//     for (var box in boxInAssets) {
//       String stringBoxContent = await rootBundle.loadString(box);
//       //print(strinBoxContent);
//       aboutPageBox.add(AboutPageBox.fromJson(json.decode(stringBoxContent)));
//       for (var box1 in boxInAssets1) {
//         String stringBoxContent = await rootBundle.loadString(box1);
//         blogPageBox.add(BlogPageBox.fromJson(json.decode(stringBoxContent)));
//         for (var box2 in boxInAssets2) {
//           String stringBoxContent = await rootBundle.loadString(box2);
//           gellaryBox.add(GellaryBox.fromJson(json.decode(stringBoxContent)));
//           for (var box3 in boxInAssets3) {
//             String stringBoxContent = await rootBundle.loadString(box3);
//             homeBox1Model
//                 .add(HomeBox1Model.fromJson(json.decode(stringBoxContent)));
//             for (var box4 in boxInAssets4) {
//               String stringBoxContent = await rootBundle.loadString(box4);
//               homeBox2Model
//                   .add(HomeBox2Model.fromJson(json.decode(stringBoxContent)));
//               for (var box5 in boxInAssets5) {
//                 String stringBoxContent = await rootBundle.loadString(box5);
//                 //print(stringBoxContent);
//                 homeBox3Model
//                     .add(HomeBox3Model.fromJson(json.decode(stringBoxContent)));
//               }
//             }
//           }
//         }
//       }
//     }
//
//
//     // for (var box5 in boxInAssets5) {
//     //   String stringBoxContent = await rootBundle.loadString(box5);
//     //
//     //   homeBox3Model
//     //       .add(HomeBox3Model.fromJson(json.decode(stringBoxContent)));
//     //   //print(stringBoxContent);
//     // }
//
//     //print('Item number ${homeBox3Model[0].toString()}');
//
//
//
//     //aboutPageBox
//     var batch = fireStore.batch();
//     for (var box1 in aboutPageBox) {
//       batch.set(aboutPageBoxRF.doc(box1.id0), {
//         "main_image_url": box1.mainImageUrl,
//         "text": box1.text,
//         "box_count": box1.box == null ? 0 : box1.box!.length
//       });
//       for (var boxx in box1.box!) {
//         //final boxPath = boxRF(id: box1.id0!, tital: boxx.tital!);
//         final boxPath = aboutPageBoxRF.doc(box1.id0);
//         batch.set(boxPath.collection("box").doc(boxx.tital),
//             {"sub_image_url": boxx.subImageUrl, "text1": boxx.text1});
//       }
//     }
//     await batch.commit();
//
//     //blogPageBox
//     var batch1 = fireStore.batch();
//     for (var box in blogPageBox) {
//       batch1.set(blogPageBoxRF.doc(box.id1), {
//         "main_image_url": box.mainImageUrl,
//         "main_tital": box.mainTital,
//         "box_count": box.box == null ? 0 : box.box!.length
//       });
//       for (var boxx in box.box!) {
//         final boxPath = blogPageBoxRF.doc(box.id1);
//         batch1.set(boxPath.collection("box").doc(boxx.tital), {
//           "image_url": boxx.imageUrl,
//           "date": boxx.date,
//           "sm_text": boxx.smText,
//           "text": boxx.text
//         });
//       }
//     }
//     await batch1.commit();
//
//     //galaryPage
//     final fireStore2 = FirebaseFirestore.instance;
//     var batch2 = fireStore2.batch();
//     for (var box2 in gellaryBox) {
//       batch2.set(gallaryPageBoxRF.doc(box2.id3), {
//         "image_url_1": box2.imageUrl1,
//         "image_url_2": box2.imageUrl2,
//         "image_url_3": box2.imageUrl3,
//         "image_url_4": box2.imageUrl4,
//         "image_url_5": box2.imageUrl5,
//         "image_url_6": box2.imageUrl6,
//         "image_url_7": box2.imageUrl7,
//         "image_url_8": box2.imageUrl8,
//         "box_count": box2.isBlank
//       });
//     }
//     await batch2.commit();
//
//     //homeBox1Model
//     final fireStore3 = FirebaseFirestore.instance;
//     var batch3 = fireStore3.batch();
//     for (var box3 in homeBox1Model) {
//       batch3.set(homeBox1ModelRF.doc(box3.id4), {
//         "image_url": box3.imageUrl,
//         "text": box3.text,
//         "box_count": box3.box == null ? 0 : box3.box!.length
//       });
//       for (var boxx in box3.box!) {
//         final boxPath = homeBox1ModelRF.doc(box3.id4);
//         batch3.set(boxPath.collection("box").doc(boxx.tital),
//             {"text1": boxx.text1, "text2": boxx.text2});
//       }
//     }
//     await batch3.commit();
//
//     //homeBox2Model
//     final fireStore4 = FirebaseFirestore.instance;
//     var batch4 = fireStore4.batch();
//     for (var box4 in homeBox2Model) {
//       batch4.set(homeBox2ModelRF.doc(box4.id5), {
//         "main_tital": box4.mainTital,
//         "text": box4.text,
//         "box_count": box4.box == null ? 0 : box4.box!.length
//       });
//       for (var boxx in box4.box!) {
//         final boxPath = homeBox2ModelRF.doc(box4.id5);
//         batch4.set(boxPath.collection("box").doc(boxx.tital), {
//           "image_url": boxx.imageUrl,
//           "text": boxx.text,
//           "sm_text": boxx.smText,
//           "raised": boxx.raised
//         });
//       }
//     }
//     await batch4.commit();
//
//
//
//
//     //homeBox3Model
//     final fireStore5 = FirebaseFirestore.instance;
//     var batch5 = fireStore5.batch();
//     for (var box in homeBox3Model) {
//       batch5.set(homeBox3ModelRF.doc(box.id6), {
//         "image_url": box.imageUrl,
//         "box_count": box.box == null ? 0 : box.box!.length
//       });
//       for (var boxx in box.box!) {
//         //final from = boxx.from1;
//         final boxPath = boxRF(bid: box.id6!, boxId: boxx.id!);
//         //final boxPath = homeBox3ModelRF.doc(box.id6);
//         batch5.set(boxPath/*.collection("box").doc(boxx.id)*/, {
//           "id":boxx.id,
//           "sub_image_url": boxx.subImageUrl
//
//         });
//         for (var from in boxx.from1!) {
//           //final boxPath = boxRF(bid: box5.id6, boxId: boxx.id);
//           //final boxPath = homeBox3ModelRF.doc(boxx.id);
//          // final boxPath = boxRF(bid: box.id6!, boxId: boxx.id!);
//           batch5.set(boxPath.collection("from1").doc(from.tital), {
//             "name": from.name,
//             "email": from.email,
//             "message": from.message
//           });
//        }
//       }
//     }
//     await batch5.commit();
//   }
// }