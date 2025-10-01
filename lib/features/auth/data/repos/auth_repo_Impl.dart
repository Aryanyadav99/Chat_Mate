import 'package:chat_mat/features/auth/data/datasource/auth_remote_datasource.dart';
import 'package:chat_mat/features/auth/domain/entities/user_entity.dart';
import 'package:chat_mat/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo{
  final AuthRemoteDataSource authRemoteDataSource;
  AuthRepoImpl({required this.authRemoteDataSource});

  @override
  Future<UserEntity> login(String email, String password) async{
    return await authRemoteDataSource.login(email: email, password: password);
  }

  @override
  Future<UserEntity> register(String userName, String email, String password) async{
    return await authRemoteDataSource.register(userName: userName, email: email, password: password);
  }
  
  
}