import 'package:flutter/material.dart';
import 'package:flutter_clean_project/base/base_route_settings.dart';
import 'package:flutter_clean_project/base/controller_provider_state.dart';
import 'package:flutter_clean_project/page_template/controller/template_controller.dart';
import 'package:flutter_clean_project/page_template/view/widgets/template_screen.dart';

/// Contains all important parameters that must
/// be passed during navigation to this
/// screen in order to display the page correctly.
class TemplateRouteSettings extends BaseRouteSettings {}

class Template extends StatefulWidget {
  /// Template
  ///
  /// TODO insert Screen description here
  ///
  /// Extends [ControllerProviderState]
  /// to automatically bind the [TemplateController]
  /// to all Widgets inside [Template]
  Template({Key key, TemplateRouteSettings settings})
      : _templateRouteSettings = settings;

  /// Can be used to pass certain values to the page.
  final TemplateRouteSettings _templateRouteSettings;

  /// Route name of the Screen.
  static const String routeName = "/template";

  /// Initialize Screen to use with MaterialApp routes.
  static WidgetBuilder routeInitializer = (BuildContext context) {
    TemplateRouteSettings settings = ModalRoute.of(context).settings.arguments;
    return Template(settings: settings);
  };

  @override
  State<StatefulWidget> createState() {
    return _TemplateState();
  }
}

class _TemplateState
    extends ControllerProviderState<Template, TemplateController> {
  /// Initializes the Controller for this screen.
  final TemplateController _templateController = TemplateController();

  @override
  Widget content(BuildContext context) => TemplateScreen();

  @override
  TemplateController bindController(BuildContext context) =>
      _templateController;

  @override
  void dispose() {
    super.dispose();

    _templateController.dispose();
  }
}
