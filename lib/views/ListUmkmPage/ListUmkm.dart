import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/theme/TypographyStyle.dart';
import 'package:umkmapp/views/HomePage/HomePage.dart';
import 'package:umkmapp/views/ListUmkmPage/ListUmkmTile.dart';

class ListUmkm extends StatefulWidget {
  @override
  _ListUmkmState createState() => _ListUmkmState();
}

class _ListUmkmState extends State<ListUmkm> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PaletteColor.primary,
        title: Padding(
          padding: const EdgeInsets.only(left: SpacingDimens.spacing12),
          child: Text("UMKM Makan",style: TypographyStyle.subtitle0.merge(TextStyle(color: PaletteColor.primarybg)),),
        ),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 7,
        itemBuilder: (context, index) {
//          var item = dataReport.responeReport.data[index];
          return GestureDetector(
              onTap: (){
//                Navigator.of(context).push(
//                  rightToLeftTransition(
//                    DetailReportPage(
//                      idReport: item.idPelapor,
//                    ),
//                  ),
//                );
              },
              child: Container(
                child: ListUmkmTile(
                  judul: "Misccripy",
                  alamat: "Jalan Margo Utomo No 12",
                  no_hp: "0565181631",
                ),
              ));
        },
      ),

    );
  }
}
