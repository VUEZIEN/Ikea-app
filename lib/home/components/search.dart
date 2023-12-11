import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ikea/custom/svg.dart';
import 'package:ikea/theme/color.dart';

Widget Searching() {
  return TextField(
    decoration: InputDecoration(
      hintText: 'Cari barang impianmu',
      prefixIcon: Padding(
        padding: EdgeInsets.all(10.0),
        child: SvgPicture.string(
          '${Search}',
          width: 24,
          height: 24,
        ),
      ),
      filled: true,
      fillColor: Colors.transparent,
      border: OutlineInputBorder(
        borderSide: BorderSide(
        color: primarygrey,
        width: 0.1,
      ),
        borderRadius: BorderRadius.circular(2),
      ),
    ),
  );
}
