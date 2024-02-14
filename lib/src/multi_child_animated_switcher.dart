import 'package:flutter/material.dart';

/// A widget that cross-fades between multiple children and animates between
/// them.
class MultiChildAnimatedSwitcher extends StatelessWidget {
  /// Creates a [MultiChildAnimatedSwitcher].
  const MultiChildAnimatedSwitcher({
    required this.children,
    required this.showWidget,
    this.duration = const Duration(seconds: 1),
    this.reverseDuration = const Duration(seconds: 1),
    this.inCurve = Curves.linear,
    this.outCurve = Curves.linear,
    this.transitionBuilder,
    super.key,
  })  : assert(children.length > 0, 'The children list must not be empty'),
        assert(
          showWidget >= 0,
          'The showWidget must be greater than or equal to 0',
        ),
        assert(
          showWidget < children.length,
          'The showWidget must be less than the length of the children list',
        );

  /// The widgets to be cross-faded.
  final List<Widget> children;

  /// The index of the widget to be shown.
  final int showWidget;

  /// The duration of the animation.
  final Duration duration;

  /// The duration of the reverse animation. If null, will use the value
  /// of [duration].
  final Duration reverseDuration;

  /// The curve of the animation. If null, will use [Curves.linear]
  final Curve inCurve;

  /// The curve of the reverse animation. If null, will use [Curves.linear]
  final Curve outCurve;

  /// The builder function used to generate custom transitions for the
  /// cross-fade. If null, will use [AnimatedSwitcher.defaultTransitionBuilder].
  final Widget Function(Widget child, Animation<double> animation)?
      transitionBuilder;

  @override
  Widget build(BuildContext context) => AnimatedSwitcher(
        duration: duration,
        reverseDuration: reverseDuration,
        switchInCurve: inCurve,
        switchOutCurve: outCurve,
        transitionBuilder:
            transitionBuilder ?? AnimatedSwitcher.defaultTransitionBuilder,
        child: Container(
          key: ValueKey<int>(showWidget),
          child: children[showWidget],
        ),
      );
}
