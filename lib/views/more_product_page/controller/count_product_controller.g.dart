// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_product_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CountrProductController on _CountrProductControllerBase, Store {
  late final _$countAtom =
      Atom(name: '_CountrProductControllerBase.count', context: context);

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  late final _$_CountrProductControllerBaseActionController =
      ActionController(name: '_CountrProductControllerBase', context: context);

  @override
  void inceriment() {
    final _$actionInfo = _$_CountrProductControllerBaseActionController
        .startAction(name: '_CountrProductControllerBase.inceriment');
    try {
      return super.inceriment();
    } finally {
      _$_CountrProductControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decriment() {
    final _$actionInfo = _$_CountrProductControllerBaseActionController
        .startAction(name: '_CountrProductControllerBase.decriment');
    try {
      return super.decriment();
    } finally {
      _$_CountrProductControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
count: ${count}
    ''';
  }
}
