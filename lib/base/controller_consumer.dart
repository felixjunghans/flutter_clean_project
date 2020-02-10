import 'package:flutter/material.dart';
import 'package:flutter_clean_project/base/base_controller.dart';
import 'package:provider/provider.dart';

/// ControllerConsumer<T>
///
/// Consumes the Provider<T> of the current Context
abstract class ControllerConsumer<T extends BaseController>
    extends StatelessWidget {
  T controller(BuildContext context) => Provider.of<T>(context);

  @protected
  Widget builder(BuildContext context, T controller, Widget child);

  @override
  Widget build(BuildContext context) {
    return Consumer<T>(
      builder: builder,
    );
  }
}
