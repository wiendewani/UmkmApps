import 'package:flutter/material.dart';
import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/theme/TypographyStyle.dart';

class LeftStuffTile extends StatelessWidget {
  final String urlPhoto, name, status;

  LeftStuffTile(
      {@required this.urlPhoto, @required this.name, @required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: SpacingDimens.spacing8,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: PaletteColor.primarybg2,
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 140.0,
            height: 135.0,
            decoration: BoxDecoration(
              color: PaletteColor.grey40,
              // image: DecorationImage(
              //   image: NetworkImage(_stuffImage[index]),
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              SpacingDimens.spacing8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TypographyStyle.caption,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  status,
                  style: TypographyStyle.mini.merge(
                    TextStyle(
                      color: status == 'Available'
                          ? PaletteColor.green
                          : PaletteColor.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
