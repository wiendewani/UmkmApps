import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/theme/TypographyStyle.dart';
import 'package:umkmapp/views/HomePage/HomePage.dart';

class FeatureSection extends StatelessWidget {
  final BuildContext ctx;

  FeatureSection({@required this.ctx});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PaletteColor.primarybg,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: SpacingDimens.spacing24,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    featureTile(
                      title: "Input Grade",
                      icon: Icons.access_alarm,
                      onTap: () => navigateTo(
                        HomePage(),
                      ),
                    ),
                    SizedBox(
                      width: SpacingDimens.spacing16,
                    ),
                    featureTile(
                      title: "Presence",
                      icon: Icons.accessible_rounded,
                      onTap: () => navigateTo(
                        HomePage(),
                      ),
                    ),
                    featureTile(
                      title: "Input Grade",
                      icon: Icons.access_alarm,
                      onTap: () => navigateTo(
                        HomePage(),
                      ),
                    ),
                    SizedBox(
                      width: SpacingDimens.spacing16,
                    ),
                    featureTile(
                      title: "Presence",
                      icon: Icons.accessible_rounded,
                      onTap: () => navigateTo(
                        HomePage(),
                      ),
                    ),
                  ],
                ),

              ],
            )
          ),
        ],
      ),
    );
  }

  navigateTo(Widget target) {
//    Navigator.of(ctx).push(
//      routeTransition(target),
//    );
  }

  Widget featureTile(
      {@required String title,
      @required IconData icon,
      @required Function onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              color: PaletteColor.primarybg2,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(
              4.0,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: PaletteColor.primary40,
                ),
                child: Icon(
                  icon,
                  size: 15,
                  color: PaletteColor.primary,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: SpacingDimens.spacing8,
                ),
                child: Text(
                  title,
                  style: TypographyStyle.caption.merge(
                    TextStyle(
                      color: PaletteColor.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
