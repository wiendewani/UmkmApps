import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:umkmapp/provider/UmkmProvider.dart';
import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/theme/TypographyStyle.dart';
import 'package:umkmapp/views/DetailUmkmPage/DetailUmkm.dart';
import 'package:umkmapp/views/ListUmkmPage/ListUmkmTile.dart';
import 'package:umkmapp/views/ListUmkmPage/RightToLeftTransition.dart';

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
          child: Text("UMKM Kuliner",style: TypographyStyle.subtitle0.merge(TextStyle(color: PaletteColor.primarybg)),),
        ),
      ),
      body: FutureBuilder(
        future: Future.wait([
          Provider.of<UmkmProvider>(context,listen: false).getUmkm("1")
        ]),
        builder: (context, snapshoot) {
                   if(snapshoot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }

          return Consumer<UmkmProvider>(
              builder:(context,dataUmkm,_){
                return ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: dataUmkm.responeUmkm.data.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                            rightToLeftTransition(
                              DetailUmkmPage(
                              ),
                            ),
                          );
                        },
                        child: Container(
                          child: ListUmkmTile(
                            judul: dataUmkm.responeUmkm.data[index].nama,
                            alamat: dataUmkm.responeUmkm.data[index].alamat,
                            no_hp: dataUmkm.responeUmkm.data[index].noTelp,
                          ),
                        ));
                  },
                );
              }
          );
        },
      ),

    );
  }
}
