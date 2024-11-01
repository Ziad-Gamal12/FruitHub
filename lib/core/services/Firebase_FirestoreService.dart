// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits/core/services/DateBaseService.dart';

class FirebaseFirestoreservice implements Datebaseservice {
  FirebaseFirestoreservice();
  final firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String key,
      required Map<String, dynamic> value,
      required String docId}) {
    return firestore.collection(key).doc(docId).set(value);
  }

  @override
  Future getData(
      {required String path,
      String? docuementId,
      Map<String, dynamic>? query}) async {
    if (docuementId != null) {
      var data = await firestore.collection(path).doc(docuementId).get();
      return data.data();
    } else {
      Query data = firestore.collection(path);
      if (query != null) {
        if (query['orderBy'] != null) {
          data =
              data.orderBy(query['orderBy'], descending: query['descending']);
        }
        if (query["limit"] != null) {
          data = data.limit(query["limit"]);
        }
      }
      var result = await data.get();
      return result.docs.map((e) => e.data()).toList();
    }
  }

  @override
  Future<bool> checkIfDataExists(
      {required String path, required String docuementId}) async {
    var data = await firestore.collection(path).doc(docuementId).get();
    return data.exists;
  }
}
