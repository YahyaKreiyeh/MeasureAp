import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/routing/app_router.dart';
import 'package:measureapp/core/routing/routes.dart';
import 'package:measureapp/core/utils/constants/colors.dart';
import 'package:measureapp/core/utils/constants/styles.dart';

class MeasureApp extends StatelessWidget {
  final AppRouter appRouter;

  const MeasureApp({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Measure Ap',
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              color: ColorsManager.scaffoldBackground,
              centerTitle: true,
              titleTextStyle: TextStyles.primaryTextExtraBold16,
            ),
            primaryColor: ColorsManager.primary,
            scaffoldBackgroundColor: ColorsManager.scaffoldBackground,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.navigationScreen,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}
