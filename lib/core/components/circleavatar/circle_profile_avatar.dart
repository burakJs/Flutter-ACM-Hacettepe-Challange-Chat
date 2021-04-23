import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../constants/image/image_constants.dart';

class CircleProfile extends StatelessWidget {
  final double size;
  final bool? isSeenBorder;
  const CircleProfile({Key? key, required this.size, this.isSeenBorder = true}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return buildContainerProfile(context);
  }

  Container buildContainerProfile(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: context.colorScheme.background,
          width: isSeenBorder! ? 3 : 0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(2),
        child: CircleAvatar(
          radius: size,
          backgroundImage: ExactAssetImage(ImageConstants.instance.logo),
        ),
      ),
    );
  }
}
