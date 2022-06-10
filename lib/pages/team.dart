import 'package:flutter/material.dart';
import 'package:thewritingparadigm/cards/anita.dart';
import 'package:thewritingparadigm/cards/arushi.dart';
import 'package:thewritingparadigm/cards/bhaskar.dart';
import 'package:thewritingparadigm/cards/bhavna.dart';
import 'package:thewritingparadigm/cards/chhavi.dart';
import 'package:thewritingparadigm/cards/deepanshu.dart';
import 'package:thewritingparadigm/cards/diya.dart';
import 'package:thewritingparadigm/cards/khushi.dart';
import 'package:thewritingparadigm/cards/shefali.dart';
import 'package:thewritingparadigm/cards/vani.dart';

class OurTeam extends StatefulWidget {
  const OurTeam({Key? key}) : super(key: key);

  @override
  State<OurTeam> createState() => _OurTeamState();
}

class _OurTeamState extends State<OurTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Our Team",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'SourceSansPro',
            fontSize: 30.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const SizedBox(
                height: 7.0,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 16.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BhaskarCard(),
                        ));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Ink.image(
                          height: 450.0,
                          image: const AssetImage(
                              'assets/images/profile/bhaskar.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 16.0, right: 16.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Bhaskar Sharma',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30.0,
                                ),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                'Founder',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21.0,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 16.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChhaviCard(),
                        ));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Ink.image(
                          height: 450.0,
                          image: const AssetImage(
                              'assets/images/profile/chhavi.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 16.0, right: 16.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Chhavi Tomar',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30.0,
                                ),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                'Co-Founder',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21.0,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 16.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const KhushiCard(),
                        ));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Ink.image(
                          height: 450.0,
                          image: const AssetImage(
                              'assets/images/profile/khushi.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 16.0, right: 16.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Khushi Khera',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30.0,
                                ),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                'Editor',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21.0,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 16.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BhavnaCard(),
                        ));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Ink.image(
                          height: 450.0,
                          image: const AssetImage(
                              'assets/images/profile/bhavna.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 16.0, right: 16.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Bhavna Gupta',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30.0,
                                ),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                'Creative Director',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21.0,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 16.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ArushiCard(),
                        ));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Ink.image(
                          height: 450.0,
                          image: const AssetImage(
                              'assets/images/profile/arushi.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 16.0, right: 16.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Arushi Sharma',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30.0,
                                ),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                'Social Media Manager',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21.0,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 16.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DeepanshuCard(),
                        ));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Ink.image(
                          height: 450.0,
                          image: const AssetImage(
                              'assets/images/profile/deepanshu.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 16.0, right: 16.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Deepanshu Ambavat',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30.0,
                                ),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                'Social Media Manager',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21.0,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 16.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DiyaCard(),
                        ));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Ink.image(
                          height: 450.0,
                          image: const AssetImage(
                              'assets/images/profile/diya.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 16.0, right: 16.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Diya Bisht',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30.0,
                                ),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                'Content Writer',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21.0,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 16.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AnitaCard(),
                        ));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Ink.image(
                          height: 450.0,
                          image: const AssetImage(
                              'assets/images/profile/anita.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 16.0, right: 16.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Anita Rawat',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30.0,
                                ),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                'Content Writer',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21.0,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 16.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VaniCard(),
                        ));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Ink.image(
                          height: 450.0,
                          image: const AssetImage(
                              'assets/images/profile/vani.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 16.0, right: 16.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Vani Jain',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30.0,
                                ),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                'Content Writer',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21.0,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 16.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShefaliCard(),
                        ));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Ink.image(
                          height: 450.0,
                          image: const AssetImage(
                              'assets/images/profile/shefali.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, top: 16.0, right: 16.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Shefali Saren',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30.0,
                                ),
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              Text(
                                'Content Writer',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: 'Pacifico',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 21.0,
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
