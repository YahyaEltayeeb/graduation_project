import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/config/routing/app_routes.dart';
import 'package:graduation_project/config/routing/routing_generator.dart';
import 'package:graduation_project/config/theme/app_theme.dart';
import 'package:graduation_project/core/di/di.dart';
import 'package:graduation_project/core/general_cubit/general_state.dart';
import 'package:graduation_project/core/general_cubit/local_cubit.dart';
import 'package:graduation_project/core/l10n/translations/app_localizations.dart';
import 'package:graduation_project/features/app_section/app_section.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(
    BlocProvider(
      create: (context) => getIt<LocaleThemeCubit>(),
      child: const SuperFitnessApp(),
    ),
  );
}

class SuperFitnessApp extends StatelessWidget {
  const SuperFitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleThemeCubit, LocaleThemeState>(
      builder: (context, state) {
        return MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: state.locale,
          theme: state.isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.getRoute,
          initialRoute: AppRoutes.appSections,
          home:AppSection(),
        );
      },
    );
  }
}
