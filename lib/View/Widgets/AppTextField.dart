import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppTextField extends StatefulWidget
{
  BuildContext context;
  double iWidth;
  double iHeight;
  double fontSize;
  TextEditingController controller;
  String hint;
  TextInputType type;
  Color color;
  Color borderColor;
  // Icon icon;
  Color txtColor;
  bool isPwd;

  AppTextField({this.context, this.hint, this.txtColor, this.iHeight, this.iWidth, this.color, this.fontSize, this.borderColor, this.controller, this.isPwd, this.type});

  @override
  State<StatefulWidget> createState() => AppTextFieldState();
}

class AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      borderRadius: BorderRadius.circular(10),
      color: widget.color,
      child: SizedBox(
        width: widget.iWidth,
        height: widget.iHeight,
        child: Center(
          child: TextFormField(
            validator: (val) {
              if (val.isEmpty)
                return "*";
              else
                return null;
            },
            obscureText: widget.isPwd,
            keyboardType: widget.type,
            maxLines: 1000,
            controller: widget.controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: widget.color,
              // isDense: true,
              // prefixIcon: widget.icon,
              contentPadding: EdgeInsets.only(right: widget.iHeight * 0.25),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.red),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.red),
              ),
              suffixStyle: TextStyle(
                  fontSize: widget.fontSize,
                  color: Colors.white,
                  height: 2),
              errorStyle:
                  TextStyle(height: 0, color: Colors.red),
              hintText: widget.hint,
              hintStyle: TextStyle(
                  fontSize: widget.fontSize,
                  color: Colors.grey[500],
                  fontFamily: "Cairo",
                  height: 2),
            ),
            style: TextStyle(
                fontSize: widget.fontSize,
                color: widget.txtColor,
                fontFamily: "Cairo",
                height: 2),
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.left,
            // textInputAction: TextInputAction.next,
            // onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
        ),
      ),
    );
  }
}
