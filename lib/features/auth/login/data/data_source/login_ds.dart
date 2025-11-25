import 'package:graduation_project/features/auth/login/data/model/request/login_request_dto.dart';
import 'package:graduation_project/features/auth/login/data/model/response/login_response_dto.dart';

abstract interface class LoginDataSource {
  Future<LoginResponseDto> login(LoginRequestDto loginRequestDto);
}
