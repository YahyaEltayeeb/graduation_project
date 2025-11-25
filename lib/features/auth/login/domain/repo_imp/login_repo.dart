import 'package:graduation_project/core/network/api_results.dart';
import 'package:graduation_project/features/auth/login/domain/entities/login_request_entity.dart';
import 'package:graduation_project/features/auth/login/domain/entities/user_model_login_entity.dart';

abstract interface class LoginRepo {
  Future<ApiResult<UserModelLoginEntity>> login(
    LoginRequestEntity loginRequestEntity,
  );
}
