import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/di/di.dart';
import 'package:graduation_project/features/cv_coach/presentation/manager/cv_coash_event.dart';
import 'package:graduation_project/features/cv_coach/presentation/manager/cv_coash_state.dart';
import 'package:graduation_project/features/cv_coach/presentation/manager/cv_coash_view_model.dart';
import 'package:graduation_project/features/cv_coach/presentation/pages/request.dart';

class CvCoashPage extends StatelessWidget {
  const CvCoashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CvCoashViewModel>(),
      child: Scaffold(
        body: Center(
          child: BlocBuilder<CvCoashViewModel, CvCoashState>(
            builder: (context, state) {
              // debug prints
              debugPrint('Error: ${state.errorMesCvCoash}');
              debugPrint('Filename: ${state.cvAnalysisEntity?.filename ?? ''}');

              return ElevatedButton(
                onPressed: () async {
                  final file = await pickCvFile();
                  if (file != null) {
                    context.read<CvCoashViewModel>().doIntent(
                      SumbitCvEvent(file: file),
                    );
                  }
                },
                child: const Text("Upload CV"),
              );
            },
          ),
        ),
      ),
    );
  }
}
