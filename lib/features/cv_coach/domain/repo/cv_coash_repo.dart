import 'dart:io';

import 'package:graduation_project/core/network/api_results.dart';
import 'package:graduation_project/features/cv_coach/domain/entities/cv_analysis_entity.dart';

abstract class CvCoashRepo {
  Future<ApiResult<CvAnalysisEntity>> cvCoashRepo(File file);
}
