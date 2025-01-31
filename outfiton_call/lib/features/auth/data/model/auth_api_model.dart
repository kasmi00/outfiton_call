import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:outfitoncall/features/auth/domain/entity/auth_entity.dart';

part 'auth_api_model.g.dart';

@JsonSerializable()
class AuthApiModel extends Equatable {
  @JsonKey(name: '_id')
  final String? id;
  final String email;
  final String? image;
  final String? password;

  const AuthApiModel({
    this.id,
    required this.email,
    required this.image,
    required this.password,
  });

  factory AuthApiModel.fromJson(Map<String, dynamic> json) =>
      _$AuthApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthApiModelToJson(this);

  // To Entity
  AuthEntity toEntity() {
    return AuthEntity(
      userId: id,
      email: email,
      image: image,
      password: password ?? '',
    );
  }

  // From Entity
  factory AuthApiModel.fromEntity(AuthEntity entity) {
    return AuthApiModel(
      email: entity.email,
      image: entity.image,
      password: entity.password,
    );
  }

  @override
  List<Object?> get props => [id, image, email, password];
}
