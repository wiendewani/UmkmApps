import 'package:flutter/material.dart';
import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/theme/TypographyStyle.dart';
import 'package:umkmapp/views/HomePage/component/LeftStuffTile.dart';


class LeftStuffSection extends StatelessWidget {
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
                    Container(
                      margin: EdgeInsets.only(
                        bottom: SpacingDimens.spacing4,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Left Stuff",
                        style: TypographyStyle.subtitle2,
                      ),
                    ),
                    Text(
                      "Items left in the lab",
                      style: TypographyStyle.mini.merge(
                        TextStyle(
                          color: PaletteColor.grey60,
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
//                    Navigator.of(context).push(
//                      routeTransition(
//                        LeftStuffPage(),
//                      ),
//                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        "View All",
                        style: TypographyStyle.mini.merge(
                          TextStyle(
                            color: PaletteColor.primary,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: SpacingDimens.spacing8,
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 18,
                        color: PaletteColor.primary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
//              Navigator.of(context)
//                  .push(routeTransition(LeftStuffDetailPage()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 215.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      top: SpacingDimens.spacing16,
                      left: index == 0 ? SpacingDimens.spacing24 : 0,
                      right: index == 5 - 1
                          ? SpacingDimens.spacing16
                          : 0,
                    ),
                    child: LeftStuffTile(
                      urlPhoto: "XYAB",
                      name: "XYAB",
                      status: "Available",
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
