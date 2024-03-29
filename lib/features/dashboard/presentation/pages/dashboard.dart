import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:template/features/dashboard/presentation/widgets/pie_chart.dart';
import 'package:template/features/dashboard/presentation/widgets/social_media.dart';

import '../widgets/bar_chart.dart';
import '../widgets/header.dart';
import '../widgets/line_chart_2.dart';
import '../widgets/top_card.dart';
import '../widgets/menu_items.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<Map<String, dynamic>> contentMenu = [
    {'title': 'Computer', 'icon': Icons.computer, 'subtitle': '52%'},
    {'title': 'VR', 'icon': Icons.vrpano, 'subtitle': '30%'},
    {'title': 'Telephone', 'icon': Icons.mobile_friendly, 'subtitle': '80%'},
    {'title': 'Laptop', 'icon': Icons.laptop, 'subtitle': '60%'},
  ];
  final List<TopCard> topCards = [
    const TopCard(
      iconColor: Color(0xff00a4e1),
      title: '10,298',
      subtitle: 'Mario Players',
      mainIcon: Flags.rwanda,
      topIcon: Icons.more_horiz_sharp,
    ),
    const TopCard(
      iconColor: Color(0xff1fb53a),
      title: '10,105',
      subtitle: 'Mario Players',
      mainIcon: Flags.tanzania,
    ),
    const TopCard(
      iconColor: Color(0xffbc0000),
      title: '10,090',
      subtitle: 'Mario Players',
      mainIcon: Flags.kenya,
      topIcon: Icons.more_horiz_sharp,
    ),
    const TopCard(
      iconColor: Color(0xfffcdd00),
      title: '10,000',
      subtitle: 'Mario Players',
      mainIcon: Flags.uganda,
      topIcon: Icons.more_horiz_sharp,
    ),
    const TopCard(
      iconColor: Color(0xffc9072a),
      title: '7,120',
      subtitle: 'Mario Players',
      mainIcon: Flags.burundi,
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
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 15.0,
                                                                left: 30),
                                                        child: Text(
                                                          'Period Based Statistics - Bar Chart',
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                        ),
                                                      ),
                                                      const Spacer(),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                top: 15.0,
                                                                right: 30),
                                                        child: Row(
                                                          children: [
                                                            const Text(
                                                              'Show by ',
                                                            ),
                                                            DropdownButton(
                                                                icon: const Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_outlined),
                                                                underline:
                                                                    const SizedBox(),
                                                                value: 1,
                                                                items: const [
                                                                  DropdownMenuItem(
                                                                    value: 1,
                                                                    child: Text(
                                                                      '2021',
                                                                      style: TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ),
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    value: 2,
                                                                    child: Text(
                                                                        '2022'),
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    value: 3,
                                                                    child: Text(
                                                                        '2023'),
                                                                  ),
                                                                ],
                                                                onChanged:
                                                                    (value) {}),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  const Divider(),
                                                  const Expanded(
                                                      child: BarChartSample()),
                                                ],
                                              ),
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
                                                    padding: EdgeInsets.only(
                                                        top: 15.0,
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'Statistics - Pie Chart',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ),
                                                  const Divider(),
                                                  const Expanded(
                                                      child: PieChartSample()),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 20.0,
                                                        horizontal: 35),
                                                    child: Row(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Container(
                                                              width: 10,
                                                              height: 10,
                                                              decoration: const BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  color: Colors
                                                                      .orangeAccent),
                                                            ),
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                            const Text('Female')
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          width: 15,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              width: 10,
                                                              height: 10,
                                                              decoration: const BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  color: Colors
                                                                      .purpleAccent),
                                                            ),
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                            const Text('Male')
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
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
                                          //Row 3 container 1 for statistics

                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 15.0,
                                                                left: 30),
                                                        child: Text(
                                                          'Gender Based Statistics - Line Graph',
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                        ),
                                                      ),
                                                      const Spacer(),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                top: 15.0,
                                                                right: 30),
                                                        child: Row(
                                                          children: [
                                                            const Text(
                                                              'Show in ',
                                                            ),
                                                            DropdownButton(
                                                                icon: const Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_outlined),
                                                                underline:
                                                                    const SizedBox(),
                                                                value: 1,
                                                                items: const [
                                                                  DropdownMenuItem(
                                                                    value: 1,
                                                                    child: Text(
                                                                      'rwanda',
                                                                      style: TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ),
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    value: 2,
                                                                    child: Text(
                                                                        'tanzania'),
                                                                  ),
                                                                  DropdownMenuItem(
                                                                    value: 3,
                                                                    child: Text(
                                                                        'burundi'),
                                                                  ),
                                                                ],
                                                                onChanged:
                                                                    (value) {}),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  const Divider(),
                                                  Expanded(
                                                      child: Column(
                                                    children: [
                                                      const Expanded(
                                                        flex: 4,
                                                        child: LineChartSample2(
                                                          isShowingMainData:
                                                              true,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      60),
                                                          child: Row(
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    width: 25,
                                                                    height: 10,
                                                                    decoration: const BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.all(Radius.circular(
                                                                                8)),
                                                                        color: Colors
                                                                            .pink),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 5,
                                                                  ),
                                                                  const Text(
                                                                      'Male'),
                                                                ],
                                                              ),
                                                              const SizedBox(
                                                                width: 26,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    width: 25,
                                                                    height: 10,
                                                                    decoration: const BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.all(Radius.circular(
                                                                                8)),
                                                                        color: Colors
                                                                            .blue),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 5,
                                                                  ),
                                                                  const Text(
                                                                      'Female'),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  )),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          // Row 3 for small container 2 for any data

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
                                                    padding: EdgeInsets.only(
                                                        top: 15.0,
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'Markets Rates',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ),
                                                  const Divider(),
                                                  Expanded(
                                                    child: ListView.builder(
                                                      itemCount:
                                                          contentMenu.length,
                                                      itemBuilder:
                                                          (context, i) {
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 8,
                                                          ),
                                                          child: Material(
                                                            child: ListTile(
                                                              contentPadding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          10),
                                                              onTap: () {},
                                                              hoverColor: Colors
                                                                  .grey[200],
                                                              selectedTileColor:
                                                                  Colors.blue,
                                                              iconColor:
                                                                  Colors.white,
                                                              leading: Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        20),
                                                                child: Icon(
                                                                  contentMenu[i]
                                                                      ['icon'],
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              ),
                                                              title: Text(
                                                                  contentMenu[i]
                                                                      [
                                                                      'title']),
                                                              trailing: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        right:
                                                                            20.0),
                                                                child: Text(
                                                                  contentMenu[i]
                                                                      [
                                                                      'subtitle'],
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          // Row 3 for small container 3 for any data

                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.bottomCenter,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 20),
                                              decoration: BoxDecoration(
                                                image: const DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: NetworkImage(
                                                        'https://storage.googleapis.com/pai-images/b36d502fd5b34179a0b791068a761a4d.jpeg')),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Colors.white,
                                              ),
                                              child: const Text(
                                                'Click here',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.white),
                                              ),
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
