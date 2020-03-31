import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttercustomnavigation/navigator/dashboard.dart';
import 'package:fluttercustomnavigation/navigator/extension.dart';
import 'package:fluttercustomnavigation/navigator/profile.dart';
import 'package:fluttercustomnavigation/navigator/search.dart';
import 'package:fluttercustomnavigation/navigator/test_bottom_bar.dart';

class MainBodyApp extends HookWidget {
  final Map<Page, Widget> _fragments = {
    Page.screenDashboard: DashboardPage(),
    Page.screenProfile: UserProfilePage(),
    Page.screenSearch: SearchPage(),
  };

  @override
  Widget build(BuildContext context) {
    final navigatorKey = GlobalObjectKey<NavigatorState>(context);

    return WillPopScope(
      onWillPop: () async {
        if (navigatorKey.currentState.canPop()) {
          navigatorKey.currentState.pop();
          return false;
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('BackStack Screen'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Navigator(
                  key: navigatorKey,
                  initialRoute: Page.screenDashboard.route,
                  onGenerateRoute: (settings) {
                    final pageName = settings.name;
                    final page = _fragments.keys.firstWhere(
                            (element) => describeEnum(element) == pageName);
                    return MaterialPageRoute(settings: settings,
                        builder: (context) => _fragments[page]);
                  },
                ),
              ),
              TestBottomBar()
            ],
          ),
        ),
      ),
    );
  }
}