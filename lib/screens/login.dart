import 'package:blood/screens/tab_bar.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
           width : MediaQuery.of(context).size.width,
          height : MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage ('images/BackgroundPic.png'),fit: BoxFit.cover),),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children :[
                  Image.asset(
                      'images/logo.png',height: 200,width: 200,fit: BoxFit.fitWidth),
                  textItem("Email", emailController, false),
                  const SizedBox(
                    height: 15,
                  ),
                  textItem("Password", passController, true),
                  const SizedBox(
                    height: 15,
                  ),
                  // colorButton("Sign Up"),
                  const SizedBox(
                    height: 15,
                  ),
                  buttonItem("login" , 50.0 , (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TabBarScreen()),
                    );
                  } , Colors.red , Colors.white , Colors.white),
                ]),
          ),
        )
        ,
      ),
    );
  }

  Widget buttonItem(String buttonName, double size, Function() onTap , Color textColor , Color buttonColor , Color borderColor ) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 70,
        child: Card(
          elevation: 0,
          color: buttonColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side:  BorderSide(
                width: 1,
                color: borderColor,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const SizedBox(
                width: 15,
              ),
              Text(
                buttonName,
                style:  TextStyle(
                  color: textColor,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textItem(
      String name, TextEditingController controller, bool obsecureText) {
    return Container(
      width: double.infinity,
      height: 55,
      child: TextFormField(
        controller: controller,
        obscureText: obsecureText,
        style: const TextStyle(
          fontSize: 17,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          labelText: name,
          labelStyle: const TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 1.5,
              color: Colors.amber,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

}
