import 'package:flutter/material.dart';

import 'package:language_learning_app_major_project/constants.dart';
import 'package:language_learning_app_major_project/widgets/primary_button.dart';

class LevelSelectScreen extends StatefulWidget {
  const LevelSelectScreen({super.key});

  @override
  State<LevelSelectScreen> createState() => _LevelSelectScreenState();
}

class _LevelSelectScreenState extends State<LevelSelectScreen> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
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
              SizedBox(height: 100),
              Row(
                children: [
                  const Spacer(),
                  Text(
                    'Select your level',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 30,
                        color: secondaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(height: 15),
              SizedBox(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    LevelBox(
                      isSelected: userLevel == Level.beginner,
                      mq: mq,
                      title: 'Beginner',
                      onTap: () {
                        setState(() {
                          userLevel = Level.beginner;
                        });
                      },
                    ),
                    SizedBox(height: 15),
                    LevelBox(
                      isSelected: userLevel == Level.medium,
                      mq: mq,
                      title: 'Medium',
                      onTap: () {
                        setState(() {
                          userLevel = Level.medium;
                        });
                      },
                    ),
                    SizedBox(height: 15),
                    LevelBox(
                      isSelected: userLevel == Level.advance,
                      mq: mq,
                      title: 'Advance',
                      onTap: () {
                        setState(() {
                          userLevel = Level.advance;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35),
              PrimaryButton(onPressed: () {}, buttonText: "Continue")
            ],
          ),
        ));
  }
}

class LevelBox extends StatelessWidget {
  final Size mq;
  final String title;
  // final String image;
  final bool isSelected;
  final void Function()? onTap;
  const LevelBox({
    Key? key,
    required this.mq,
    required this.title,
    // required this.image,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(20),
        width: mq.width * 0.7,
        height: mq.width * 0.2,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          color: primaryColor,
          border:
              isSelected ? Border.all(color: secondaryColor, width: 4) : null,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
