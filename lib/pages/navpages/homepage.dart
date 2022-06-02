import 'package:final_app/widgets/app_large_text.dart';
import 'package:final_app/widgets/apptext.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> with TickerProviderStateMixin {
  var images = {
    "balloning.png": "balloning",
    "hiking.png": "hiking",
    "kayaking.png": "kayaking",
    "snorkling.png": "snorkling"
  };
  List images2 = ["mountain.jpeg", "welcome-one.png", "welcome-two.png"];
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: const EdgeInsets.only(left: 20, top: 50),
          child: Row(
            children: [
              Icon(
                Icons.menu,
                size: 30,
                color: Colors.black54,
              ),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.5),
                ),
                width: 50,
                height: 50,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: applargetext(text: "Discover"),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
                indicator: circletabindicator(color: Colors.purple, radius: 4),
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                indicatorSize: TabBarIndicatorSize.label,
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                tabs: [
                  Tab(
                    text: "Places",
                  ),
                  Tab(
                    text: "Inspiration",
                  ),
                  Tab(
                    text: "Emotions",
                  ),
                ]),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 30),
          height: 300,
          width: double.maxFinite,
          child: TabBarView(controller: _tabController, children: [
            ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(right: 15, top: 20),
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("img/" + images2[index]),
                          fit: BoxFit.cover)),
                );
              },
            ),
            ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(right: 15, top: 20),
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("img/welcome-one.png"),
                          fit: BoxFit.cover)),
                );
              },
            ),
            Text("bye"),
          ]),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              applargetext(
                text: "Explore more",
                size: 22,
              ),
              apptext(
                text: "See all",
                color: Colors.purple,
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 125,
          width: double.maxFinite,
          margin: EdgeInsets.only(left: 20),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 40, top: 10),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage(
                                  "img/" + images.keys.elementAt(index)),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 40, top: 10),
                      child: apptext(
                        text: images.values.elementAt(index),
                        color: Colors.black54,
                      ),
                    )
                  ],
                );
              }),
        )
      ]),
    );
  }
}

class circletabindicator extends Decoration {
  final Color color;
  double radius;
  circletabindicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _circlepainter(color: color, radius: radius);
  }
}

class _circlepainter extends BoxPainter {
  final Color color;
  double radius;
  _circlepainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleoffset =
        Offset(configuration.size!.width / 2, configuration.size!.height);
    canvas.drawCircle(offset + circleoffset, radius, _paint);
  }
}
