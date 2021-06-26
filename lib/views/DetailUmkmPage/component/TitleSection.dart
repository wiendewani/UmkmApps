
import 'package:flutter/material.dart';

import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/theme/TypographyStyle.dart';

class TitleSection extends StatelessWidget {
  final String namaMasjid;
  final String alamatMasjid;
//  final List<Mosque> dataRating;

  TitleSection(
      {@required this.namaMasjid,
      @required this.alamatMasjid,});

  @override
  Widget build(BuildContext context) {
//    int total = 0;
//    if(dataRating.isEmpty){
//      total = 0;
//    }else{
//      dataRating.forEach((element) {
//        total += element.nilai;
//      });
//    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SpacingDimens.spacing24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            namaMasjid,
            style: TypographyStyle.subtitle0,
          ),
          SizedBox(
            height: SpacingDimens.spacing8,
          ),
          Row(
            children: [
              Icon(
                Icons.child_friendly_rounded,
                size: 12,
                color: PaletteColor.red,
              ),
              SizedBox(
                width: SpacingDimens.spacing8,
              ),
              Text(
                alamatMasjid,
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
