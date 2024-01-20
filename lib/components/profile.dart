import 'package:flutter/material.dart';
import 'package:portfolio/components/drawer.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My profile'),
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
      body: Center(
        child: Column(
          children: [
            QrImageView(
              data: 'prova testo',
              version: QrVersions.auto,
              size: 200,
              padding: EdgeInsets.all(20),
              eyeStyle: const QrEyeStyle(
                eyeShape: QrEyeShape.square,
                color: Colors.blueGrey,
              ),
              embeddedImage: AssetImage('assets/images/photo.jpeg'),
            ),
          ],
        ),
      )
    );
  }
}