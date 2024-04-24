library event_ship;

import 'dart:async';

/// Abstract class representing a boat for events of type [T].
abstract class Boat<T> {
  /// Returns the stream of events of type [T].
  /// It will not post error event and done event
  /// Instead, define error events and completion events
  Stream<T> get event; // Stream of events
  /// Subscribe to the events in the boat and execute [onData] callback for each event.
  /// It will not post error event and done event
  /// Instead, define error events and completion events
  StreamSubscription<T> subscribe(void Function(T event) onData) {
    return event.listen(onData);
  }

  /// The post method is used to post an event type of [T] to the stream
  /// If the new event is the same as the previous event then it will not be posted.
  /// This is to prevent the same event from being posted multiple times.
  void post(T event); // Post an event to the boat
}

/// Class representing event lanes that manage multiple boats.
class EventLanes {
  final Map<Type, Boat> _boats = {}; // Map of boats

  /// Returns the boat for events of type [T]. If the boat doesn't exist, it creates a new one.
  Boat<T> call<T>() => boat<T>();

  /// Returns the boat for events of type [T]. If the boat doesn't exist, it creates a new one.
  Boat<T> boat<T>() {
    return _boats.putIfAbsent(T, () => _BoatImpl<T>()) as Boat<T>;
  }

  /// Posts an event of type [T] to its respective boat.
  /// If the new event is the same as the previous event then it will not be posted.
  /// This is to prevent the same event from being posted multiple times.
  /// If the boat doesn't exist, it creates a new one.
  ///
  /// See also [Boat.post]
  void post<T>(T event) {
    boat<T>().post(event);
  }

  /// The post method is used to post an event type of [T] to the stream
  /// If the new event is the same as the previous event then it will not be posted.
  /// This is to prevent the same event from being posted multiple times.
  ///
  /// See also [Boat.subscribe]
  StreamSubscription<T> subscribe<T>(void Function(T event) onData) {
    return boat<T>().subscribe(onData);
  }

  /// Removes and disposes the boat for events of type [T].
  /// And returns the boat that was removed if exists.
  Boat<T>? remove<T>() {
    final ret = _boats.remove(T);
    (ret as _BoatImpl?)?.dispose();
    return ret as Boat<T>?;
  }

  /// Clears all the boats and disposes them.
  void clear() {
    for (var event in _boats.values) {
      (event as _BoatImpl).dispose();
    }
    _boats.clear();
  }
}

/// Implementation of the [Boat] interface.
class _BoatImpl<T> implements Boat<T> {
  _BoatImpl();

  final StreamController<T> _streamController = StreamController<T>.broadcast();

  @override
  Stream<T> get event => _streamController.stream;

  T? _before;

  @override
  void post(T event) {
    if (_before == event) {
      return;
    }
    _before = event;
    _streamController.add(event);
  }

  @override
  StreamSubscription<T> subscribe(void Function(T event) onData) {
    return event.listen(onData);
  }

  /// Close the stream controller.
  void dispose() {
    _streamController.close();
  }
}
