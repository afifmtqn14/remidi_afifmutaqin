import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeksUtama',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TeksUtama'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TeksUtama(
                teks1: 'loulis elua arkananta',
                teks2: 'STI202102584',
              ),
              TeksUtama(
                teks1: 'fidalis gulo',
                teks2: 'STI202102586',
              ),
              TeksUtama(
                teks1: 'muhamad ardiansyah saputra',
                teks2: 'STI202102591',
              ),
              TeksUtama(
                teks1: 'buang apipudin',
                teks2: 'STI202102597',
              ),
              TeksUtama(
                teks1: 'mohamad faiz',
                teks2: 'STI202102601',
              ),
              TeksUtama(
                teks1: 'afif mutqin',
                teks2: 'STI202102602',
              ),
              TeksUtama(
                teks1: 'arif nur fadillah',
                teks2: 'STI202202893',
              ),
              TeksUtama(
                teks1: 'muhammad bagus pradika',
                teks2: 'STI202203130',
              ),
              TeksUtama(
                teks1: 'bela sirfia',
                teks2: 'STI202303394',
              ),
              TeksUtama(
                teks1: 'fuad sururi',
                teks2: 'STI202002091',
              ),
              TeksUtama(
                teks1: 'evan fikri aditya',
                teks2: 'STI202121109',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksUtama({required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    bool isHighlighted = teks1 == 'Afif Mutaqin' && teks2 == 'STI202102602';

    return Container(
      width: double.infinity,  // Ensures the container takes full width
      color: isHighlighted ? Color.fromARGB(255, 7, 112, 231) : Colors.transparent,
      padding: EdgeInsets.all(8.0),  // Padding to ensure the text has some space
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  // Align text to the left
        children: [
          Text(teks1, style: TextStyle(fontSize: 14)),
          Text(teks2, style: TextStyle(fontSize: 14)),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}