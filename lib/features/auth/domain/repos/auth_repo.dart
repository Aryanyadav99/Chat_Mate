import 'package:chat_mat/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo{
  Future<UserEntity>login(String email,String password);
  Future<UserEntity>register(String userName,String email,String password);
}