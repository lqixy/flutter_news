import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

Widget btnFlatButtonWidget({
  @required VoidCallback onPressed,
  double width = 140,
  double height = 44,
  Color gbColor = AppColors.primaryElement,
  String title = 'button',
  Color fontColor = AppColors.primaryElementText,
  double fontSize = 18,
  String fontName = 'Montserrat',
  FontWeight fontWeight = FontWeight.w400,
}) {
  return Container(
    width: duSetWidth(width),
    height: duSetHeight(height),
    child: FlatButton(
      onPressed: onPressed,
      color: gbColor,
      shape: RoundedRectangleBorder(borderRadius: Radii.k6pxRadius),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: fontColor,
            fontFamily: fontName,
            fontWeight: fontWeight,
            fontSize: duSetFontSize(fontSize),
            height: 1),
      ),
    ),
  );
}
