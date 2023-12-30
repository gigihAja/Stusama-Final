import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final db = FirebaseFirestore.instance;

class HasilJadwal extends StatelessWidget {
  const HasilJadwal({
    Key? key,
  }) : super(key: key);

  Future<void> _deleteDocument(String documentId) async {
    await db.collection('Hasil Pengajuan').doc(documentId).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'S T U S A M A',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Colors.greenAccent,
                Color.fromARGB(255, 111, 164, 190),
              ],
            ),
          ),
        ),
      ),
      backgroundColor:
          Color.fromARGB(255, 68, 255, 246), // Set background color
      body: StreamBuilder(
        stream: db.collection('Hasil Pengajuan').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(
              child: Text('No posts available.'),
            );
          }

          final hasilList = snapshot.data!.docs.map((doc) {
            return Hasil(
              jadwal: doc['jadwal_pelajaran'],
              matpel: doc['mata_pelajaran'],
              documentId: doc.id,
            );
          }).toList();

          return ListView.builder(
            itemCount: hasilList.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(hasilList[index].documentId),
                onDismissed: (direction) async {
                  await _deleteDocument(hasilList[index].documentId);
                },
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 16),
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 206, 115),
                        border: Border.all()),
                    child: ListTile(
                      title: Text(
                        '    Pelajaran: ${hasilList[index].matpel}',
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                      subtitle:
                          Text('     Tanggal: ${hasilList[index].jadwal}'),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Hasil {
  String jadwal, matpel, documentId;

  Hasil({
    required this.jadwal,
    required this.matpel,
    required this.documentId,
  });
}
