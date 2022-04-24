import 'package:flutter/material.dart';
import 'package:onlinecourse/config/theme/theme.dart';

class GeneralButton extends StatelessWidget {

  const GeneralButton({
    Key ? key,
    this.onPressed,
    this.text,
    this.textsize,
    this.color,
    this.activeButton
  }): super(key: key);

  final VoidCallback ? onPressed;
  final String ? text;
  final double ? textsize;
  final Color ? color;
  final bool ? activeButton;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 10 / 1.6,
      child: MaterialButton(
        color: AppColors.colorPrimary,
        disabledColor: AppColors.colorTint500,
        child: Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: textsize
          ),
        ),
        onPressed: activeButton! ? onPressed : null,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        elevation: 0,
        hoverElevation: 0,
        focusElevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
      ),
    );
  }
}