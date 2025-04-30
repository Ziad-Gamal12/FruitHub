// ignore_for_file: file_names

abstract class Datebaseservice {
  Future<void> addData(
      {required String key, required Map<String, dynamic> value, String docId});
  Future<dynamic> getData(
      {required String path, String? docuementId, Map<String, dynamic>? query});
  Future<bool> checkIfDataExists(
      {required String path, required String docuementId});
}
