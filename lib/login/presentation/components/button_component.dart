import 'package:flutter/material.dart';

import '../../../core/color_manger.dart';
import '../../../core/string_manager.dart';

class ButtonComponent extends StatelessWidget {
  final String title;
  final Function()? function;
  final double width;
  const ButtonComponent({
    super.key,
    required this.title,
    this.function,
    this.width=0
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: 50,
        width: width==0?MediaQuery.of(context).size.width:width,
        decoration: BoxDecoration(
            color: ColorManager.primary_900,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: ColorManager.bg_grey_900,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
