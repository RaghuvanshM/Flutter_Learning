import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ui/screen/travelapp/widgets/app_smalltext.dart';
import 'package:flutter_ui/screen/travelapp/widgets/app_text.dart';
import 'package:flutter_ui/screen/travelapp/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["bacground.png", "bacground.png", "blankbg.png"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: "Trips"),
                          AppSmallText(
                            text: 'Mountain',
                            size: 30,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 250,
                            child: AppSmallText(
                              text:
                                  'It is a long ebe distracted byIt is a long ebe distracted byIt is a long ebe distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
                            ),
                          ),
                          ResponsiveButton(
                            width: 120,
                          )
                        ]),
                    Column(
                      children: List.generate(3, (indexdots) {
                        return Container(
                          width: 8,
                          margin: const EdgeInsets.only(bottom: 2),
                          height: index == indexdots ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexdots
                                  ? const Color.fromARGB(255, 124, 33, 243)
                                  : Colors.white),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
