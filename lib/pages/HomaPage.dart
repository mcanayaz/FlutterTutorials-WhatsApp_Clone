import 'package:flutter/material.dart';
import 'package:whatsapp_ui_v1/widgets/CallsWidgets.dart';
import 'package:whatsapp_ui_v1/widgets/ChatsWidgets.dart';
import 'package:whatsapp_ui_v1/widgets/StatusWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: AppBar(
              elevation: 0,
              title: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "WhatsApp",
                  style: TextStyle(fontSize: 21, color: Colors.white),
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(top: 12, right: 15),
                  child: Icon(
                    color: Colors.white,
                    Icons.search,
                    size: 28,
                  ),
                ),
                PopupMenuButton(
                  onSelected: (selected) {
                    if (selected == 5) {
                      Navigator.pushNamed(context, "settingsPage");
                    }
                  },
                  iconColor: Colors.white,
                  elevation: 10,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  iconSize: 28,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                        value: 1,
                        child: Text(
                          "New Group",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        )),
                    PopupMenuItem(
                        value: 2,
                        child: Text(
                          "New broadcast",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        )),
                    PopupMenuItem(
                        value: 3,
                        child: Text(
                          "Linked devices",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        )),
                    PopupMenuItem(
                        value: 4,
                        child: Text(
                          "Starred messages",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        )),
                    PopupMenuItem(
                        value: 5,
                        child: Text(
                          "Settings",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                color: Color(0xFF075E55),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 4,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: [
                    //tab 1
                    Container(
                      width: 24,
                      child: Tab(
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    //tab 2
                    Container(
                      width: 90,
                      child: Tab(
                          child: Row(
                        children: [
                          Text(
                            "CHATS",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            alignment: Alignment.center,
                            //padding: EdgeInsets.all(2),
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "10",
                              style: TextStyle(
                                  color: Color(0xFF075E55), fontSize: 13),
                            ),
                          )
                        ],
                      )),
                    ),
                    //tab3
                    Container(
                      width: 85,
                      child: Tab(
                          child: Text(
                        "STATUS",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    //tab 4
                    Container(
                      width: 85,
                      child: Tab(
                        child: Text(
                          "CALLS",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      //tab1 camera
                      Container(
                        color: Colors.black,
                      ),
                      //tab2  ChatsWidgets
                      ChatsWidgets(),

                      //tab3 statuswidget
                      StatusWidget(),
                      //tab4 Ca
                      CallsWidget(),
                    ],
                  ))
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xFF075E55),
            child: Icon(
              Icons.message,
              color: Colors.white,
            ),
          ),
        ));
  }
}
