import 'package:flutter_clean_project/base/base_service.dart';
import 'package:flutter_clean_project/service_template/template_model.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';

class Template extends BaseService implements TemplateModel {
  Template._() {
    _logger = Logger('${this.runtimeType}');
  }

  /// Template
  ///
  /// TODO insert Service description here
  ///
  /// A service that is created as a singleton.
  ///
  /// This service automatically always returns
  /// the Singleton instance or creates a new one, if none exists yet.
  factory Template.singleton() {
    Template _template;

    try {
      _template = GetIt.instance.get<TemplateModel>();
    } catch (_) {
      _template = Template._();
    }
    return _template;
  }

  Logger _logger;

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
