# Browser Detect

[![GitHub tag](https://img.shields.io/github/tag/micschwarz/browserdetect-dart.svg)](https://github.com/micschwarz/browserdetect-dart)

Libary to detect browser + version according to its agent

__Note:__ This is rewritten version of the [original](https://github.com/micschwarz/browserdetect) in dart (for learning purpose) with lesser features


### Check compatibility
1. Set requirements for the Browser. Check the Table below for supported Browser
2. Call the `checkCompatibility()` function. If undef. browser should return false, set the first Parameter to true 

```dart
    Browser b = Browser({'chrome': 71});
    bool comp = b.checkCompatibility(undefinedFalsy: true);
```

### Get Browser Name and Version
```dart
    Browser b = Browser({'chrome': 71});
    String name = b.name;
    int version = b.version;

```

## Supported Browser
| Browser           | Config Name   |
| ----------------- | ------------- |
| Firefox           | firefox       |
| Chrome            | chrome        |
| Opera             | opr           |
| Safari            | safari        |
| Edge              | edge          |
| Internet Explorer | trident       |

## Known Issues
_none_

## Versioning

I'm using [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/micschwarz/browserdetect/tags). 
