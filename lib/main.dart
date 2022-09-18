import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff3DC153),
            title: const Text("Berita Bola"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "BERITA TERBARU",
                ),
                Tab(
                  text: "PERTANDINGAN",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    mainNews(),
                    cardNews(),
                    cardNews(),
                  ],
                ),
              ),
              const Center(
                child: Text("Halaman Jadwal"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container cardNews() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff3DC153),
        ),
      ),
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Image.asset('images/champ-liverpool.jpg'),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: const Text('Liverpool pasti juara lagi dong aamiin'),
                ),
              )
            ],
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0xff3DC153),
                ),
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
            child: const Text('Liverpool, 20 Agustus 2022'),
          ),
        ],
      ),
    );
  }

  Container mainNews() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration:
          BoxDecoration(border: Border.all(color: const Color(0xff3DC153))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset('images/champ-liverpool.jpg'),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: const Center(
              child: Text(
                'Liverpool Juara Lagi aamiin',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
            color: const Color(0xff3DC153),
            child: const Text('Berita'),
          ),
        ],
      ),
    );
  }
}
