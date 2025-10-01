import 'package:chat_mat/features/auth/domain/entities/user_entity.dart';
import 'package:chat_mat/features/auth/domain/repos/auth_repo.dart';

class RegisterUseCase{
  final AuthRepo repository;
  RegisterUseCase({required this.repository});
  Future<UserEntity> call(String userName,String email,String password){
    return repository.register(userName,email,password);
  }
}