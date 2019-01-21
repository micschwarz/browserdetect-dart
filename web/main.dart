import 'dart:html';

import 'Browser.dart';

void main() {
  print(window.navigator.userAgent);
  Browser b = Browser({'chrome': 71});
  bool comp = b.checkCompatibility();
  querySelector('#output').text = '${b.name} V.${b.version} is ${comp ? '' : 'not '} compatible!';
}
