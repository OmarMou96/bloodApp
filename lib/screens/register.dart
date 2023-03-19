import 'package:blood/screens/tab_bar.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../reusableWidgets/text_field_item.dart';


class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  TextEditingController passController = TextEditingController();
  TextEditingController repassController = TextEditingController();


  final List<String> items = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-',
  ];
  String? selectedValue;

  final List<String> genderItems = [
    'Male',
    'Female',
  ];
  String? selectedGenderValue;

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
            child: SingleChildScrollView(
              child: SizedBox(
                height: 900 ,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Image.asset(
                          'images/logo.png',height: 200,width: 200,fit: BoxFit.fitWidth),
                      TextFieldItem(name: "Name",
                          controller: nameController,
                          obsecureText: false),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFieldItem(name:"Email", controller:emailController, obsecureText:false),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFieldItem(name:"Age",controller: ageController,obsecureText: false), // age restriction
                      const SizedBox(
                        height: 15,
                      ),
                      TextFieldItem(name:"Phone",controller: phoneController, obsecureText:false), // age restriction
                      const SizedBox(
                        height: 15,
                      ),

                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Row(
                            children: const [

                              SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: Text(
                                  'Select blood type',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          items: items
                              .map((item) =>
                              DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value as String;
                            });
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                          ),
                          iconSize: 14,
                          iconEnabledColor: Colors.white,
                          iconDisabledColor: Colors.grey,
                          buttonHeight: 50,
                          buttonWidth: 400,
                          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                          buttonDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            color: Colors.red[700],
                          ),
                          buttonElevation: 0,
                          itemHeight: 40,
                          itemPadding: const EdgeInsets.only(left: 14, right: 14),
                          dropdownMaxHeight: 200,
                          dropdownWidth: 380,
                          dropdownPadding: null,
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.redAccent,
                          ),
                          dropdownElevation: 8,
                          scrollbarRadius: const Radius.circular(40),
                          scrollbarThickness: 6,
                          scrollbarAlwaysShow: true,
                          //offset: const Offset(-10, 0),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Row(
                            children: const [

                              SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: Text(
                                  'Select gender',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          items: genderItems
                              .map((item) =>
                              DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ))
                              .toList(),
                          value: selectedGenderValue,
                          onChanged: (value) {
                            setState(() {
                              selectedGenderValue = value as String;
                            });
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                          ),
                          iconSize: 14,
                          iconEnabledColor: Colors.white,
                          iconDisabledColor: Colors.grey,
                          buttonHeight: 50,
                          buttonWidth: 400,
                          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                          buttonDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            color: Colors.red[700],
                          ),
                          buttonElevation: 0,
                          itemHeight: 40,
                          itemPadding: const EdgeInsets.only(left: 14, right: 14),
                          dropdownMaxHeight: 200,
                          dropdownWidth: 380,
                          dropdownPadding: null,
                          dropdownDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            color: Colors.redAccent,
                          ),
                          dropdownElevation: 8,
                          scrollbarRadius: const Radius.circular(40),
                          scrollbarThickness: 6,
                          scrollbarAlwaysShow: true,
                          //offset: const Offset(-10, 0),
                        ),
                      ),

                      const SizedBox(
                        height: 15,
                      ),
                      TextFieldItem(name: "Password",
                          controller: passController,
                          obsecureText: true),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFieldItem(name:"Re-type Password",
                          controller: repassController ,
                          obsecureText: true),
                      const SizedBox(
                        height: 15,
                      ),
                      // colorButton("Sign Up"),
                      const SizedBox(
                        height: 15,
                      ),
                      buttonItem("register" , 50.0 , (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TabBarScreen()),
                        );
                      } , Colors.red , Colors.white , Colors.white),
                    ]),
              ),
            ),
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

}
