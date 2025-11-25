import 'package:dio/dio.dart';
import 'package:graduation_project/core/network/network_constants.dart';
import 'package:graduation_project/features/auth/login/data/model/request/login_request_dto.dart';
import 'package:graduation_project/features/auth/login/data/model/response/login_response_dto.dart';
import 'package:graduation_project/features/auth/register/data/model/request/register_request_dto.dart';
import 'package:graduation_project/features/auth/register/data/model/response/register_response_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi()
@injectable
abstract class ApiServices {
  @factoryMethod
  factory ApiServices(Dio dio) = _ApiServices;
  @POST(EndPoints.register)
  Future<RegisterResponseDto> registerUser(
    @Body() RegisterRequestDto requestDto,
  );
  @POST(EndPoints.login)
  Future<LoginResponseDto> loginUser(@Body() LoginRequestDto loginRequestDto);
}
