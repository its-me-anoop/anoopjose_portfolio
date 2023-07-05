// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html' as html;
import 'url_launcher.dart';

class HtmlUrlLauncher implements UrlLauncher {
  @override
  void open(String url, String target) {
    html.window.open(url, target);
  }
}
