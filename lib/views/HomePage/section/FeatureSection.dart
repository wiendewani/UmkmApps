import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/theme/TypographyStyle.dart';
import 'package:umkmapp/views/HomePage/HomePage.dart';
import 'package:umkmapp/views/HomePage/component/RouteTransisition.dart';
import 'package:umkmapp/views/ListUmkmPage/ListUmkm.dart';

class FeatureSection extends StatelessWidget {
  final BuildContext ctx;

  FeatureSection({@required this.ctx});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: SpacingDimens.spacing12),
      color: PaletteColor.primarybg,
      child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: SpacingDimens.spacing24,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  featureTile(
                    title: "Kuliner",
                    icon: Icons.face,
                    onTap: () => navigateTo(
                      ListUmkm(),
                    ),
                  ),
                  SizedBox(
                    width: SpacingDimens.spacing16,
                  ),
                  featureTile(
                    title: "Usaha",
                    icon: Icons.face,
                    onTap: () => navigateTo(
                      ListUmkm(),
                    ),
                  ),
                  SizedBox(
                    width: SpacingDimens.spacing16,
                  ),

                ],
              ),
            ],
          )),
    );
  }

  navigateTo(Widget target) {
    Navigator.of(ctx).push(
      routeTransition(target),
    );
  }

  Widget featureTile(
      {@required String title,
      @required IconData icon,
      @required Function onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 80,

          color: PaletteColor.primary40,
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
                  size: 35,
                  color: PaletteColor.primary,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: SpacingDimens.spacing4,
                ),
                child: Text(
                    title,
                  style: TypographyStyle.caption
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
