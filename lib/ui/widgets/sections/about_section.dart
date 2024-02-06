import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:portfolio_daudk/config/constants/constants.dart';
import 'package:portfolio_daudk/config/functions.dart';
import 'package:portfolio_daudk/ui/widgets/animated_button.dart';
import 'package:portfolio_daudk/ui/widgets/translation.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Translation(),
        Gap(5.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: const  Text(
            Constants.aboutText,
            textAlign: TextAlign.center,
          ),
        ),
        Gap(30.h),
        AnimatedButton(
          onTap: () {
            launchNewTabClient(
                'https://drive.google.com/file/d/1wjM2VSg6XLh1cKj8CYQ6GpasiCNV56Vw/view?usp=drive_link');
          },
          text: 'Resume',
        ),
      ],
    );
  }
}
