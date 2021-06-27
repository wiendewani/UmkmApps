
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/theme/TypographyStyle.dart';

class ListUmkmTile extends StatelessWidget {

  String judul, alamat;
  String no_hp;
  final DateFormat dateFormat = DateFormat('EEEE, dd MMMM yyyy', "id_ID");

  ListUmkmTile(
      {this.judul,
      this.alamat,
      this.no_hp,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: SpacingDimens.spacing12,
          right: SpacingDimens.spacing24,
          left: SpacingDimens.spacing24),
      padding: EdgeInsets.symmetric(
        horizontal: SpacingDimens.spacing24,
        vertical: SpacingDimens.spacing16,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: PaletteColor.primarybg2,
        ),
        color: PaletteColor.primarybg,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/slide1.jpg",
              height: 87,
              width: 87,
            ),
          ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: SpacingDimens.spacing24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: SpacingDimens.spacing8,
                  ),
                  Text(
                    "$judul",
                    style: TypographyStyle.paragraph.merge(TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(
                    height: SpacingDimens.spacing8,
                  ),
                  Text(
                    "$alamat",
                    style: TypographyStyle.mini,
                  ),
                  SizedBox(
                    height: SpacingDimens.spacing4,
                  ),
                  Text(
                    no_hp,
                    style: TypographyStyle.mini,
                  ),
                  SizedBox(
                    height: SpacingDimens.spacing8,
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
