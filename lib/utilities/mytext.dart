import 'package:flutter/material.dart';


class MyText extends StatelessWidget {

  final String?data;
  final VoidCallback? onTap;
  final double?fontSize;
  final Color txtColor;
  final FontWeight? fw;
  const MyText(this.data,{super.key,this.onTap,this.fontSize=12,this.txtColor=Colors.black,this.fw});

  @override
  Widget build(BuildContext context) {
    return InkWell(
onTap: onTap,
      child: Text(

        data!,

        style: TextStyle(
          fontSize: fontSize,
          color:txtColor,
          fontWeight: fw??FontWeight.normal
        ),


      ),
    );
  }
}
