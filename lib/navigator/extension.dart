import 'package:flutter/foundation.dart';

enum Page { screenDashboard, screenProfile, screenSearch }

extension RouteExtension on Page {
  String get route => describeEnum(this);
}
