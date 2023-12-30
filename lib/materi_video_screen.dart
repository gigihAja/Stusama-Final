import 'package:flutter/material.dart';
import 'package:tugas_rancang/materi_ke_1.dart';
import 'package:tugas_rancang/materi_ke_2.dart';
import 'package:tugas_rancang/materi_ke_3.dart';

class MateriDanVideo extends StatelessWidget {
  const MateriDanVideo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'S T U S A M A',
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              Colors.greenAccent,
              Color.fromARGB(255, 111, 164, 190)
            ],
          )),
        ),
      ),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 239, 127, 164)),
        width: size.width,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(100.0, 40.0, 100.0, 40.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: const Color.fromARGB(255, 231, 216, 74),
                ),
                height: 60.0,
                child: const Center(
                    child: Text(
                  'Materi & Video',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: const Color.fromARGB(255, 255, 219, 152),
                ),
                height: 80.0,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MateriKe1()));
                    },
                    child: const Text(
                      'Materi 1',
                      style: TextStyle(fontSize: 30.0, color: Colors.black),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: const Color.fromARGB(255, 255, 219, 152),
                ),
                height: 80.0,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const materiKe2()));
                    },
                    child: const Text(
                      'Materi 2',
                      style: TextStyle(fontSize: 30.0, color: Colors.black),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: const Color.fromARGB(255, 255, 219, 152),
                ),
                height: 80.0,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const materiKe3()));
                    },
                    child: const Text(
                      'Materi 3',
                      style: TextStyle(fontSize: 30.0, color: Colors.black),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
