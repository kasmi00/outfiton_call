import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:outfitoncall/app/usecase/usecase.dart';
import 'package:outfitoncall/core/error/failure.dart';
import 'package:outfitoncall/features/auth/domain/entity/auth_entity.dart';
import 'package:outfitoncall/features/auth/domain/repository/auth_repository.dart';

class RegisterUserParams extends Equatable {
  final String email;
  final String password;
  final String? image;

  const RegisterUserParams({
    required this.email,
    required this.password,
    this.image,
  });

  //intial constructor
  const RegisterUserParams.initial({
    required this.email,
    required this.password,
    this.image,
  });

  @override
  List<Object?> get props => [image, email, password];
}

class RegisterUseCase implements UsecaseWithParams<void, RegisterUserParams> {
  final IAuthRepository repository;

  RegisterUseCase(this.repository);

  @override
  Future<Either<Failure, void>> call(RegisterUserParams params) {
    final authEntity = AuthEntity(
      email: params.email,
      password: params.password,
      image: params.image,
    );
    return repository.registerUser(authEntity);
  }
}
