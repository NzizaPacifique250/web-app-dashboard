import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:template/features/dashboard/presentation/widgets/pie_chart.dart';

import '../widgets/header.dart';
import '../widgets/top_card.dart';
import '../widgets/menu_items.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<TopCard> topCards = [
    const TopCard(
      iconColor: Colors.purpleAccent,
      title: '3,256',
      subtitle: 'Total Patient',
      mainIcon: Icons.local_hospital_rounded,
      topIcon: Icons.more_horiz_sharp,
    ),
    const TopCard(
      iconColor: Colors.blueAccent,
      title: '3,256',
      subtitle: 'Total Patient',
      mainIcon: Icons.local_hospital_rounded,
      topIcon: Icons.more_horiz_sharp,
    ),
    const TopCard(
      iconColor: Colors.deepOrangeAccent,
      title: '3,256',
      subtitle: 'Total Patient',
      mainIcon: Icons.local_hospital_rounded,
      topIcon: Icons.more_horiz_sharp,
    ),
    const TopCard(
      iconColor: Colors.redAccent,
      title: '3,256',
      subtitle: 'Total Patient',
      mainIcon: Icons.local_hospital_rounded,
      topIcon: Icons.more_horiz_sharp,
    ),
    const TopCard(
      iconColor: Colors.cyanAccent,
      title: '3,256',
      subtitle: 'Total Patient',
      mainIcon: Icons.local_hospital_rounded,
      topIcon: Icons.more_horiz_sharp,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ResponsiveBuilder(builder: (context, sizingInformation) {
        var width = sizingInformation.screenSize.width;
        var height = sizingInformation.screenSize.height;
        return SizedBox(
            width: width,
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Vertical Menu

                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      height: height,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              child: Image.network(
                                  'https://pngfre.com/wp-content/uploads/mario-41-289x300.png'),
                            ),
                          ),
                          const Expanded(flex: 6, child: MenuItems()),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // The  search bar to be displayed on large screens

                        Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.white,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: Header(),
                              ),
                            )),
                        Expanded(
                          flex: 13,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 15, left: 20, right: 5, bottom: 5),
                            child: Column(
                              children: [
                                // Row 1 top cards for quick statistical data

                                Expanded(
                                    flex: 2,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: topCards,
                                    )),

                                // Row 2 for the statistics or date details demonstration

                                Expanded(
                                    flex: 5,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0,
                                          right: 20,
                                          top: 20,
                                          bottom: 10),
                                      child: Row(
                                        children: [
                                          // Row 2 - First container with BarChart

                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Colors.white,
                                              ),
                                              child: const Text('Barchart'),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),

                                          // Row 2 - Second container with PieChart

                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.all(10.0),
                                                    child: Text(
                                                      'Statistics - Pie Chart',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ),
                                                  const Divider(),
                                                  Expanded(
                                                      child: PieChartSample1()),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                // Row 3 for data demonstration details

                                Expanded(
                                    flex: 5,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0,
                                          right: 20,
                                          top: 10,
                                          bottom: 10),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Colors.white,
                                              ),
                                              child: const Text('Statistics'),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Colors.white,
                                              ),
                                              child: const Text('Statistics'),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Colors.white,
                                              ),
                                              child: const Text('Statistics'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ));
      }),
    );
  }
}
