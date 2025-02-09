import 'package:flutter/material.dart';
import 'package:mentalhealth/constants/textstyle.dart';




class MyButton extends StatelessWidget {


  final double? height;
  final double? width;
  final double?radius;
  final Widget? child;
  final Color?backcolor;
  final double?padding;
  final VoidCallback? onTap;
  const MyButton({super.key,this.padding=0,required this.child,this.radius,required this.onTap,this.height=44,this.width=250,this.backcolor=Colors.blue});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(padding!),
        height: height!,
        width: width!,
        decoration: BoxDecoration(
          color:backcolor,
          borderRadius: BorderRadius.circular(radius??12)

        ),
        child: Center(
          child: child
        ),
      ),
    );
  }
}
