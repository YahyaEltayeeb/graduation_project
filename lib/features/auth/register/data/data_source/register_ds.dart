import 'package:graduation_project/features/auth/register/data/model/request/register_request_dto.dart';
import 'package:graduation_project/features/auth/register/data/model/response/register_response_dto.dart';

abstract interface class RegisterDataSource {
  Future<RegisterResponseDto> registerUser(RegisterRequestDto requestDto);
}
