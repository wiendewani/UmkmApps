import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:umkmapp/model/DetailUmkm.dart';
import 'package:umkmapp/provider/DetailUmkmProvider.dart';
import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/theme/TypographyStyle.dart';
import 'package:umkmapp/views/DetailUmkmPage/component/CarouselSection.dart';
import 'package:umkmapp/views/ListUmkmPage/ListUmkmTile.dart';
import 'package:url_launcher/url_launcher.dart';
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
          Container(
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
              padding: const EdgeInsets.symmetric(
                horizontal: SpacingDimens.spacing16,
                vertical: SpacingDimens.spacing24,
              ),
              child: Column(
                children: [
                  FutureBuilder(
                    future: Future.wait([
                      Provider.of<DetailUmkmProvider>(context, listen: false)
                          .getDetailUmkm("5")
                    ]),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      }

                      return Consumer<DetailUmkmProvider>(
                        builder: (context, dataUmkm, _) {
                          return TitleSection(
                              namaToko: dataUmkm.responeDetailUmkm.data.nama,
                              alamatToko: dataUmkm.responeDetailUmkm.data
                                  .alamat);
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: SpacingDimens.spacing24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: SpacingDimens.spacing24,
                        bottom: SpacingDimens.spacing8),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Produk :", style: TypographyStyle.subtitle2,),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: ListUmkmTile(
                            alamat: "Rp.25.000",
                            judul: "Kripik Pedas",
                            no_hp: " ",
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: PaletteColor.primarybg,
              padding: EdgeInsets.symmetric(vertical: SpacingDimens.spacing16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: PaletteColor.primary,
                ),
                onPressed: () async =>
                await launch("https://wa.me/6285746876318?text=Hello"),
                child: Container(
                  alignment: Alignment.center,
//                  width: double.infinity,
                  height: SpacingDimens.spacing48,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SpacingDimens.spacing24),
                    child: Text(
                      '08565181631',
                      style: TypographyStyle.subtitle0.merge(
                        TextStyle(color: PaletteColor.primarybg),
                      ),
                    ),
                  ),
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
