import 'package:event_ship/event_ship.dart';
import 'package:test/test.dart';

class _EventA {
  _EventA(this.name);

  final String name;
}

void main() {
  group('[EventShip]', () {
    test('post event', () {
      final eventShip = EventLanes();
      final boat = eventShip.boat<_EventA>();
      final event = _EventA('A');

      final f = boat.event.toList().then((value) {
        expect(value.length, 1);
        expect(value[0], event);
        expect(value[0].name, 'A');
      });

      boat.post(event);
      eventShip.remove<_EventA>();
      return f;
    });
  });
}
