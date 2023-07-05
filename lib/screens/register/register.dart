import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/BackgroundPic.png'),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: 900,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/logo.png',
                      height: 200, width: 200, fit: BoxFit.fitWidth),
                  InkWell(
                    onTap: () {
                      _launchURL(
                          'http://bloodbank.pythonanywhere.com/donor/donorsignup');
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 19, horizontal: 100),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Text(
                        'Sign Up as a Donor',
                        style: TextStyle(
                          color: Color(0xffD32F2F),
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      _launchURL(
                          'http://bloodbank.pythonanywhere.com/patient/patientsignup');
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 19, horizontal: 100),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        color: Colors.red[700],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Text(
                        'Sign Up as a Patient',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
