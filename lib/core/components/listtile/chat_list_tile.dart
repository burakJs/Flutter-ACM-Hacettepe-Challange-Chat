import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../view/home/model/chat_model.dart';
import '../circleavatar/circle_profile_avatar.dart';

class ChatListTile extends StatelessWidget {
  final ChatModel model;

  const ChatListTile({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 10,
      leading: CircleProfile(size: 30), //Büyümüyor maalesef :(
      title: Padding(
        padding: EdgeInsets.only(bottom: context.lowValue),
        child: Text(
          model.title,
          style: context.textTheme.subtitle1!.copyWith(color: context.colorScheme.primary, fontWeight: FontWeight.bold),
        ),
      ),
      subtitle: Text(
        model.subTitle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: context.textTheme.subtitle2!.copyWith(color: context.colorScheme.primaryVariant, fontWeight: FontWeight.w600),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            model.time,
            style: context.textTheme.subtitle2!.copyWith(color: context.colorScheme.background),
          ),
          CircleAvatar(
            backgroundColor: context.colorScheme.background,
            radius: context.dynamicWidth(0.03),
            child: Text(
              model.newMessage.toString(),
              style: context.textTheme.subtitle2!.copyWith(color: context.colorScheme.error),
            ),
          ),
        ],
      ),
    );
  }
}
