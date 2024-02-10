import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TopCard extends StatelessWidget {
  final Color iconColor;
  final String title;
  final String subtitle;
  final IconData mainIcon;
  final IconData? topIcon;

  const TopCard(
      {super.key,
      required this.iconColor,
      required this.title,
      required this.subtitle,
      required this.mainIcon,
      this.topIcon});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var width = sizingInformation.screenSize.width;
      var height = sizingInformation.screenSize.height;
      return SizedBox(
        width: 330,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 10),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                if (topIcon != null)
                  Positioned(
                      top: 14,
                      right: 14,
                      child: Icon(
                        topIcon,
                        color: Colors.grey,
                      )),
                Positioned(
                  left: height / 19,
                  top: height / 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: iconColor.withOpacity(0.1),
                            shape: BoxShape.circle),
                        child: Icon(
                          mainIcon,
                          color: iconColor,
                          size: 35,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            subtitle,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
