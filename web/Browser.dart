import 'dart:html';

class Browser {
  final Map<String, int> requiredVersion;

  String _name = null;
  int _version = null;

  get name => _name;

  get version => _version;

  Browser([
    this.requiredVersion = const {
      'firefox': null,
      'chrome': null,
      'opr': null,
      'safari': null,
      'edge': null,
      'trident': null,
      'msie': null,
    },
  ]) {
    List<String> agent = RegExp(
      r'(firefox|chrome|safari|opr|trident|edge(?=\/))\/?\s*([0-9.]+)',
      caseSensitive: false,
    )
        .allMatches(window.navigator.userAgent)
        .map((Match e) => e.group(0))
        .toList();

    if (agent.length == 0 || agent.length > 3) {
      return;
    }

    // Firefox, InternetExplorer (trident), Edge, Safari (length === 1)
    // Chrome (length === 2)
    // Opera, Vivaldi (length === 3)
    int matchIndex = agent.length == 3 ? 2 : 0;

    List<String> browser = agent[matchIndex].split(r'/');
    _name = browser[0].toLowerCase();
    _version = int.parse(browser[1].split('.')[0]);
  }

  bool checkCompatibility({bool undefinedFalsy = false}) {
    if (name == null || !requiredVersion.containsKey(name)) {
      return !undefinedFalsy ? true : false;
    }

    int _requiredVersion = requiredVersion[name];

    return !(_requiredVersion == null || _requiredVersion > version);
  }
}
