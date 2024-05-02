// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:language_learning_app_major_project/Functions/navigation.dart';
import 'package:language_learning_app_major_project/Screens/level_selection_screen.dart';

import 'package:language_learning_app_major_project/constants.dart';
import 'package:language_learning_app_major_project/widgets/primary_button.dart';

class LanguageSelectScreen extends StatefulWidget {
  const LanguageSelectScreen({super.key});

  @override
  State<LanguageSelectScreen> createState() => _LanguageSelectScreenState();
}

class _LanguageSelectScreenState extends State<LanguageSelectScreen> {
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
              SizedBox(height: 50),
              Row(
                children: [
                  const Spacer(),
                  Text(
                    'Which language whould \n you like learn?',
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
                child: GridView(
                  shrinkWrap: true,
                  children: [
                    LanguageBox(
                      isSelected: selectedLanguage == "Hindi",
                      mq: mq,
                      image:
                          'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png',
                      title: 'Hindi',
                      onTap: (() {
                        setState(() {
                          selectedLanguage = "Hindi";
                        });
                      }),
                    ),
                    LanguageBox(
                      isSelected: selectedLanguage == "German",
                      mq: mq,
                      image:
                          'https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Flag_of_Germany.svg/640px-Flag_of_Germany.svg.png',
                      title: 'German',
                      onTap: (() {
                        setState(() {
                          selectedLanguage = "German";
                        });
                      }),
                    ),
                    LanguageBox(
                      isSelected: selectedLanguage == "French",
                      mq: mq,
                      image:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Flag_of_France_%282020%E2%80%93present%29.svg/375px-Flag_of_France_%282020%E2%80%93present%29.svg.png',
                      title: ' French',
                      onTap: (() {
                        setState(() {
                          selectedLanguage = "French";
                        });
                      }),
                    ),
                    LanguageBox(
                      isSelected: selectedLanguage == "English",
                      mq: mq,
                      image:
                          'https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/1280px-Flag_of_the_United_Kingdom.svg.png',
                      title: 'English ',
                      onTap: (() {
                        setState(() {
                          selectedLanguage = "English";
                        });
                      }),
                    ),
                    LanguageBox(
                      isSelected: selectedLanguage == "Spanish",
                      mq: mq,
                      image:
                          'https://upload.wikimedia.org/wikipedia/en/thumb/9/9a/Flag_of_Spain.svg/1200px-Flag_of_Spain.svg.png',
                      title: 'Spanish ',
                      onTap: (() {
                        setState(() {
                          selectedLanguage = "Spanish";
                        });
                      }),
                    ),
                    LanguageBox(
                      isSelected: selectedLanguage == "Japaniese",
                      mq: mq,
                      image:
                          'https://upload.wikimedia.org/wikipedia/en/thumb/9/9e/Flag_of_Japan.svg/1200px-Flag_of_Japan.svg.png',
                      title: ' Japaniese',
                      onTap: (() {
                        setState(() {
                          selectedLanguage = "Japaniese";
                        });
                      }),
                    ),
                  ],
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                ),
              ),
              SizedBox(height: 35),
              PrimaryButton(
                  onPressed: () {
                    nextScreen(context, LevelSelectScreen());
                  },
                  buttonText: "Continue")
            ],
          ),
        ));
  }
}

class LanguageBox extends StatelessWidget {
  final Size mq;
  final String title;
  final String image;
  final bool isSelected;
  final void Function()? onTap;
  const LanguageBox({
    Key? key,
    required this.mq,
    required this.title,
    required this.image,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(20),
        width: mq.width * 0.2,
        height: mq.width * 0.2,
        decoration: BoxDecoration(
          color: primaryColor,
          border:
              isSelected ? Border.all(color: secondaryColor, width: 4) : null,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: Image.network(image),
            ),
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
