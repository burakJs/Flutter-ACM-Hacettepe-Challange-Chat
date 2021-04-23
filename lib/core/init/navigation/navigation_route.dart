import '../../constants/navigation/navigation_constants.dart';
import '../../../view/chat/view/chat_view.dart';
import '../../../view/home/model/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.CHAT:
        final model = args.arguments as ChatModel;
        return normalNavigate(ChatView(model: model));
      default:
        return MaterialPageRoute(
          builder: (context) => Center(child: Text(args.name.toString())),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
