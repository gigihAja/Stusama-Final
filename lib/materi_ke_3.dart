import 'package:flutter/material.dart';
import '/dummy_data.dart';

class materiKe3 extends StatelessWidget {
  const materiKe3({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 239, 127, 164)),
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                color: const Color.fromARGB(255, 255, 219, 152),
              ),
              padding: const EdgeInsets.fromLTRB(70, 15, 70, 15),
              child: Text(
                'Materi 3',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: launchYouTube,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: const Color.fromARGB(255, 255, 219, 152),
                    ),
                    padding: const EdgeInsets.all(70),
                    child: Column(
                      children: [
                        Icon(
                          IconData(0xe6a8, fontFamily: 'MaterialIcons'),
                          size: 110.0,
                          color: Colors.black,
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Video',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: launchMateri,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: const Color.fromARGB(255, 255, 219, 152),
                    ),
                    padding: const EdgeInsets.all(70),
                    child: Column(
                      children: [
                        Icon(
                          IconData(0xe37c, fontFamily: 'MaterialIcons'),
                          size: 110.0,
                          color: Colors.black,
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Materi',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
