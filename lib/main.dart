import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  void incremenIndex(){
    setState(() {
      index++;
    });
  }
  var listNama = [
    'Dwi Septi Lutfiana', 'Nanda Wiasti', 'Adhitya Pramudita Ramadhan', 'Devarel Albany Putra Almansyah',
    'Didit Syawaludin', 'Arsyad Maulana', 'Reza Yulisantoso', 'Virda Romadani'
  ];
  var listWarna = [
    Colors.red, Colors.purple, Colors.teal, Colors.lime,
    Colors.indigo, Colors.deepPurple, Colors.cyan,
    Colors.blue, Colors.yellow
  ];
  int index = 0;
  void incrementIndex (){
    setState(() {
      index++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.cyan[50],
        borderRadius: BorderRadius.circular(5),
        boxShadow: [BoxShadow(
          color: Colors.black12,
          spreadRadius: 8,
          offset: Offset(30, 30),
          blurRadius: 2

        )]
      ),
      child: Column(
      children: [
        Text(
          'Apa kabar',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,)
        ),
        Text(
          listNama[index % listNama.length],
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 65,
            fontWeight: FontWeight.bold,
            color: listWarna[index % listWarna.length]
          ),
         )
        ],
      )
    );
  }
}
class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();
  @override
  State<StatefulWidget> createState() => state;
}

void main() {
  TeksUtama teksUtama = TeksUtama();
  runApp(
    MaterialApp(
      title: 'Halo Septi',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halo Dunia'),
        ),
        body: Center(
        child: Column(
          children: [
              teksUtama
        ],)
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Random',
        child: Icon(Icons.refresh),
        onPressed: teksUtama.state.incremenIndex,
        ),
        )
      )
    );
}