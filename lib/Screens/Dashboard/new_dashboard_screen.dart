import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gmanager/Screens/Notifications/notification_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gmanager/Screens/ProfileScreen/profile_details.dart';
import 'package:gmanager/constant.dart';
import 'package:gmanager/data_model.dart';
import 'package:nb_utils/src/extensions/widget_extensions.dart';
import 'dart:math' as math;

class NewDashboardScreen extends StatefulWidget {
  const NewDashboardScreen({Key? key}) : super(key: key);

  @override
  _NewDashboardScreenState createState() => _NewDashboardScreenState();
}

class _NewDashboardScreenState extends State<NewDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              //app bar
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          const ProfileDetails().launch(context);
                        },
                        child: const Image(
                          image: AssetImage('assets/images/profile.png'),
                          height: 42,
                          width: 42,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Alex Store',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Free Plan',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal,
                              color: kGreyTextColor,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 40.0,
                        width: 86.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color(0xFFD9DDE3).withOpacity(0.5),
                        ),
                        child: const Center(
                          child: Text(
                            '৳ 450',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: kDarkWhite,
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              const NotificationScreen().launch(context);
                            },
                            child: const Icon(
                              Icons.notifications_active,
                              color: kMainColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //dashboard
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    const Text(
                      "Dashboard",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //grid views
                    Expanded(
                        child: StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 1,
                      staggeredTileBuilder: (index) =>
                          const StaggeredTile.fit(1),
                      itemCount: DashboardModel().items.length,
                      itemBuilder: (_, index) {
                        var data = DashboardModel().items;
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 5,
                                      offset: Offset(0, 2.5)),
                                ],
                              ),
                              child: Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //for progress
                                  SizedBox(
                                    width: 100.0,
                                    height: 100.0,
                                    child: CustomPaint(
                                      painter: GradientArcPainter(
                                        progress:
                                            double.parse(data[index].today),
                                        startColor: kMainColor,
                                        endColor: Colors.orangeAccent,
                                        width: 8.0,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '৳${data[index].today}',
                                          style: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    data[index].title,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${data[index].total}(total)",
                                    style: const TextStyle(
                                        fontSize: 12, color: kGreyTextColor),
                                  ),
                                ],
                              )),
                        );
                      },
                    )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class GradientArcPainter extends CustomPainter {
  const GradientArcPainter({
    required this.progress,
    required this.startColor,
    required this.endColor,
    required this.width,
  })  : assert(progress != null),
        assert(startColor != null),
        assert(endColor != null),
        assert(width != null),
        super();

  final double progress;
  final Color startColor;
  final Color endColor;
  final double width;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);
    final gradient = SweepGradient(
      startAngle: -math.pi / 2,
      endAngle: 7 * math.pi / 2,
      tileMode: TileMode.repeated,
      colors: [startColor, endColor],
    );

    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..strokeCap = StrokeCap.butt // StrokeCap.round is not recommended.
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width / 2, size.height / 2) - (width / 2);
    final startAngle = -math.pi / 2;
    final sweepAngle = 2 * math.pi * progress;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
        startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
