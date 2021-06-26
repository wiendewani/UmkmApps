import 'package:flutter/material.dart';
import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/theme/TypographyStyle.dart';
import 'package:umkmapp/views/HomePage/component/BadStudentTile.dart';

class BadStudentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: PaletteColor.primarybg,
      padding: EdgeInsets.symmetric(
        vertical: SpacingDimens.spacing16,
        horizontal: SpacingDimens.spacing24,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: SpacingDimens.spacing4,
                    ),
                    child: Text(
                      "Bad Student",
                      style: TypographyStyle.subtitle2,
                    ),
                  ),
                  Text(
                    "Latest bad 5 Student",
                    style: TypographyStyle.mini.merge(
                      TextStyle(
                        color: PaletteColor.grey60,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                  top: index == 0
                      ? SpacingDimens.spacing16
                      : SpacingDimens.spacing4,
                ),
                child: BadStudentTile(
                  url: "https://krs.umm.ac.id/Poto/2018/201810370311152.JPG",
                  name: "XYAB",
                  time: "XYAB",
                  category: "XYAB",
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
