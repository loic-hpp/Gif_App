import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/constant/color.dart';

class Dashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          cursorColor: ThemeColor,
          decoration: InputDecoration(
              isDense: true,
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    const Radius.circular(10.0),
                  )),
              focusedErrorBorder: OutlineInputBorder(
                  // borderSide: BorderSide(color: Colors.red),
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    const Radius.circular(10.0),
                  )),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    const Radius.circular(10.0),
                  )),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    const Radius.circular(10.0),
                  )),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    const Radius.circular(10.0),
                  )),
              fillColor: ThemeTextColorLightest,
              filled: true,
              hintText: "Search ...",
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              )),
        ),
        Text("Dashboard"),
      ],
    );
  }
}