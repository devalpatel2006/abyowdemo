import 'package:abyowdemo/Controller/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(HomeController());
  List<Person> recentUser = [
    Person(
        name: "Bella",
        avatarUrl: "https://i.pravatar.cc/300",
        Msgcount: "2",
        Time: "2:15",
        Typing: "Typing.."),
    Person(
        name: "Bee",
        avatarUrl: "https://picsum.photos/200",
        Msgcount: "",
        Time: "11:25",
        Typing: "ok,take care dear"),
    Person(
        name: "Anne",
        avatarUrl: "https://picsum.photos/200/300?random=2",
        Msgcount: "4",
        Time: "11:25",
        Typing: "where are you?"),
    Person(
        name: "Mommy",
        avatarUrl: "https://picsum.photos/200/300?random=1",
        Msgcount: "1",
        Time: "11:25",
        Typing: "ok,take care dear"),
  ];
  List<Person> AllUser = [
    Person(
        name: "Victoria",
        avatarUrl: "https://i.pravatar.cc/300",
        Msgcount: "",
        Time: "2:15",
        Typing: "Hello are"),
    Person(
        name: "Daddy",
        avatarUrl: "https://picsum.photos/200",
        Msgcount: "",
        Time: "11:25",
        Typing: "I'be home tommow"),
    Person(
        name: "Anne",
        avatarUrl: "https://picsum.photos/200/300?random=2",
        Msgcount: "",
        Time: "11:25",
        Typing: "where are you?"),
    Person(
        name: "Mommy",
        avatarUrl: "https://picsum.photos/200/300?random=1",
        Msgcount: "",
        Time: "11:25",
        Typing: "ok,take care dear"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: new FloatingActionButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              elevation: 0.0,
              child: new Icon(Icons.chat),
              backgroundColor: new Color(0xFFE57373),
              onPressed: () {}),
          body: Stack(
            children: [
              Container(
                color: Colors.white,
              ),
              Container(
                height: 200,
                color: Color(0xFF6B668A),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          Expanded(
                              child: Text(
                            "Chattie",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          )),
                          Icon(Icons.camera, color: Colors.white),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GetBuilder<HomeController>(
                      builder: (_) => Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  controller.UpdateStatus(1);
                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: controller.Chats == true
                                        ? Colors.pink.shade100
                                        : Colors.transparent,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Chats",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  controller.UpdateStatus(2);
                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: controller.status == true
                                        ? Colors.pink.shade100
                                        : Colors.transparent,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Status",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  controller.UpdateStatus(3);
                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: controller.calls == true
                                        ? Colors.pink.shade100
                                        : Colors.transparent,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Calls",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 150),
                padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0))),
                child: GetBuilder<HomeController>(
                    builder: (_) => controller.Chats == true
                        ? SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "Recent Chats",
                                          style: TextStyle(
                                              fontSize: 25, color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.search))
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListView.builder(
                                    itemCount: recentUser.length,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      var userdata = recentUser[index];
                                      return UserView(
                                          userdata.avatarUrl,
                                          userdata.name,
                                          userdata.Typing,
                                          userdata.Time,
                                          userdata.Msgcount);
                                    }),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Text(
                                          "All Chats",
                                          style: TextStyle(
                                              fontSize: 25, color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ListView.builder(
                                    itemCount: AllUser.length,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      var userdata = AllUser[index];
                                      return UserView(
                                          userdata.avatarUrl,
                                          userdata.name,
                                          userdata.Typing,
                                          userdata.Time,
                                          userdata.Msgcount);
                                    }),
                              ],
                            ),
                          )
                        : controller.status == true
                            ? Container(
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "Status",
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ))
                            : controller.calls == true
                                ? Container(
                                    child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        "Calls",
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ))
                                : Container()),
              )
            ],
          )),
    );
  }

  Widget UserView(ProfileImage, Name, MsgTyping, Time, Count) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Image.network(
              ProfileImage,
              height: 70.0,
              width: 70.0,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Text(
                    Name,
                    style: TextStyle(fontSize: 20, color: Color(0xFF6B668A)),
                  ),
                ),
                Container(
                  child: Text(
                    MsgTyping,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                )
              ],
            ),
          )),
          Center(
            child: Column(
              children: [
                Count != ""
                    ? Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: Text(
                          Count,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      )
                    : Container(),
                Container(
                  child: Text(
                    Time,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Person {
  final String name;
  final String avatarUrl;
  final String Typing;
  final String Time;
  final String Msgcount;
  Person(
      {required this.name,
      required this.avatarUrl,
      required this.Msgcount,
      required this.Time,
      required this.Typing});
}
