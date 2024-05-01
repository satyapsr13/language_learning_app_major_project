// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:language_learning_app_major_project/Functions/navigation.dart';
import 'package:language_learning_app_major_project/Screens/language_selection_screen.dart';
import 'package:language_learning_app_major_project/constants.dart';
import 'package:language_learning_app_major_project/widgets/primary_button.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: () {},
          child: Icon(
            Icons.arrow_back,
            color: secondaryColor,
          ),
        ),
        backgroundColor: Color(0xfff0fdff),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 150),
              Row(
                children: [
                  const Spacer(),
                  Text(
                    'Lets gets started',
                    style: const TextStyle(
                        fontSize: 30,
                        color: secondaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(height: 15),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            secondaryColor, // Specify your desired border color here
                        width: 2.0, // Specify the border width
                      ),
                      borderRadius: BorderRadius.circular(
                          10.0), // Optional: for rounded corners
                    ),
                    child: TextField(
                      style: TextStyle(
                        // fontSize: 20,
                        color: secondaryColor,
                      ),
                      decoration: InputDecoration(
                        // hintText: '',

                        hintText: "Name",
                        border: InputBorder
                            .none, // Hide the default TextField border
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0), // Optional: adjust the padding
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            secondaryColor, // Specify your desired border color here
                        width: 2.0, // Specify the border width
                      ),
                      borderRadius: BorderRadius.circular(
                          10.0), // Optional: for rounded corners
                    ),
                    child: TextField(
                      style: TextStyle(
                        // fontSize: 20,
                        color: secondaryColor,
                      ),
                      decoration: InputDecoration(
                        // hintText: '',

                        hintText: "Email",
                        border: InputBorder
                            .none, // Hide the default TextField border
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0), // Optional: adjust the padding
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            secondaryColor, // Specify your desired border color here
                        width: 2.0, // Specify the border width
                      ),
                      borderRadius: BorderRadius.circular(
                          10.0), // Optional: for rounded corners
                    ),
                    child: TextField(
                      style: TextStyle(
                        // fontSize: 20,
                        color: secondaryColor,
                      ),
                      decoration: InputDecoration(
                        // hintText: '',

                        hintText: "Password",
                        border: InputBorder
                            .none, // Hide the default TextField border
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0), // Optional: adjust the padding
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color:
                            secondaryColor, // Specify your desired border color here
                        width: 2.0, // Specify the border width
                      ),
                      borderRadius: BorderRadius.circular(
                          10.0), // Optional: for rounded corners
                    ),
                    child: TextField(
                      style: TextStyle(
                        // fontSize: 20,
                        color: secondaryColor,
                      ),
                      decoration: InputDecoration(
                        // hintText: '',

                        hintText: "Confirm Password",
                        border: InputBorder
                            .none, // Hide the default TextField border
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0), // Optional: adjust the padding
                      ),
                    ),
                  )),
              SizedBox(height: 35),
              PrimaryButton(
                  onPressed: () {
                    nextScreenWithFadeAnimation(
                        context, LanguageSelectScreen());
                  },
                  buttonText: "Create Account")
            ],
          ),
        ));
  }
}
