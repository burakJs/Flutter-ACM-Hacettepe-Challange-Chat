// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatViewModel on _ChatViewModelBase, Store {
  final _$chatTextListAtom = Atom(name: '_ChatViewModelBase.chatTextList');

  @override
  List<ChatTextModel> get chatTextList {
    _$chatTextListAtom.reportRead();
    return super.chatTextList;
  }

  @override
  set chatTextList(List<ChatTextModel> value) {
    _$chatTextListAtom.reportWrite(value, super.chatTextList, () {
      super.chatTextList = value;
    });
  }

  final _$isTextAtom = Atom(name: '_ChatViewModelBase.isText');

  @override
  bool get isText {
    _$isTextAtom.reportRead();
    return super.isText;
  }

  @override
  set isText(bool value) {
    _$isTextAtom.reportWrite(value, super.isText, () {
      super.isText = value;
    });
  }

  final _$_ChatViewModelBaseActionController =
      ActionController(name: '_ChatViewModelBase');

  @override
  void isEmptyText(String text) {
    final _$actionInfo = _$_ChatViewModelBaseActionController.startAction(
        name: '_ChatViewModelBase.isEmptyText');
    try {
      return super.isEmptyText(text);
    } finally {
      _$_ChatViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void sendMessage(String text) {
    final _$actionInfo = _$_ChatViewModelBaseActionController.startAction(
        name: '_ChatViewModelBase.sendMessage');
    try {
      return super.sendMessage(text);
    } finally {
      _$_ChatViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
chatTextList: ${chatTextList},
isText: ${isText}
    ''';
  }
}
