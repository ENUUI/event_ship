import 'dart:async';

import 'package:event_ship/event_ship.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([
  MockSpec<EventLanes>(),
  MockSpec<Boat>(),
  MockSpec<StreamSubscription>(),
])
import 'event_lanes_test.mocks.dart';

void main() {
  late MockEventLanes eventLanes;
  late MockBoat<bool> boat;
  late MockStreamSubscription<bool> streamSubscription;
  setUp(() {
    eventLanes = MockEventLanes();
    boat = MockBoat<bool>();
    streamSubscription = MockStreamSubscription<bool>();
  });

  tearDown(() {
    resetMockitoState();
  });

  test('should post event', () {
    when(eventLanes.post<bool>(true)).thenReturn(null);
    eventLanes.post<bool>(true);
    verify(eventLanes.post<bool>(true));
  });

  test('should remove boat', () {
    when(eventLanes.remove<bool>()).thenReturn(boat);
    eventLanes.remove<bool>();
    verify(eventLanes.remove<bool>());
  });

  test('should clear all boats', () {
    when(eventLanes.clear()).thenReturn(null);
    eventLanes.clear();
    verify(eventLanes.clear());
  });

  test('should call boat', () {
    when(eventLanes.call<bool>()).thenReturn(boat);
    eventLanes.call<bool>();
    verify(eventLanes.call<bool>());
  });

  test('should call boat', () {
    when(eventLanes.boat<bool>()).thenReturn(boat);
    eventLanes.boat<bool>();
    verify(eventLanes.boat<bool>());
  });

  test('should subscribe to boat', () {
    final listener = (event) {};
    when(boat.subscribe(listener)).thenReturn(streamSubscription);
    boat.subscribe(listener);
    verify(boat.subscribe(listener));
  });

  test('should post event to boat', () {
    when(boat.post(true)).thenReturn(null);
    boat.post(true);
    verify(boat.post(true));
  });
}
