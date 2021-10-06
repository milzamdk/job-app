import 'package:flutter/material.dart';
import 'package:job_app/theme.dart';
import 'package:job_app/widget/job_list.dart';

class SecondHomePage extends StatelessWidget {
  final String jobTitleHome;
  final String imageUrl;

  SecondHomePage({
    required this.jobTitleHome,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 270,
                      child: Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 170.0,
                      left: 24,
                    ),
                    child: Text(
                      jobTitleHome,
                      style: jobTitleTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 216.0,
                      left: 24,
                    ),
                    child: Text(
                      '12,000 available',
                      style: availableTextStyle,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 30.0,
                  left: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Big Companies',
                      style: titleJobTextStyle,
                    ),
                    Column(
                      children: [
                        JobList(
                          imageUrl: 'assets/google-icon.png',
                          jobTitle: 'Front-End Dev',
                          company: 'Google',
                        ),
                        JobList(
                          imageUrl: 'assets/instagram-icon.png',
                          jobTitle: 'UI Designer',
                          company: 'Instagram',
                        ),
                        JobList(
                          imageUrl: 'assets/facebook-icon.png',
                          jobTitle: 'Data Scientist',
                          company: 'Facebook',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 30.0,
                  left: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Startups',
                      style: titleJobTextStyle,
                    ),
                    Column(
                      children: [
                        JobList(
                          imageUrl: 'assets/google-icon.png',
                          jobTitle: 'Front-End Dev',
                          company: 'Google',
                        ),
                        JobList(
                          imageUrl: 'assets/instagram-icon.png',
                          jobTitle: 'UI Designer',
                          company: 'Instagram',
                        ),
                        JobList(
                          imageUrl: 'assets/facebook-icon.png',
                          jobTitle: 'Data Scientist',
                          company: 'Facebook',
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
  }
}
