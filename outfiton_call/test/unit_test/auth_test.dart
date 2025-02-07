import 'package:flutter_test/flutter_test.dart';
import 'package:outfitoncall/features/auth/domain/entity/auth_entity.dart';

void main() {
  group('AuthEntity', () {
    // Test 1: All fields are properly initialized
    test('should initialize with all fields', () {
      const authEntity = AuthEntity(
        userId: '123',
        email: 'test@example.com',
        image: 'image.jpg',
        password: 'password',
      );

      expect(authEntity.userId, '123');
      expect(authEntity.email, 'test@example.com');
      expect(authEntity.image, 'image.jpg');
      expect(authEntity.password, 'password');
    });

    // Test 2: Optional fields can be null
    test('should handle null optional fields', () {
      const authEntity = AuthEntity(
        email: 'test@example.com',
        password: 'password',
      );

      expect(authEntity.userId, isNull);
      expect(authEntity.image, isNull);
    });

    // Test 3: Equality when properties match
    test('should be equal when properties match', () {
      const authEntity1 = AuthEntity(
        userId: '1',
        email: 'test@example.com',
        image: 'image.jpg',
        password: 'password',
      );

      const authEntity2 = AuthEntity(
        userId: '2',
        email: 'test@example.com',
        image: 'image.jpg',
        password: 'password',
      );

      expect(authEntity1, equals(authEntity2));
    });

    // Test 4: Inequality when email differs
    test('should not be equal when emails differ', () {
      const authEntity1 = AuthEntity(
        email: 'test1@example.com',
        password: 'password',
      );

      const authEntity2 = AuthEntity(
        email: 'test2@example.com',
        password: 'password',
      );

      expect(authEntity1, isNot(equals(authEntity2)));
    });

    // Test 5: Inequality when image differs
    test('should not be equal when images differ', () {
      const authEntity1 = AuthEntity(
        email: 'test@example.com',
        image: 'image1.jpg',
        password: 'password',
      );

      const authEntity2 = AuthEntity(
        email: 'test@example.com',
        image: 'image2.jpg',
        password: 'password',
      );

      expect(authEntity1, isNot(equals(authEntity2)));
    });

    // Test 6: Inequality when password differs
    test('should not be equal when passwords differ', () {
      const authEntity1 = AuthEntity(
        email: 'test@example.com',
        password: 'password1',
      );

      const authEntity2 = AuthEntity(
        email: 'test@example.com',
        password: 'password2',
      );

      expect(authEntity1, isNot(equals(authEntity2)));
    });

    // Test 7: Verify props contain correct values
    test('props should contain email, image, and password', () {
      const authEntity = AuthEntity(
        email: 'test@example.com',
        password: 'password',
        image: 'image.jpg',
      );

      expect(authEntity.props, [
        'test@example.com',
        'image.jpg',
        'password',
      ]);
    });

    // Test 8: Handle empty email string
    test('should handle empty email', () {
      const authEntity = AuthEntity(
        email: '',
        password: 'password',
      );

      expect(authEntity.email, isEmpty);
    });

    // Test 9: Handle empty password string
    test('should handle empty password', () {
      const authEntity = AuthEntity(
        email: 'test@example.com',
        password: '',
      );

      expect(authEntity.password, isEmpty);
    });

    // Test 10: Different userId doesn't affect equality
    test('should ignore userId in equality check', () {
      const authEntity1 = AuthEntity(
        userId: '1',
        email: 'test@example.com',
        password: 'password',
      );

      const authEntity2 = AuthEntity(
        userId: '2',
        email: 'test@example.com',
        password: 'password',
      );

      expect(authEntity1, equals(authEntity2));
    });
  });
}
