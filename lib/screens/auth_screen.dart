
import 'package:blood/screens/login.dart';
import 'package:blood/screens/register.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.red[700],
        body: Container(
          width : MediaQuery.of(context).size.width,
          height : MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage ('images/BackgroundPic.png'),fit: BoxFit.cover),),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19.0),
            child: Column(children: [
              const Spacer(),
              Center(child: Image.asset("images/logo.png", height: 200,width: 200,fit: BoxFit.fitWidth)),
              const Spacer(),
              buttonItem("login" , 50.0 , (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              } , Colors.red , Colors.white , Colors.white),
              const SizedBox(height: 10,),
              buttonItem("register" , 50.0 , (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              } , Colors.white , Colors.red[700]! , Colors.white),
              const SizedBox(height: 30,)
            ],),
          ),
        ),
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
}
