import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 7.0, left: 30.0, right: 30.0, bottom: 7.0),
          child: Column(
            children: const [
              SizedBox(
                height: 21.0,
              ),
              Text(
                'About Us',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Image(image: AssetImage('assets/images/about.png')),
              SizedBox(
                height: 30.0,
              ),

              Text(
                """The Writing Paradigm is a forum for professional writers. We will give you with important tidbits that you will enjoy and relate to significantly. We’re committed to delivering you the finest of blogging, with a focus on consistency, uniqueness, eloquence, and detail-oriented content. We hope you appreciate our blogging as much as we enjoy providing it to you. We are working to turn our passion for writing into a thriving internet website.

We will continue to update crucial information on the website for all of you. Please show your love and support. Thank you for taking the time to look at our website.

Have a wonderful day!""",
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
