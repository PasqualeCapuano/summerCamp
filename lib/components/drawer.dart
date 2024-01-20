import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/components/contacts.dart';
import 'package:portfolio/components/homepage.dart';
import 'package:portfolio/components/profile.dart';


class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: FilledButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [ 
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.home, color: Colors.white),
                      ),
                    Text('Home', style: TextStyle(color: Colors.white, fontSize: 22)),
                  ],
                ),
              )
          ),
          Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: FilledButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Contacts()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [ 
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.contacts, color: Colors.white),
                      ),
                    Text('Contacts', style: TextStyle(color: Colors.white, fontSize: 22)),
                  ],
                ),
              )
          ),
          Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: FilledButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [ 
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: FaIcon(FontAwesomeIcons.user, color: Colors.white),
                      ),
                    Text('Profile', style: TextStyle(color: Colors.white, fontSize: 22)),
                  ],
                ),
              )
          ),
      ],
      ),
      
      
    );
  }
}