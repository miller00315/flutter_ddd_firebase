import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_project/src/domain/core/value_objects.dart';


@immutable
abstract class IEntity {
  UniqueId get id;
}
