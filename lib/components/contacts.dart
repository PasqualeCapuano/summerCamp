import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/drawer.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: Container(
        color: Theme.of(context).colorScheme.primary,
        child: const SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ Text('Menu',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              DrawerList()
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
              ),
            Row(children: [
              Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              width: MediaQuery.of(context).size.width * 0.5,
              height: 200,
              child: const Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: FaIcon(FontAwesomeIcons.phone, color: Colors.blueGrey, size: 20,),
                      ),
                      Text('Phone: +39 1234567890', style: TextStyle(color: Colors.blueGrey),)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: FaIcon(FontAwesomeIcons.envelope, color: Colors.blueGrey, size: 20,),
                      ),
                      Text('Email: info@info.com', style: TextStyle(color: Colors.blueGrey),)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: FaIcon(FontAwesomeIcons.mapPin, color: Colors.blueGrey, size: 20,),
                      ),
                      Text('Address: Via le mani dal naso, 10, 20900 Monza (MB)', style: TextStyle(color: Colors.blueGrey),)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              width: MediaQuery.of(context).size.width * 0.5,
              height: 200,
              child: const Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: FaIcon(FontAwesomeIcons.instagram, color: Colors.blueGrey, size: 20,),
                      ),
                      Text('@instagramPage', style: TextStyle(color: Colors.blueGrey),)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: FaIcon(FontAwesomeIcons.facebook, color: Colors.blueGrey, size: 20,),
                      ),
                      Text('@facebookPage', style: TextStyle(color: Colors.blueGrey),)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: FaIcon(FontAwesomeIcons.globe, color: Colors.blueGrey, size: 20,),
                      ),
                      Text('www.website.com', style: TextStyle(color: Colors.blueGrey),)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            ],
            ),

            SizedBox(
              height: 20,
              ),
            
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlutterMap(
                    options: MapOptions(
                      initialCenter: LatLng(45.4642, 9.1900),
                      initialZoom: 13.0,
                    ),
                    children: [
                      MarkerLayer(
                        markers: [
                          Marker(
                            width: 20,
                            height: 20,
                            point: LatLng(45.4642, 9.1900),
                            child: FaIcon(
                              FontAwesomeIcons.mapMarkerAlt,
                              color: Colors.blue,
                            )
                          ),
                        ]
                        ),
                      TileLayer(
                          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          userAgentPackageName: 'com.example.app',
                      ),
                    ],
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}