
import 'package:flutter/material.dart';

import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/theme/TypographyStyle.dart';

class TitleSection extends StatelessWidget {
  final String namaToko;
  final String alamatToko;

  TitleSection(
      {@required this.namaToko,
      @required this.alamatToko,});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SpacingDimens.spacing24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            namaToko,
            style: TypographyStyle.subtitle0,
          ),
          SizedBox(
            height: SpacingDimens.spacing8,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                size: 12,
                color: PaletteColor.red,
              ),
              SizedBox(
                width: SpacingDimens.spacing8,
              ),
              Text(
                alamatToko,
                style: TypographyStyle.caption.merge(
                  TextStyle(
                    color: PaletteColor.grey80,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: SpacingDimens.spacing12,
          ),
//          RatingBar.builder(
//            ignoreGestures: true,
//            itemSize: SpacingDimens.spacing24,
//            minRating: 1,
//            initialRating:
//                dataRating.length == 0 ? 0 : total / dataRating.length,
//            allowHalfRating: true,
//            direction: Axis.horizontal,
//            itemCount: 5,
//            itemBuilder: (context, _) => Icon(
//              Icons.star,
//              color: PaletteColor.yellow,
//            ),
//            onRatingUpdate: (double value) {
//              print(value);
//            },
//          ),
        ],
      ),
    );
  }
}
