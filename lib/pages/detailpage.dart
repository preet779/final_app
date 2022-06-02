import 'package:final_app/widgets/app_large_text.dart';
import 'package:final_app/widgets/apptext.dart';
import 'package:final_app/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
  const detailpage({Key? key}) : super(key: key);

  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("preet"),
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                  leading: Icon(Icons.home),
                  title: const Text('Item 1'),
                  onTap: () {}),
              ListTile(
                leading: Icon(Icons.access_alarm_sharp),
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: ListView(children: [
          Container(
            width: 500,
            height: 700,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  left: 0,
                  child: Container(
                    width: double.maxFinite,
                    height: 350,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("img/mountain.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  top: 320,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            applargetext(text: "Yosemite"),
                            applargetext(
                              text: "250",
                              color: Colors.purple,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            apptext(text: "USA, Califonia")
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star)
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            apptext(
                              text: "People",
                              size: 25,
                              color: Colors.black,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          apptext(text: "number of people in group")
                        ]),
                        SizedBox(
                          height: 15,
                        ),
                        Row(children: [
                          applargetext(
                            text: "Description",
                            size: 25,
                          )
                        ]),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            apptext(
                              text: "fkyufuykuyfkuyfkffkiyfkyfr6yr67r76r",
                            )
                          ],
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          children: [
                            responsivebutton(
                              text: "Add this item",
                            ),
                          ],
                        )
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                  ),
                  height: 500,
                )
              ],
            ),
          ),
        ]));
  }
}
