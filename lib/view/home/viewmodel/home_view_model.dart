import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/model/base_view_model.dart';
import '../model/chat_model.dart';
import '../model/profile_model.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store, BaseViewModel {
  final List<ProfileModel> users = [
    ProfileModel('Burak'),
    ProfileModel('Flutter'),
    ProfileModel('Darrelli'),
    ProfileModel('Devon'),
    ProfileModel('Floyd'),
    ProfileModel('Murphy'),
  ];

  final List<ChatModel> chatList = [
    ChatModel('Darell', 'Hi,tomorrow i go to school with me not ?', '27min', 1),
    ChatModel('Floyd', 'Tomorrow I want to go to the park do you want to come', '20min', 2),
    ChatModel('Murphy', 'Hi, Are you busy today ?', '27min', 3),
    ChatModel('Devon', 'Tomorrow there is extracurricular at school,what do you want', '27min', 4),
  ];

  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {}
}
