import 'package:cloud_firestore/cloud_firestore.dart';

class SaveResultGabung {
  String mapel;
  String jadwalPel;

  SaveResultGabung({
    required this.mapel,
    required this.jadwalPel,
  });

  Map<String, dynamic> toJson() {
    return {
      'mapel': mapel,
      'jadwal_pel': jadwalPel,
    };
  }

  static Future<void> saveResult(SaveResultGabung resultGabung) async {
    try {
      await FirebaseFirestore.instance
          .collection('Hasil Pengajuan')
          .add(resultGabung.toJson());
      print('Data saved successfully!');
    } catch (e) {
      print('Error saving data: $e');
}
}
}