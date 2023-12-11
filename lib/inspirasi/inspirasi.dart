import 'package:flutter/material.dart';
import 'package:ikea/inspirasi/components/appBar.dart';
import 'package:ikea/inspirasi/components/grid.dart';

class Inspirasi extends StatefulWidget {
  const Inspirasi({super.key});

  @override
  State<Inspirasi> createState() => _InspirasiState();
}

class _InspirasiState extends State<Inspirasi> {
  int selectedIndex = 0;
  Widget Option(
    int Index,
    String Title,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = Index;
        });
      },
      child: Container(
        width: 127,
        height: 48,
        decoration: BoxDecoration(
            border: Border.all(
                width: 1,
                color: Index == selectedIndex
                    ? Colors.transparent
                    : Color(0xffE7E7E7)),
            color: Index == selectedIndex
                ? Color(0xff0058AB)
                : Colors.transparent),
        child: Center(
            child: Text(
          Title,
          style: TextStyle(
            color: Index == selectedIndex ? Colors.white : Colors.black,
          ),
        )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarInspirasi(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(height: 23.0,),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      spacing: 12,
                      children: [
                        Option(0, 'Semua'),
                        Option(1, 'Ruang Kerja'),
                        Option(2, 'Dapur'),
                        Option(3, 'Ruang Keluarga'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GridCol(
                            'images/setup.png', 'Hunian compact yang\nnyaman'),
                        SizedBox(
                          width: 16.0,
                        ),
                        GridCol('images/sport.png',
                            'Lakukan 5 hal ini\nagar sepatumu bebas ...'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  GridRow(
                      'images/bigbed.png',
                      'Hadirkan nuasa elegant dan fancy\nkedalam kamar tidur anda',
                      context),
                  SizedBox(
                    height: 24.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GridCol('images/soap.png',
                            'Rumah lebih sehat\ndengan set tempat ...'),
                        SizedBox(
                          width: 16.0,
                        ),
                        GridCol('images/toy.png',
                            'Membuat kamar anak\nrapi jadi lebih mudah'),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
