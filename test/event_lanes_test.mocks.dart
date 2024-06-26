// Mocks generated by Mockito 5.4.4 from annotations
// in event_ship/test/event_lanes_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:event_ship/event_ship.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeBoat_0<T1> extends _i1.SmartFake implements _i2.Boat<T1> {
  _FakeBoat_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamSubscription_1<T1> extends _i1.SmartFake
    implements _i3.StreamSubscription<T1> {
  _FakeStreamSubscription_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFuture_2<T1> extends _i1.SmartFake implements _i3.Future<T1> {
  _FakeFuture_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [EventLanes].
///
/// See the documentation for Mockito's code generation for more information.
class MockEventLanes extends _i1.Mock implements _i2.EventLanes {
  @override
  _i2.Boat<T> call<T>() => (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
        ),
        returnValue: _FakeBoat_0<T>(
          this,
          Invocation.method(
            #call,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeBoat_0<T>(
          this,
          Invocation.method(
            #call,
            [],
          ),
        ),
      ) as _i2.Boat<T>);

  @override
  _i2.Boat<T> boat<T>() => (super.noSuchMethod(
        Invocation.method(
          #boat,
          [],
        ),
        returnValue: _FakeBoat_0<T>(
          this,
          Invocation.method(
            #boat,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeBoat_0<T>(
          this,
          Invocation.method(
            #boat,
            [],
          ),
        ),
      ) as _i2.Boat<T>);

  @override
  void post<T>(T? event) => super.noSuchMethod(
        Invocation.method(
          #post,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void clear() => super.noSuchMethod(
        Invocation.method(
          #clear,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [Boat].
///
/// See the documentation for Mockito's code generation for more information.
class MockBoat<T> extends _i1.Mock implements _i2.Boat<T> {
  @override
  _i3.Stream<T> get event => (super.noSuchMethod(
        Invocation.getter(#event),
        returnValue: _i3.Stream<T>.empty(),
        returnValueForMissingStub: _i3.Stream<T>.empty(),
      ) as _i3.Stream<T>);

  @override
  _i3.StreamSubscription<T> subscribe(void Function(T)? onData) =>
      (super.noSuchMethod(
        Invocation.method(
          #subscribe,
          [onData],
        ),
        returnValue: _FakeStreamSubscription_1<T>(
          this,
          Invocation.method(
            #subscribe,
            [onData],
          ),
        ),
        returnValueForMissingStub: _FakeStreamSubscription_1<T>(
          this,
          Invocation.method(
            #subscribe,
            [onData],
          ),
        ),
      ) as _i3.StreamSubscription<T>);

  @override
  void post(T? event) => super.noSuchMethod(
        Invocation.method(
          #post,
          [event],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [StreamSubscription].
///
/// See the documentation for Mockito's code generation for more information.
class MockStreamSubscription<T> extends _i1.Mock
    implements _i3.StreamSubscription<T> {
  @override
  bool get isPaused => (super.noSuchMethod(
        Invocation.getter(#isPaused),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  _i3.Future<void> cancel() => (super.noSuchMethod(
        Invocation.method(
          #cancel,
          [],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  void onData(void Function(T)? handleData) => super.noSuchMethod(
        Invocation.method(
          #onData,
          [handleData],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onError(Function? handleError) => super.noSuchMethod(
        Invocation.method(
          #onError,
          [handleError],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onDone(void Function()? handleDone) => super.noSuchMethod(
        Invocation.method(
          #onDone,
          [handleDone],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void pause([_i3.Future<void>? resumeSignal]) => super.noSuchMethod(
        Invocation.method(
          #pause,
          [resumeSignal],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void resume() => super.noSuchMethod(
        Invocation.method(
          #resume,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i3.Future<E> asFuture<E>([E? futureValue]) => (super.noSuchMethod(
        Invocation.method(
          #asFuture,
          [futureValue],
        ),
        returnValue: _i4.ifNotNull(
              _i4.dummyValueOrNull<E>(
                this,
                Invocation.method(
                  #asFuture,
                  [futureValue],
                ),
              ),
              (E v) => _i3.Future<E>.value(v),
            ) ??
            _FakeFuture_2<E>(
              this,
              Invocation.method(
                #asFuture,
                [futureValue],
              ),
            ),
        returnValueForMissingStub: _i4.ifNotNull(
              _i4.dummyValueOrNull<E>(
                this,
                Invocation.method(
                  #asFuture,
                  [futureValue],
                ),
              ),
              (E v) => _i3.Future<E>.value(v),
            ) ??
            _FakeFuture_2<E>(
              this,
              Invocation.method(
                #asFuture,
                [futureValue],
              ),
            ),
      ) as _i3.Future<E>);
}
