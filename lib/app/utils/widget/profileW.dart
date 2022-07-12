import 'package:flutter/cupertino.dart';
import 'package:taks_management_app/app/utils/style/AppColors.dart';

class Profilew extends StatelessWidget {
  const Profilew({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Robert Downy jR', style: TextStyle(color: AppColors.primaryText, fontSize: 30,
                                       ),
                                       ),
                                        Text('Robert@gmail.com', style: TextStyle(color: AppColors.primaryText, fontSize: 15,
                                       ),
                                       ),
        ],
      ),
    );
  }
}