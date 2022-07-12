import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taks_management_app/app/routes/app_pages.dart';
import 'package:taks_management_app/app/utils/style/AppColors.dart';

class MyFriends extends StatelessWidget {
  const MyFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:Column 
          (
            children: [
              Row(
                children: [
                    Text('My Friends', style: TextStyle(color: AppColors.primaryText, fontSize: 30,
                    ),
                    ),
                    Spacer(),
                     GestureDetector(
                       onTap: ()=> Get.toNamed(Routes.FRIENDS),
                       child: Text('more', style: TextStyle(color: AppColors.primaryText, fontSize: 15,
                                         ),
                                         ),
                     ),
                    Icon(Icons.forward, color: AppColors.primaryText)
                ],
                    ),
                     SizedBox(height: 20,
                      ),
                      SizedBox(height: 400,child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 8,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: context.isPhone? 2: 3, crossAxisSpacing: 20, mainAxisSpacing: 20), itemBuilder: (context,index){
                         return Column(children: [
                             ClipRRect(borderRadius: BorderRadius.circular(50),
                                         child: Image( image:  NetworkImage('https://awsimages.detik.net.id/community/media/visual/2019/10/02/ded14627-7777-4579-ab42-d8fa75b143b1_43.jpeg?w=700&q=90',
                                         ),
                                         ),
                                         ),
                 Text('Robert downey Jr', style: TextStyle(color: AppColors.primaryText),)
      
                         ],);
                      }),)
            ],
          ),
        ),
      ),
    );
  }
}