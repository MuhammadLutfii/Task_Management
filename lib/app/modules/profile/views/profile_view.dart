import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:taks_management_app/app/utils/style/AppColors.dart';

import 'package:taks_management_app/app/utils/widget/header.dart';
import 'package:taks_management_app/app/utils/widget/sidebar.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController>  {
final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerkey,
      drawer: SideBar(),
     backgroundColor: AppColors.primaryBg,
      body: Row(
        children: [
           !context.isPhone ?
          Expanded(
            flex: 2,
            child:
          SideBar()
          ): SizedBox(),
           Expanded(
            flex: 15,
            child: 
                    Column(
            children: [!context.isPhone ? header(): Container(
              padding: EdgeInsets.all(20),
              child: Row(children: [
                IconButton(
                  onPressed: (){
                    _drawerkey.currentState!.openDrawer();
                  }, icon: Icon(Icons.menu, color: AppColors.primaryText,)),
                  SizedBox(width: 15,),
                  Column( crossAxisAlignment: CrossAxisAlignment.start, children:[
         Text('Taks Management', style:  TextStyle(fontSize: 20, color: AppColors.primaryText),),
        Text('Manage Your Task Easy',style:  TextStyle(fontSize: 15, color: AppColors.primaryText))]
      ),
      Spacer(),
      Icon(
        Ionicons.notifications, color: AppColors.primaryText,
        ), SizedBox(width: 15,),
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: CircleAvatar(
            backgroundColor: Colors.amber , radius: 25, foregroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Jennifer_Lawrence_in_2016.jpg/220px-Jennifer_Lawrence_in_2016.jpg'),
          ),
        )
              ],),
            ),
            Expanded(child: Container(
              padding: EdgeInsets.all(50),
              margin: !context.isPhone ? EdgeInsets.all(10): EdgeInsets.all(0),
             
              decoration: BoxDecoration(
                 color: Colors.white,
                borderRadius:  !context.isPhone ? BorderRadius.circular(50):BorderRadius.circular(30),),
            ))],
          ),
          )
        ],
      ),
    );
  }
}
