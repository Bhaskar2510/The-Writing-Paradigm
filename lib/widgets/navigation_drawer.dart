import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:thewritingparadigm/pages/about.dart';
import 'package:thewritingparadigm/pages/contact_us.dart';
import 'package:thewritingparadigm/pages/team.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.purple]),
        ),
        child: ListView(
          children: <Widget>[
            Stack(alignment: Alignment.topLeft, children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ))
            ]),
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              accountName: const Text("The Writing Paradigm"),
              accountEmail: const Text("thewritingparadigm@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Image.asset("assets/images/image_1.png"),
              ),
            ),
            const SizedBox(height: 21.0),
            const Divider(
              color: Colors.white,
              thickness: 1.3,
            ),
            const SizedBox(height: 3.0),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const OurTeam();
                }));
              },
              child: buildMenuItem(
                text: 'Our Team',
                icon: Icons.person_add_alt_1_rounded,
              ),
            ),
            const SizedBox(height: 3.0),
            const Divider(
              color: Colors.white,
              thickness: 1.3,
            ),
            const SizedBox(height: 3.0),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const AboutPage();
                }));
              },
              child: buildMenuItem(
                text: 'About Us',
                icon: Icons.info,
              ),
            ),
            const SizedBox(height: 3.0),
            const Divider(
              color: Colors.white,
              thickness: 1.3,
            ),
            const SizedBox(height: 3.0),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ContactUs();
                }));
              },
              child: buildMenuItem(
                text: 'Contact Us',
                icon: Icons.mail,
              ),
            ),
            const SizedBox(height: 3.0),
            const Divider(
              color: Colors.white,
              thickness: 1.3,
            ),
            const SizedBox(height: 70.0),
            subscribeButton('Subscribe Us' ,Icons.arrow_forward, Uri.parse('https://mailchi.mp/015f037e231a/subscribe-us'))
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
  }) {
    const color = Colors.white;
    const hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        text,
        style: const TextStyle(color: color),
      ),
      hoverColor: hoverColor,
    );
  }
}

Widget subscribeButton(String text, IconData icon, Uri uri) => InkWell(
        onTap: () async {
          if (!await launchUrl(uri) && kDebugMode) {
            if (kDebugMode) {
              print('Could not launch $uri');
            }
          }
        },
        child: Center(
          child: Container(
            color: Colors.white,
            margin: const EdgeInsets.only(left: 50.0, right: 50.0),
            height: 50.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(fontSize: 21.0, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  icon,
                  size: 30,
                ),
              ],
            )
          ),
        ));


