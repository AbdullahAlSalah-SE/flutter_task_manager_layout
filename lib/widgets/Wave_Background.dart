part of '../imports/app_imports.dart';

class WaveBackground extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final Widget? child;
  const WaveBackground(
      {Key? key,
      required this.firstColor,
      required this.secondColor,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            color: firstColor,
          ),
          CustomPaint(
            painter: _WaveCustomPaint(backgroundColor: secondColor),
            size: Size.infinite,
          ),
          child ?? Container(),
        ],
      ),
    );
  }
}
