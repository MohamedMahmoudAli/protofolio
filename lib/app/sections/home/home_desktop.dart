import 'package:flutter/material.dart';
import 'package:mysite/app/widgets/color_chage_btn.dart';
import 'package:mysite/changes/links.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/animations/zoom_animation.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/res/responsive_size.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  // Change your build method to this:
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return SizedBox(
      // Changed from SizedBox to Container
      height: 80.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          // <--- Add this
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: 5.h), // Reduced from 10.h to save space
                width: 55.w,
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Keep this
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ... your existing Row (Hello tag)
                    Space.y(0.5.w)!,
                    // ... your Name Text
                    // ... your AnimatedTextKit Row
                    Space.y(1.5.w)!,
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: Text(miniDescription,
                          style: TextStyle(
                            fontSize: isFontSize(context, 20),
                            fontWeight: FontWeight.w400,
                            color: theme.textColor.withOpacity(0.6),
                          )),
                    ),
                    Space.y(3.w)!,
                    ColorChageButton(
                      text: 'download cv',
                      onTap: () => html.window.open(resume, "pdf"),
                    ),
                  ],
                ),
              ),
              const ZoomAnimations(),
            ],
          ),
        ),
      ),
    );
  }
}
