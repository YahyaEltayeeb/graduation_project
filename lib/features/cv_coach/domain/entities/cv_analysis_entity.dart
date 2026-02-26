import 'package:graduation_project/features/cv_coach/domain/entities/analysis_entity.dart';

class CvAnalysisEntity {
  final String message;
  final String filename;
  final AnalysisEntity analysis;

  CvAnalysisEntity({
    required this.message,
    required this.filename,
    required this.analysis,
  });
}