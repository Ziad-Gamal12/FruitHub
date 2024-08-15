import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits/core/services/DateBaseService.dart';

class FirebaseFirestoreservice implements Datebaseservice {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String key, required Map<String, dynamic> data}) async {
    await firestore.collection(key).add(data);
  }
}
