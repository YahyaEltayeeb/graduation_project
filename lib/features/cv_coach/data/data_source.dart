import 'dart:io';

import 'package:graduation_project/features/cv_coach/data/models/response/cv_analysis_response_dto.dart';

abstract class CvCoashDataSource{
  Future<CvAnalysisResponseDto>cvCoashDs(File file);
}