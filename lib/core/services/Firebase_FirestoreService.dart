// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits/core/errors/Exceptioons.dart';
import 'package:fruits/core/services/DateBaseService.dart';

class FirebaseFirestoreservice implements Datebaseservice {
  FirebaseFirestoreservice();
  final firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String key,
      required Map<String, dynamic> value,
      String? docId2,
      String? subCollection,
      String? docId}) {
    if (docId == null) {
      return firestore.collection(key).add(value);
    } else {
      if (subCollection != null) {
        if (docId2 != null) {
          return firestore
              .collection(key)
              .doc(docId)
              .collection(subCollection)
              .doc(docId2)
              .set(value);
        } else {
          return firestore
              .collection(key)
              .doc(docId)
              .collection(subCollection)
              .add(value);
        }
      } else {
        return firestore.collection(key).doc(docId).set(value);
      }
    }
  }

  @override
  Future getData(
      {required String path,
      String? docuementId,
      String? subCollection,
      Map<String, dynamic>? query}) async {
    if (docuementId != null) {
      if (subCollection != null) {
        var data = await firestore
            .collection(path)
            .doc(docuementId)
            .collection(subCollection)
            .get();
        return data.docs.map((e) => e.data()).toList();
      } else {
        var data = await firestore.collection(path).doc(docuementId).get();
        return data.data();
      }
    } else {
      Query data = firestore.collection(path);
      if (query != null) {
        if (query['orderBy'] != null) {
          data = data.orderBy(
            query['orderBy'],
            descending: query['descending'],
          );
          if (query['startWith'] != null) {
            data = data.startAt([query['startWith']]).endAt(
                [query['startWith'] + '\uf8ff']);
          }
        }
        if (query['field'] != null) {
          data = data.where(query['field'], isEqualTo: query['value']);
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

  @override
  Future<void> updateDate({
    required String collectionKey,
    required doc,
    required dynamic data,
    required String field,
  }) async {
    try {
      await firestore.collection(collectionKey).doc(doc).update({field: data});
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        throw CustomException(
            message:
                "🚨 ليس لديك الإذن اللازم لإضافة البيانات. يرجى مراجعة صلاحياتك أو تعديل قواعد الأمان في Firestore.");
      } else if (e.code == "unavailable") {
        throw CustomException(
            message: "🚨 الخادم غير متوفر حاليا. يرجى المحاولة لاحقا.");
      } else if (e.code == "invalid-argument") {
        throw CustomException(
            message:
                "❌ تم تمرير بيانات غير صحيحة. يرجى التحقق من المدخلات وإعادة المحاولة.");
      } else if (e.code == "deadline-exceeded") {
        throw CustomException(
            message:
                "⏳ انتهت المهلة الزمنية للطلب. يرجى المحاولة مرة أخرى لاحقًا.");
      } else if (e.code == "resource-exhausted") {
        throw CustomException(
            message: "🚨 استهلاك الحافزات المتاحة. يرجى المحاولة لاحقًا.");
      } else {
        throw CustomException(message: "حدث خطأ ما");
      }
    } catch (e) {
      throw CustomException(message: "حدث خطأ ما");
    }
  }

  @override
  Future<void> removeData(
      {required String key,
      required String docId,
      String? docId2,
      String? subCollection}) async {
    try {
      if (subCollection != null) {
        await firestore
            .collection(key)
            .doc(docId)
            .collection(subCollection)
            .doc(docId2)
            .delete();
      } else {
        await firestore.collection(key).doc(docId).delete();
      }
    } catch (e) {
      throw CustomException(message: "حدث خطأ ما");
    }
  }
}
