import 'package:doctor_appoinment_ui/core/utils/const.dart';
import 'package:doctor_appoinment_ui/core/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Padding searchFoeld(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.blockSizeHorizontal! * 3,
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          prefixIcon: CupertinoButton(
            child: SvgPicture.asset(AppStyle.searchIcon),
            onPressed: () {},
          ),
          suffixIcon: CupertinoButton(
            child: SvgPicture.asset(AppStyle.filtterIcon),
            onPressed: () {},
          ),
          hintText: "Search medical..",
          fillColor: AppStyle.inputFillColor,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
