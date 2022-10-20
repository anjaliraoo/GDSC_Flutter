// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[300],
            title: const Text(
              'About Me',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          body: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Check out some of my projects below:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse(
                      'https://github.com/anjaliraoo/GDSC_Flutter/tree/master/flutter_application_1');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      title: Text('Portfolio Flutter App'),
                      subtitle: Text(
                          'Created Portfolio mobile app for showcasing my projects and basic information'),
                      trailing: Icon(Icons.link),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse(
                      'https://github.com/anjaliraoo/GDSC_Flutter/tree/master/hello_world');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      title: Text('Hello World'),
                      subtitle: Text(
                          'Basic Hello World to learn Flutter Development'),
                      trailing: Icon(Icons.link),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
