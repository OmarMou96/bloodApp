import 'package:blood/reusableWidgets/text_field_item.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
   UserProfile({Key? key}) : super(key: key);
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0EFEA),
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        title: const Text('User Information'),
        centerTitle: true,
        backgroundColor: Colors.red[700],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(13.0),
        child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      label: Text('Name'),
                      filled: true,
                      fillColor: Colors.red[700],),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration:
                      InputDecoration(label: Text('Name'), filled: true , border: OutlineInputBorder(),),
                ),
                TextFormField(),
                TextFormField(),
                TextFormField(),
                const SizedBox(
                  height: 15,
                ),
                TextFieldItem(name: "Password",
                    controller: passController,
                    obsecureText: true,
                enabled : false,),
                const SizedBox(
                  height: 120,
                  width: 120,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(fontSize: 15),
                    ))
              ],
            ),
          ),
        ),
      );
  }
}
