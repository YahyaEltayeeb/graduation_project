import 'dart:io';
import 'package:dio/dio.dart';
import 'package:graduation_project/core/network/api_services.dart';
import 'package:graduation_project/features/cv_coach/data/data_source.dart';
import 'package:graduation_project/features/cv_coach/data/models/response/cv_analysis_response_dto.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CvCoashDataSource)
class CvCoashDataSourceImpl implements CvCoashDataSource {
  final ApiServices _apiServices;

  CvCoashDataSourceImpl(this._apiServices);

  @override
  Future<CvAnalysisResponseDto> cvCoashDs(File file) async {
    final multipartFile = await MultipartFile.fromFile(
      file.path,
      filename: file.path.split('/').last,
    );

    return await _apiServices.cvCoash(multipartFile);
  }
}
