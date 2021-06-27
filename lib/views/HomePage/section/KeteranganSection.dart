import 'package:flutter/material.dart';
import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/theme/TypographyStyle.dart';


class KeteranganSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: PaletteColor.primarybg,
      padding: EdgeInsets.only(
        top: SpacingDimens.spacing24,
        bottom: SpacingDimens.spacing4,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SpacingDimens.spacing24,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                bottom: SpacingDimens.spacing4,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Kota",
                                style: TypographyStyle.subtitle2,
                              ),
                            ),
                            Text(
                              "Malang",
                              style: TypographyStyle.mini.merge(
                                TextStyle(
                                  color: PaletteColor.grey60,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: SpacingDimens.spacing88,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                bottom: SpacingDimens.spacing4,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Luas Wilayah",
                                style: TypographyStyle.subtitle2,
                              ),
                            ),
                            Text(
                              "1000 m2",
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
                    SizedBox(
                      height: SpacingDimens.spacing16,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        bottom: SpacingDimens.spacing4,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Kecamatan",
                        style: TypographyStyle.subtitle2,
                      ),
                    ),
                    Text(
                      "Lowokwaru",
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
          ),

        ],
      ),
    );
  }
}
