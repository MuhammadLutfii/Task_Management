import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:taks_management_app/app/utils/widget/header.dart';
import 'package:taks_management_app/app/utils/widget/sidebar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.blue[100],
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: 
          SideBar(),
          ),
           Expanded(
            flex: 15,
            child: 
                    Column(
            children: [header(),
            Expanded(child: Container(
              padding: EdgeInsets.all(50),
              margin: EdgeInsets.all(10),
             
              decoration: BoxDecoration(
                 color: Colors.white,
                borderRadius: BorderRadius.circular(50)),
            ))],
          ),
          )
        ],
      )
    );
  }
}



