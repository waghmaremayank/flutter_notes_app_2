import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashScreen());
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color(0xffcccbc1),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final scale = constraints.maxWidth / 402;

          return ClipRect(
            child: Stack(
              fit: StackFit.expand,
              children: [
                CustomPaint(painter: _GridPainter(scale: scale)),
                Positioned(
                  top: 38 * scale,
                  left: 0,
                  width: 193 * scale,
                  height: 190 * scale,
                  child: Image.asset(
                    'asset/img/eye.png',
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.none,
                  ),
                ),
                Positioned(
                  top: 286 * scale,
                  left: 0,
                  right: 0,
                  child: Text(
                    'NOTES',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff434236),
                      fontFamily: 'Nothing',
                      fontSize: 42.155 * scale,
                      height: 1,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  height: 438 * scale,
                  child: Image.asset(
                    'asset/img/lower rect.png',
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.none,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _GridPainter extends CustomPainter {
  const _GridPainter({required this.scale});

  final double scale;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0x1f434236)
      ..strokeWidth = scale;
    final spacing = 20 * scale;

    for (double x = 0; x <= size.width; x += spacing) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }
    for (double y = 0; y <= size.height; y += spacing) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(_GridPainter oldDelegate) => oldDelegate.scale != scale;
}
