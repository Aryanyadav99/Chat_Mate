import 'package:chat_mat/features/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity{
  UserModel({
    required String id,
    required String userName,
    required String email,
}) : super(id: id,userName: userName,email: email);
  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
        id: json['id'],
        userName: json['userName'],
        email: json['email']
    );
  }
}