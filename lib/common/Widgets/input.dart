import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

Widget inputTextEdit({
  @required TextEditingController controller,
  TextInputType keyboardType = TextInputType.text,
  String hintText,
  bool isPassword = false,
  double marginTop = 15,
  int maxLength = 12,
}) {
  return Container(
    height: duSetHeight(44),
    margin: EdgeInsets.only(top: duSetHeight(marginTop)),
    decoration: BoxDecoration(
        color: AppColors.secondaryElement, borderRadius: Radii.k6pxRadius),
    child: TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 9),
          border: InputBorder.none),
      style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w400,
          fontSize: duSetFontSize(10)),
      maxLength: maxLength,
      autocorrect: false, //自动纠正
      obscureText: isPassword, //隐藏输入内容
    ),
  );
}
