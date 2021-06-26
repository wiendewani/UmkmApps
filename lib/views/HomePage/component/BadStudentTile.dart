import 'package:flutter/material.dart';
import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/theme/TypographyStyle.dart';

class BadStudentTile extends StatelessWidget {
  final String name, url, time, category;

  BadStudentTile(
      {@required this.name,
      @required this.url,
      @required this.time,
      @required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SpacingDimens.spacing24,
        vertical: SpacingDimens.spacing16,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: PaletteColor.primarybg2,
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        children: [
          Container(
            height: 60.0,
            width: 60.0,
            child: CircleAvatar(
              backgroundColor: PaletteColor.grey40,
              // backgroundImage: NetworkImage(url),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SpacingDimens.spacing24,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TypographyStyle.caption,
                ),
                SizedBox(
                  height: SpacingDimens.spacing8,
                ),
                detailBadStudent(
                  icon: Icons.schedule,
                  // content: TimeAgoConvert.parse(time).timeAgo,
                  content: "2 Jam lalu",
                ),
                SizedBox(
                  height: SpacingDimens.spacing4,
                ),
                detailBadStudent(
                  icon: Icons.ac_unit,
                  content: category,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget detailBadStudent({@required IconData icon, @required String content}) {
    return Row(
      children: [
        Icon(
          icon,
          size: 12,
          color: PaletteColor.primary,
        ),
        Container(
          margin: EdgeInsets.only(
            left: SpacingDimens.spacing8,
          ),
          child: Text(
            content,
            style: TypographyStyle.mini.merge(
              TextStyle(
                color: PaletteColor.grey60,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
