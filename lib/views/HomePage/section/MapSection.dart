import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:umkmapp/theme/PaletteColor.dart';
import 'package:umkmapp/theme/SpacingDimens.dart';
import 'package:umkmapp/theme/TypographyStyle.dart';

class MapSection extends StatefulWidget {
  final double latitude;
  final double longitude;

  MapSection({@required this.latitude, @required this.longitude});

  @override
  _MapsSectionState createState() =>
      _MapsSectionState(longitude: longitude, latitude: latitude);
}

class _MapsSectionState extends State<MapSection>
    with AutomaticKeepAliveClientMixin<MapSection> {
  double latitude;
  double longitude;

  _MapsSectionState({@required this.latitude, @required this.longitude});

  LatLng _initialcameraposition = LatLng(20.5937, 78.9629);
  GoogleMapController _controller;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
  }

  void _onMapCreated(GoogleMapController _cntlr) {
    _controller = _cntlr;
    _controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(latitude, longitude), zoom: 15),
      ),
    );
    setState(
      () {
        _markers.add(
          Marker(
            markerId: MarkerId(
              "test",
            ),
            position: LatLng(
              latitude,
              longitude,
            ),
            icon: BitmapDescriptor.defaultMarker,
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      color: PaletteColor.primarybg,
      child: Align(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: SpacingDimens.spacing16,
                  horizontal: SpacingDimens.spacing24),
              alignment: Alignment.topLeft,
              child: Text(
                "Lokasi Kelurahan Tunjung Sekar",
                style: TypographyStyle.subtitle2,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: SpacingDimens.spacing24,
              ),
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  SpacingDimens.spacing88,
                ),
              ),
              child: GoogleMap(
                zoomControlsEnabled: false,
                initialCameraPosition:
                    CameraPosition(target: _initialcameraposition),
                mapType: MapType.normal,
                onMapCreated: _onMapCreated,
                markers: _markers,
                myLocationEnabled: true,
                onTap: (position) {},
                padding: EdgeInsets.only(
                  top: 22,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}
