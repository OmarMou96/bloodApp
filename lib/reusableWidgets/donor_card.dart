import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../screens/donorAvailable/blood_donation_request_model.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class DonorCard extends StatelessWidget {
  final Donor donor;

  const DonorCard({Key? key, required this.donor}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: (Container(
          padding: const EdgeInsets.all(13),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: Border.all(color: Colors.black)),
          child: Row(
            children: [
              Image.asset(
                'images/bloodTypes.png',
                width: 100,
                height: 100,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('omar', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  SizedBox(height: 15.0),
                  Text(donor.address),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(donor.bloodgroup,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Icon(Icons.message),
                      SizedBox(width: 14.0),
                      GestureDetector(
                        child: Icon(Icons.phone),
                        onTap: () async {
                          var url = Uri.parse("tel:${donor.mobile}");
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        )),
      );
}
