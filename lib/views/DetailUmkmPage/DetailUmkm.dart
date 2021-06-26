import 'package:flutter/material.dart';
import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/views/DetailUmkmPage/component/CarouselSection.dart';
import 'package:umkmapp/views/ListUmkmPage/ListReportTile.dart';
import 'component/TitleSection.dart';

class DetailUmkmPage extends StatefulWidget {
  @override
  _DetailUmkmPageState createState() => _DetailUmkmPageState();
}

class _DetailUmkmPageState extends State<DetailUmkmPage> {

  bool _load = false;

  loadOn() => setState(() => _load = true);

  loadOff() => setState(() => _load = false);

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget loadingIndicator = _load
        ? Container(
            color: Colors.black26,
            width: double.infinity,
            height: double.infinity,
            child: new Padding(
              padding: const EdgeInsets.all(5.0),
              child: new Center(
                child: CircularProgressIndicator(),
              ),
            ),
          )
        : Container();

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: PaletteColor.primarybg2,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          CarouselSection(),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(
                top: 230,
              ),
              decoration: BoxDecoration(
                color: PaletteColor.primarybg2,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: SpacingDimens.spacing24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleSection(
                      namaMasjid: "data.nama",
                      alamatMasjid: "data.alamat",
                    ),
                    SizedBox(
                      height: SpacingDimens.spacing24,
                    ),
                    Expanded(
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: (){
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
                    ),
                  ],
                ),
              ),
            ),
          ),

          Align(
            child: loadingIndicator,
            alignment: FractionalOffset.center,
          ),
        ],
      ),
    );
  }
}
