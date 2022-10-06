import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[100],
            title: const Text('My Projects',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
            ),
            leading: IconButton(
              onPressed:  () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back, color: Colors.black,),
              ),
          ),
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse('https://github.com/');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Project 1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Project to demonstrate what I learned in GDSC Flutter circle',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              GestureDetector(
                onTap: (){
                   final Uri _url = Uri.parse('https://github.com/');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Project 2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Project to demonstrate what I learned in GDSC Flutter circle',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
            ],
          )),
    );
  }
}

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
