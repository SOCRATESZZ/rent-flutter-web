import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:rent/elements/searchBar.dart';

class SearchForm extends StatefulWidget {
  SearchForm({Key? key}) : super(key: key);

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/homebg.png'),
        )),
        child: Column(
          children: [
            // Align(
            //   alignment: Alignment(10, 10),
            //   child: Center(
            //     child: Container(
            //       width: MediaQuery.of(context).size.width * 0.8,
            //       height: 40,
            //       color: Colors.white,
            //     ),
            //   ),
            // )
            // Positioned(
            //   // bottom: 60,
            //   top: 40,
            //   child: Center(
            //     child: searchBar(
            //       width: MediaQuery.of(context).size.width * 0.8,
            //     ),
            //     // child: Container(
            //     //   width: MediaQuery.of(context).size.width * 0.8,
            //     //   height: 40,
            //     //   color: Colors.white,
            //     // ),
            //   ),
            // ),
            // Positioned(
            //     bottom: 160,
            //     child: SizedBox(
            //       width: 500,
            //       child: DefaultTextStyle(
            //         style: const TextStyle(
            //             fontSize: 60.0,
            //             fontFamily: 'Agne',
            //             color: Colors.white),
            //         child: AnimatedTextKit(
            //           animatedTexts: [
            //             TypewriterAnimatedText(
            //                 'Discipline is the best tool'),
            //             TypewriterAnimatedText('Design first, then code'),
            //             TypewriterAnimatedText(
            //                 'Do not patch bugs out, rewrite them'),
            //             TypewriterAnimatedText(
            //                 'Do not test bugs out, design them out'),
            //           ],
            //           onTap: () {
            //             print("Tap Event");
            //           },
            //         ),
            //       ),
            //     ))
          ],
        ),
      ),
    );
  }
}
