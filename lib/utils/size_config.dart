import 'package:flutter/material.dart';

class SizeConfig {
  static double desctop = 1200;
  static double tablet = 800;
  static late double width, hegith;
  static init(context) {
    width = MediaQuery.sizeOf(context).width;
    hegith = MediaQuery.sizeOf(context).height;
  }
}
