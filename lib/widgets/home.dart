import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:focuspulse/colors.dart';
import 'package:focuspulse/components/audio_player_box.dart';
import 'package:focuspulse/components/long_break/l_break_box.dart';
import 'package:focuspulse/components/menu_drawer.dart';
import 'package:focuspulse/components/repetition_timer/repetition_box.dart';
import 'package:focuspulse/components/session_timer/session_box.dart';
import 'package:focuspulse/components/short_break/s_break_box.dart';
import 'package:focuspulse/components/start_button.dart';
import 'package:focuspulse/components/total_timer/total_box.dart';
import 'package:focuspulse/widgets/timer.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void navigateToTimer() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const TimerScreen(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgBeige,
        centerTitle: false,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.fontbrown),
      ),
      drawer: const MenuDrawer(),
      backgroundColor: AppColors.bgBeige,
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/timer.png',
                  width: 40.w,
                  height: 40.h,
                ),
                Text(
                  "Timer",
                  style: TextStyle(
                    fontFamily: 'howdy_duck',
                    fontSize: 24.sp,
                    color: AppColors.fontbrown,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const RepetitionBox(),
                SizedBox(width: 10.w),
                const TotalBox(),
                SizedBox(width: 10.w),
                const SessionBox()
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SBreakBox(),
                SizedBox(width: 10.w),
                const LBreakBox(),
                SizedBox(width: 10.w),
              ],
            ),
            SizedBox(height: 30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/timer.png',
                  width: 40.w,
                  height: 40.h,
                ),
                Text(
                  "Sound",
                  style: TextStyle(
                    fontFamily: 'howdy_duck',
                    fontSize: 24.sp,
                    color: AppColors.fontbrown,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            const AudioPlayerBox(),
            SizedBox(height: 40.h),
            StartButton("START", () => navigateToTimer()),
          ],
        ),
      ),
    );
  }
}
