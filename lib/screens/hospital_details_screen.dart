import 'package:flutter/material.dart';

class HospitalDetailsScreen extends StatelessWidget {
  const HospitalDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(color:Colors.green ,width: double.infinity,
                child: Image.asset("images/Donate.png" , height: 250,)),
            Text("hospital name"),
            Text("hospital, an institution that is built,"
                " staffed, and equipped for the diagnosis of "
                "disease; for the treatment, "
                "both medical and surgical, of the sick and the "
                "injured; and for their housing during this process")
          ],
        ),
      ),
    );
  }
  }
