import 'package:chat_mat/features/auth/domain/entities/user_entity.dart';
import 'package:chat_mat/features/auth/domain/repos/auth_repo.dart';

class LoginUseCase{
  final AuthRepo repository;
  LoginUseCase({required this.repository});
  Future<UserEntity> call(String email,String password){
    return repository.login(email,password);
  }
}