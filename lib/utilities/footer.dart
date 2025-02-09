import 'package:flutter/material.dart';
import 'package:mentalhealth/utilities/mytext.dart';


class FooterPage extends StatelessWidget {

  final String?data1;
  final String?data2;
  final VoidCallback? onTap;
  final Color? txttColor;
  const FooterPage({super.key,this.onTap,this.data1,this.data2,this.txttColor=Colors.black});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       MyText(data1,
         fontSize: 16,
       ),
        SizedBox(
          width: 10,
        ),
        MyText(
       data2!,
          onTap: onTap,
          fontSize: 18,
          txtColor: txttColor!,
          fw: FontWeight.bold,
        )
      ],
    );
  }
}
