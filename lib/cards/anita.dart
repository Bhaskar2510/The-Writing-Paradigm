import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AnitaCard extends StatefulWidget {
  const AnitaCard({Key? key}) : super(key: key);

  @override
  State<AnitaCard> createState() => _AnitaCardState();
}

class _AnitaCardState extends State<AnitaCard> {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "The Writing Paradigm",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'SourceSansPro',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          'https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y29kZXxlbnwwfHwwfHw%3D&w=1000&q=80',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );
  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: const AssetImage('assets/images/profile/anita.png'),
      );
}

Widget buildContent() => Column(
      children: [
        const SizedBox(
          height: 16.0,
        ),
        const Text(
          'Anita Rawat',
          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 12.0,
        ),
        const Text(
          'Content Writer',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 21.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSocialIcon(
              FontAwesomeIcons.facebook,
              Uri.parse('https://www.facebook.com/bhaskar2510'),
            ),
            const SizedBox(
              width: 16.0,
            ),
            buildSocialIcon(
              FontAwesomeIcons.github,
              Uri.parse(
                'https://github.com/Bhaskar2510',
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            buildSocialIcon(
              FontAwesomeIcons.twitter,
              Uri.parse('https://twitter.com/Bhaskar_2510_'),
            ),
            const SizedBox(
              width: 16.0,
            ),
            buildSocialIcon(
              FontAwesomeIcons.linkedin,
              Uri.parse('https://www.linkedin.com/in/bhaskarsharma2510'),
            ),
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        const Divider(
          height: 7.0,
        ),
        const SizedBox(
          height: 16.0,
        ),
        buildAbout(),
        const SizedBox(
          height: 32.0,
        ),
      ],
    );

Widget buildAbout() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'About',
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'Abcd',
            style: TextStyle(fontSize: 18.0, height: 1.4),
          ),
        ],
      ),
    );

Widget buildSocialIcon(IconData icon, Uri uri) => CircleAvatar(
    radius: 25.0,
    child: Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      child: InkWell(
        onTap: () async {
          if (!await launchUrl(uri) && kDebugMode) {
            if (kDebugMode) {
              print('Could not launch $uri');
            }
          }
        },
        child: Center(
          child: Icon(
            icon,
            size: 30,
          ),
        ),
      ),
    ));

