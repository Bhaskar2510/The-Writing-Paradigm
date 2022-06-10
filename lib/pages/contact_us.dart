import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const maxLines = 5;
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
      body: Container(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Contact Us",
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 50.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Image(image: AssetImage('assets/images/map.png',)),
                const SizedBox(
                  height: 7.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'What do people call you?',
                    labelText: 'Name *',
                    fillColor: Colors.grey[270],
                    filled: true,
                  ),
                  validator: (String? value) {
                    return (value != null && value.contains('@'))
                        ? 'Do not use the @ char.'
                        : null;
                  },
                ),
                const SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: const Icon(Icons.mail_rounded),
                    hintText: 'Where do people reach you?',
                    labelText: 'E-mail *',
                    fillColor: Colors.grey[270],
                    filled: true,
                  ),
                  validator: (String? value) {
                    return EmailValidator.validate(value!)
                        ? null
                        : "Please enter a valid email";
                  },
                ),
                const SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  height: maxLines * 24.0,
                  child: TextFormField(
                    maxLines: maxLines,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.message),
                      labelText: 'Message *',
                      hintText: "Enter your message...",
                      fillColor: Colors.grey[270],
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70.0,
                ),
                SizedBox(
                  height: 55.0,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 70.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
