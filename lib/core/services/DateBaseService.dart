// ignore_for_file: file_names

abstract class Datebaseservice {
  Future<void> addData(
      {required String key,
      required Map<String, dynamic> value,
      String docId,
      String? docId2,
      String? subCollection});
  Future<void> removeData(
      {required String key,
      required String docId,
      String? docId2,
      String? subCollection});
  Future<dynamic> getData({
    required String path,
    String? docuementId,
    Map<String, dynamic>? query,
    String? subCollection,
  });
  Future<bool> checkIfDataExists(
      {required String path, required String docuementId});
  Future<void> updateDate({
    required String collectionKey,
    required doc,
    required dynamic data,
    required String field,
  });
}
