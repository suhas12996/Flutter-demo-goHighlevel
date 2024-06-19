import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/core/models/models.dart';

void main() {
  late Address address;

  setUpAll(() {
    address: Address(
          street: '1-14',
          suite: 'Kokkarne',
          city: 'Hebri',
          zipcode: '576234',
          geo: Geo(lat: '-129.3582', lng: '232.897'),
        ):
  });

  group('Address', () {
    group('empty', () {
      test(
        'should return an empty Address object',
        () {
          // ARRANGE
          const expected = Address(
            street: '',
            suite: '',
            city: '',
            zipcode: '',
            geo: Geo.empty(),
          );
          // ACT
          const address = Address.empty();
          // ASSERT
          expect(address, equals(expected));
        },
      );
    });

    group('fromJson', () {
      test(
        'should return a valid Address object',
        () {
          // ARRANGE
          const json = {
           address: Address(
          street: '1-14',
          suite: 'Kokkarne',
          city: 'Hebri',
          zipcode: '576234',
          geo: Geo(lat: '-129.3582', lng: '232.897'),
        
            },
          };
          // ACT
          final newAddress = Address.fromJson(json);
          // ASSERT
          expect(newAddress, isA<Address>());
          expect(newAddress, equals(address));
        },
      );
    });

    group('toJson', () {
      test(
        'should return a valid Map',
        () {
          // ARRANGE
          final expected = {
            'street': 'Kulas Light',
            'suite': 'Apt. 556',
            'city': 'Gwenborough',
            'zipcode': '92998-3874',
            'geo': {
              'lat': '-37.3159',
              'lng': '81.1496',
            },
          };
          // ACT
          final json = address.toJson();
          // ASSERT
          expect(json, isA<Map>());
          expect(json, equals(expected));
        },
      );
    });

    group('copyWith', () {
      test(
        'should return the same object if copyWith is called without parameters',
        () {
          // ARRANGE
          final expected = address;
          // ACT
          final newAddress = address.copyWith();
          // ASSERT
          expect(newAddress, equals(expected));
        },
      );

      test(
        'should return correct object when only street is changed by copyWith',
        () {
          // ARRANGE
          const expected = Address(
            street: 'Victor Plains',
            suite: 'Apt. 556',
            city: 'Gwenborough',
            zipcode: '92998-3874',
            geo: Geo(lat: '-37.3159', lng: '81.1496'),
          );
          // ACT
          final newAddress = address.copyWith(street: 'Victor Plains');
          // ASSERT
          expect(newAddress, equals(expected));
        },
      );
      test(
        'should return correct object when only suite is changed by copyWith',
        () {
          // ARRANGE
          const expected = Address(
            street: 'Kulas Light',
            suite: 'Suite 879',
            city: 'Gwenborough',
            zipcode: '92998-3874',
            geo: Geo(lat: '-37.3159', lng: '81.1496'),
          );
          // ACT
          final newAddress = address.copyWith(suite: 'Suite 879');
          // ASSERT
          expect(newAddress, equals(expected));
        },
      );
      test(
        'should return correct object when only city is changed by copyWith',
        () {
          // ARRANGE
          const expected = Address(
            street: 'Kulas Light',
            suite: 'Apt. 556',
            city: 'Wisokyburgh',
            zipcode: '92998-3874',
            geo: Geo(lat: '-37.3159', lng: '81.1496'),
          );
          // ACT
          final newAddress = address.copyWith(city: 'Wisokyburgh');
          // ASSERT
          expect(newAddress, equals(expected));
        },
      );
      test(
        'should return correct object when only zipcode is changed by copyWith',
        () {
          // ARRANGE
          const expected = Address(
            street: 'Kulas Light',
            suite: 'Apt. 556',
            city: 'Gwenborough',
            zipcode: '90566-7771',
            geo: Geo(lat: '-37.3159', lng: '81.1496'),
          );
          // ACT
          final newAddress = address.copyWith(zipcode: '90566-7771');
          // ASSERT
          expect(newAddress, equals(expected));
        },
      );
      test(
        'should return correct object when only geo is changed by copyWith',
        () {
          // ARRANGE
          const expected = Address(
            street: 'Kulas Light',
            suite: 'Apt. 556',
            city: 'Gwenborough',
            zipcode: '92998-3874',
            geo: Geo(lat: '-43.9509', lng: '-34.4618'),
          );
          // ACT
          final newAddress = address.copyWith(
            geo: const Geo(lat: '-43.9509', lng: '-34.4618'),
          );
          // ASSERT
          expect(newAddress, equals(expected));
        },
      );

      test(
        'should return correct object when all the parameters are changed by copyWith',
        () {
          // ARRANGE
          const expected = Address(
            street: 'Victor Plains',
            suite: 'Suite 879',
            city: 'Wisokyburgh',
            zipcode: '90566-7771',
            geo: Geo(lat: '-43.9509', lng: '-34.4618'),
          );
          // ACT
          final newAddress = address.copyWith(
            street: 'Victor Plains',
            suite: 'Suite 879',
            city: 'Wisokyburgh',
            zipcode: '90566-7771',
            geo: const Geo(lat: '-43.9509', lng: '-34.4618'),
          );
          // ASSERT
          expect(newAddress, equals(expected));
        },
      );
    });

    group('fullAddress', () {
      test(
        'should return correct address',
        () {
          // ARRANGE
          final expected =
              '${address.street} ${address.suite} ${address.city} ${address.zipcode}';
          // ACT
          final fullAddress = address.fullAddress;
          // ASSERT
          expect(fullAddress, equals(expected));
        },
      );
    });
  });
}
