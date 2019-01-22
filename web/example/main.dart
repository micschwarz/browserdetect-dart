import 'dart:html';

import '../Browser.dart';

void main() {
  print(window.navigator.userAgent);
  Browser b = Browser({'chrome': 71});
  bool comp = b.checkCompatibility(undefinedFalsy: true);
  querySelector('#output').text = '${b.name} v.${b.version} is ${comp ? '' : 'not '} compatible!';
}
