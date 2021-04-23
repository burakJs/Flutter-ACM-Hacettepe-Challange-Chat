import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../view/home/model/profile_model.dart';
import 'circle_profile_avatar.dart';

class CircleProfileText extends StatelessWidget {
  final ProfileModel model;
  final double size;

  CircleProfileText({Key? key, required this.model, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleProfile(size: size),
        Text(
          model.name,
          style: context.textTheme.subtitle2,
        )
      ],
    );
  }
}
