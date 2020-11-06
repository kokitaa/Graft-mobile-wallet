import 'package:flutter/foundation.dart';
import 'package:loki_wallet/src/domain/exchange/limits.dart';

abstract class LimitsState {}

class LimitsInitialState extends LimitsState {}

class LimitsIsLoading extends LimitsState {}

class LimitsLoadedSuccessfully extends LimitsState {
  LimitsLoadedSuccessfully({@required this.limits});

  final Limits limits;
}

class LimitsLoadedFailure extends LimitsState {
  LimitsLoadedFailure({@required this.error});

  final String error;
}
