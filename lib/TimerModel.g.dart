// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TimerModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TimerModel on _TimerModelBase, Store {
  late final _$secAtom = Atom(name: '_TimerModelBase.sec', context: context);

  @override
  int get sec {
    _$secAtom.reportRead();
    return super.sec;
  }

  @override
  set sec(int value) {
    _$secAtom.reportWrite(value, super.sec, () {
      super.sec = value;
    });
  }

  late final _$minAtom = Atom(name: '_TimerModelBase.min', context: context);

  @override
  int get min {
    _$minAtom.reportRead();
    return super.min;
  }

  @override
  set min(int value) {
    _$minAtom.reportWrite(value, super.min, () {
      super.min = value;
    });
  }

  late final _$buttonstatusAtom =
      Atom(name: '_TimerModelBase.buttonstatus', context: context);

  @override
  String get buttonstatus {
    _$buttonstatusAtom.reportRead();
    return super.buttonstatus;
  }

  @override
  set buttonstatus(String value) {
    _$buttonstatusAtom.reportWrite(value, super.buttonstatus, () {
      super.buttonstatus = value;
    });
  }

  @override
  String toString() {
    return '''
sec: ${sec},
min: ${min},
buttonstatus: ${buttonstatus}
    ''';
  }
}
