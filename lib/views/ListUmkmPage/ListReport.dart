import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/theme/TypographyStyle.dart';
import 'package:umkmapp/views/HomePage/HomePage.dart';
import 'package:umkmapp/views/ListUmkmPage/ListReportTile.dart';

class ListReport extends StatefulWidget {
  @override
  _ListReportState createState() => _ListReportState();
}

class _ListReportState extends State<ListReport> {
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
          child: Text("Daftar Report",style: TypographyStyle.subtitle0.merge(TextStyle(color: PaletteColor.primarybg)),),
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
                child: ListReportTile(
                  alamat: "item.lokasiKejadian",
                  judul: "item.kejadian",
                  waktu: DateTime.now(),
                ),
              ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: PaletteColor.primary,
        child: Icon(Icons.add, ),
        onPressed: ()
        {Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
        },
      ),
    );
  }
}
