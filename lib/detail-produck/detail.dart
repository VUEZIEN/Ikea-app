import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ikea/custom/svg.dart';
import 'package:ikea/detail-produck/components/ImageList.dart';
import 'package:ikea/detail-produck/components/appBar.dart';
import 'package:ikea/detail-produck/components/bottomNav.dart';
import 'package:ikea/detail-produck/components/deskripsi.dart';
import 'package:ikea/theme/color.dart';

class DetailProduck extends StatefulWidget {
  const DetailProduck({super.key});

  @override
  State<DetailProduck> createState() => _DetailProduckState();
}

class _DetailProduckState extends State<DetailProduck> {
  bool SecurePass = true;

  void _SecurePass() {
    setState(() {
      SecurePass = !SecurePass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarDetail(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'images/room.png',
                    width: MediaQuery.of(context).size.width,
                    height: 370,
                  ),
                  Wrap(
                    spacing: 15,
                    children: [
                      ImageList('images/tabledesk.png'),
                      ImageList('images/dek.png'),
                      ImageList('images/tiang.png'),
                      ImageList('images/room.png'),
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ALEX/LAGKAPTEN',
                        style: blackbold20,
                      ),
                      GestureDetector(
                        onTap: _SecurePass,
                        child: SecurePass
                            ? SvgPicture.string(
                                '${Love}',
                              )
                            : SvgPicture.string('${Loved}'),
                      ),
                    ],
                  ),
                  Desc(
                      'Meja, hijau muda/putih, 120x60 cm',
                      'Rp1.909.000',
                      '4.5 | Terjual 116',
                      'Ruang terbatas bukan berarti Anda harus menolak belajar atau bekerja dari rumah. Meja ini memakan sedikit ruang lantai namun masih memiliki unit laci tempat Anda dapat menyimpan kertas dan barang penting lainnya.')
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomDetail(),
    );
  }
}
