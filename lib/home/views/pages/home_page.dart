import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: const [
                  Text(
                    'Jobs Recommended for you',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 18,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  JobWidget(
                    jobTitle: 'Junior UI Designer',
                    company: 'Precise',
                    location: 'Nairobi, Kenya',
                    type: 'Freelance',
                    icon: const Icon(
                      Zocial.yelp,
                      color: Colors.white,
                    ),
                    numberApplications: '25',
                    time: '8',
                    isBookmarked: true,
                    color: Theme.of(context).primaryColor,
                    id: '56FDJ74BD7',
                  ),
                  const JobWidget(
                    jobTitle: 'Strategic Project Associate',
                    company: 'Basemart',
                    location: 'Machakos, Kenya',
                    type: 'Contract',
                    icon: Icon(
                      Zocial.lego,
                      color: Colors.white,
                    ),
                    numberApplications: '0',
                    time: '23',
                    isBookmarked: false,
                    color: Color(0xFFA0C3D2),
                    id: '7HCB3VCHG',
                  ),
                  const JobWidget(
                    jobTitle: 'Junior Product Designer',
                    company: 'Shopee',
                    location: 'Mombasa, Kenya',
                    type: 'Full Time',
                    icon: Icon(
                      Zocial.smashing,
                      color: Colors.white,
                    ),
                    numberApplications: '14',
                    time: '6',
                    isBookmarked: true,
                    color: Color(0xFF658864),
                    id: '08GT3BVFKSW',
                  ),
                  const JobWidget(
                    jobTitle: 'Graphic Designer',
                    company: 'Tap&Go',
                    location: 'Westlands, Kenya',
                    type: 'Full Time',
                    icon: Icon(
                      Zocial.blogger,
                      color: Colors.white,
                    ),
                    numberApplications: '140',
                    time: '3',
                    isBookmarked: false,
                    color: Color(0xFFA75D5D),
                    id: 'G23VDH2DH',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class JobWidget extends StatelessWidget {
  final String jobTitle;
  final Icon icon;
  final String company;
  final String location;
  final String type;
  final String numberApplications;
  final String time;
  final bool isBookmarked;
  final Color color;
  final String id;
  const JobWidget({
    Key? key,
    required this.jobTitle,
    required this.icon,
    required this.company,
    required this.location,
    required this.type,
    required this.numberApplications,
    required this.time,
    required this.isBookmarked,
    required this.color,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            jobTitle,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: const Color(0xFF1A0000).withOpacity(.4)),
                            child: Center(
                              child: Text(
                                '#$id',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        company,
                        style: const TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        location,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: color,
                    child: icon,
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Text(
                        type,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        '$numberApplications Applicants',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '$time Hours Left',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      isBookmarked
                          ? const Icon(
                              BootstrapIcons.bookmark_fill,
                              size: 18,
                            )
                          : const Icon(
                              BootstrapIcons.bookmark,
                              size: 18,
                            )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider()
            ],
          )
        ],
      ),
    );
  }
}
