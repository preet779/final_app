import 'package:final_app/widgets/app_large_text.dart';
import 'package:final_app/widgets/apptext.dart';
import 'package:final_app/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: ((context, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 32, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        applargetext(text: "Trips"),
                        apptext(
                          text: "Mountain",
                          size: 30,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: apptext(
                              text:
                                  "Mountain hikes give you an incredeble sense of freedom along with endurance test"),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        responsivebutton()
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexslider) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexslider ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexslider
                                  ? Colors.purple.shade300
                                  : Colors.purple.shade100),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          })),
    );
  }
}
