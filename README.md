[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://github.com/tenhobi/effective_dart)

A simple flutter widget that allow animation changes between different childeren

## Setup

Add `flutter_multi_child_animated_switcher` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

## How to use

How can we use the package descibe the most common ways with examples in

```dart
 MultiChildAnimatedSwitcher(
    zeroIndexed: true, // Whether the first child is index 0 or 1
    showWidget: show, // The index of the child to show
    // The children that are possible to show
    children: const [
        WidgetOne(),
        WidgetTwo(),
        WidgetThree(),
    ],
),
```

## Issues

Please file any issues, bugs or feature request as an issue on our [GitHub](https://github.com/Iconica-Development/flutter_multi_child_animated_switcher/issues) page. Commercial support is available if you need help with integration with your app or services. You can contact us at [support@iconica.nl](mailto:support@iconica.nl).

## Want to contribute

If you would like to contribute to the plugin (e.g. by improving the documentation, solving a bug or adding a cool new feature), please carefully review our [contribution guide](../CONTRIBUTING.md) and send us your [pull request](https://github.com/Iconica-Development/flutter_multi_child_animated_switcher/pulls).

## Author

This `flutter_multi_child_animated_switcher` for Flutter is developed by [Iconica](https://iconica.nl). You can contact us at <support@iconica.nl>
