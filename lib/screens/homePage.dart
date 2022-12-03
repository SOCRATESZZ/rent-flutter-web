import 'package:flutter/material.dart';
import 'package:rent/elements/searchBar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/homebg.png'),
                    fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Container(
                color: Colors.transparent,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    searchBar(width: MediaQuery.of(context).size.width * 0.8),
                    SizedBox(
                      width: 500,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                            fontSize: 60.0,
                            fontFamily: 'Agne',
                            color: Colors.white),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText('Predict house rent'),
                            // TypewriterAnimatedText('Design first, then code'),
                            // TypewriterAnimatedText(
                            //     'Do not patch bugs out, rewrite them'),
                            // TypewriterAnimatedText(
                            //     'Do not test bugs out, design them out'),
                          ],
                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
