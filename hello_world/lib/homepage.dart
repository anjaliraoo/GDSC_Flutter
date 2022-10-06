import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//you can write it anywhere outside the class
Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: const Text(
          'My Projects',
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
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            color: Colors.deepOrange[200],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            color: Colors.deepPurple[100],
          ),
        ),
        GestureDetector(
          onTap: () {
            final Uri _url = Uri.parse(
                'https://github.com/anjaliraoo/GDSC_Flutter/tree/master/hello_world');
            _launchUrl(_url);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                'Project 1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              height: 50,
              color: Colors.deepPurple[100],
            ),
          ),
        )
      ]),
    );
  }
}
