
import 'package:flutter/material.dart';
import 'package:future_foundation/theme/css.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Field extends StatelessWidget {
  const Field({
    Key key,
    this.hinttext,
    this.onchanged,
    this.type,
    this.registerFormKey,

    this.formatter, this.maxline, this.disable,
  }) : super(key: key);

  final hinttext;
  final type;
  final onchanged;
  final maxline;
  final formatter;
  final registerFormKey;
  final disable;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 24, right: 24, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          color: widgetcolor1,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0x1F000000),
              blurRadius: 8,
              offset: Offset(4, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            //height: 40,
            child: Center(
              child: TextFormField(
                enabled: disable,
                keyboardType: TextInputType.multiline,
                maxLines:(maxline==null)?1:maxline,
                obscureText: type,
                onChanged: onchanged,
                inputFormatters: [ MaskTextInputFormatter(mask: formatter),],
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'WorkSans',
                ),
                cursorColor: Color(0xFF4FBE9F),
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  hintText: hinttext,
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
