// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Map12 extends StatefulWidget {
  const Map12({ super.key });

  @override
  _Map12State createState() => _Map12State();
}

class _Map12State extends State<Map12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name Eyad amr       ID 12300117',
        style: TextStyle(fontSize: 22),),
      ),
      body: content(),
    );
  }
}

Widget content() {
  return  FlutterMap(
    options:const MapOptions(
      initialCenter: LatLng(30.0444, 31.2357),
      initialZoom: 11,
      interactionOptions: InteractionOptions(flags: ~InteractiveFlag.doubleTapDragZoom)
    ),
    children: [ openStreetmapTileLayer,
       const MarkerLayer(markers: [
      Marker(point: LatLng(29.9631, 31.2610),
      width: 60,
      height: 60,
      alignment: Alignment.centerLeft,
       child: Icon(Icons.location_pin)
          ),
          Marker(point: LatLng(29.9632, 31.2611),
      width: 60,
      height: 60,
      alignment: Alignment.centerLeft,
       child: Icon(Icons.location_pin)
          )
        ]
       ),
     ],

  );
}
TileLayer get openStreetmapTileLayer => TileLayer(
  urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
  userAgentPackageName: "dev.fleaflet.flutter_map.example",
);