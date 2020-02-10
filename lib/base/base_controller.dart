import 'package:flutter/cupertino.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

abstract class BaseController {
  Logger _logger;

  @mustCallSuper
  BaseController() {
    _logger = Logger('${this.runtimeType}');
    initListeners();
  }

  @protected
  void initListeners();

  @mustCallSuper
  @visibleForOverriding
  void dispose() {
    _logger.info('Disposing ${this.runtimeType}');
  }
}
