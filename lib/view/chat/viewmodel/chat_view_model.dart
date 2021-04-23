import '../../../core/base/model/base_view_model.dart';
import '../model/chat_text_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'chat_view_model.g.dart';

class ChatViewModel = _ChatViewModelBase with _$ChatViewModel;

abstract class _ChatViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() {}

  var tfController = TextEditingController();

  @observable
  List<ChatTextModel> chatTextList = [
    ChatTextModel('Hello,Esther', 0, false, '1.43 PM'),
    ChatTextModel('Are you busy tomorrow?', 0, false, '1.44 PM'),
    ChatTextModel('Tomorrow I want to go to the park do you want to come', 0, true, '1.46 PM'),
    ChatTextModel('looks fun, yes I will go along', 1, false, '1.47 PM'),
    ChatTextModel('But can I take my friend?', 1, true, '1.47 PM'),
    ChatTextModel('of course', 0, true, '1.47 PM'),
    ChatTextModel('Thanks, Floyd', 1, true, '1.47 PM'),
    ChatTextModel('You\'r welcome', 0, true, '1.49 PM'),
  ];

  @observable
  bool isText = false;

  @action
  void isEmptyText(String text) {
    isText = text.isNotEmpty;
  }

  @action
  void sendMessage(String text) {
    chatTextList.add(ChatTextModel(tfController.text, 1, true, DateFormat('hh:mm a').format(DateTime.now()).toString()));
    chatTextList = chatTextList;
    tfController.text = '';
  }
}
