import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_allerhands/ui/widgets/custom_dot_indicator.dart';
import 'package:test_allerhands/ui/widgets/pop_up_button.dart';

class InfoPopUpDialogContent extends StatefulWidget {
  final List<String> instructionPopUpContent;

  InfoPopUpDialogContent({Key? key, required this.instructionPopUpContent})
      : super(key: key);

  @override
  State<InfoPopUpDialogContent> createState() => _InfoPopUpDialogContentState();
}

class _InfoPopUpDialogContentState extends State<InfoPopUpDialogContent> {
  final PageController _pageController = PageController();
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Заголовок',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 40.sp),
              ),
              CustomDotIndicator(
                  pageController: _pageController,
                  dotCount: widget.instructionPopUpContent.length
              )
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 250.h,
          width: 550.w,
          child: PageView(
              onPageChanged: (index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              controller: _pageController,
              children: widget.instructionPopUpContent
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          e,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ))
                  .toList()),
        ),
        PopUpButton(
            buttonText: 'Далее',
            horizontalPadding: 50,
            onPressed: () {
              currentPageIndex != widget.instructionPopUpContent.length - 1
                  ? _pageController.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut)
                  : AutoRouter.of(context).pop();
            })
      ],
    );
  }
}
