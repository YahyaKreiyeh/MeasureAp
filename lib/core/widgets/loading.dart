import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:measureapp/core/utils/assets_managers/assets.gen.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AssetsManager.lottie.loading.lottie(
        repeat: false,
        height: 150.w,
        width: 150.w,
      ),
    );
  }
}
