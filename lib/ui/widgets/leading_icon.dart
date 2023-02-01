import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 100.w,
        right: 80.w
      ),
      child: IconButton(
        splashColor: Colors.transparent,
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: SvgPicture.asset('assets/icons/arrow_back.svg',width: 70.w,),
      ),
    );
  }
}
