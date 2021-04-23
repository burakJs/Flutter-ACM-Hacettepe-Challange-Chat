import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../view/chat/model/chat_text_model.dart';
import '../circleavatar/circle_profile_avatar.dart';

class ChatPageDesign extends StatelessWidget {
  final ChatTextModel model;

  const ChatPageDesign({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return buildRowChatBubbleRow(context);
  }

  Widget buildRowChatBubbleRow(BuildContext context) {
    return Row(
      mainAxisAlignment: model.fromWho == 0 ? MainAxisAlignment.start : MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        model.fromWho == 0 && model.isSeenWhen
            ? Padding(
                padding: EdgeInsets.only(bottom: context.dynamicHeight(0.02)),
                child: CircleProfile(
                  size: 20,
                  isSeenBorder: false,
                ),
              )
            : CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 20,
              ),
        context.emptySizedWidthBoxLow,
        Column(
          crossAxisAlignment: model.fromWho == 0 ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          children: [
            buildContainerChatBubble(context),
            buildTextTime(context),
          ],
        ),
      ],
    );
  }

  Container buildContainerChatBubble(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: context.dynamicWidth(0.7),
      ),
      padding: EdgeInsets.all(context.dynamicWidth(0.035)),
      margin: EdgeInsets.symmetric(vertical: context.lowValue),
      decoration: BoxDecoration(
        color: model.fromWho == 0 ? context.colorScheme.surface.withOpacity(0.17) : context.colorScheme.background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: buildTextMessage(context),
    );
  }

  Text buildTextMessage(BuildContext context) {
    return Text(
      model.message,
      style: context.textTheme.subtitle1!.copyWith(
        color: model.fromWho == 0 ? context.colorScheme.primary : context.colorScheme.secondary,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget buildTextTime(BuildContext context) {
    return Row(
      children: [
        model.fromWho == 1 && model.isSeenWhen
            ? Icon(
                Icons.check,
                color: context.colorScheme.surface,
              )
            : SizedBox(),
        Text(
          model.isSeenWhen ? model.time : '',
          style: context.textTheme.button!.copyWith(fontWeight: FontWeight.bold, color: context.colorScheme.surface),
        ),
      ],
    );
  }
}
