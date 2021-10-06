import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_app/theme.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;
  @override
  Widget build(BuildContext context) {
    Widget applyButton() {
      return Padding(
        padding: const EdgeInsets.only(top: 51.0),
        child: Container(
          width: 200,
          height: 45,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color(0xff4141A4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66)),
            ),
            onPressed: () {
              setState(() {
                isApplied = !isApplied;
              });
            },
            child: Text(
              'Apply for Job',
              style: buttonTextStyle,
            ),
          ),
        ),
      );
    }

    Widget cancelButton() {
      return Padding(
        padding: const EdgeInsets.only(top: 51.0),
        child: Container(
          width: 200,
          height: 45,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color(0xffFD4F56),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(66)),
            ),
            onPressed: () {
              setState(() {
                isApplied = !isApplied;
              });
            },
            child: Text(
              'Cancel Apply',
              style: buttonTextStyle,
            ),
          ),
        ),
      );
    }

    Widget successApplied() {
      return Container(
        padding: EdgeInsets.fromLTRB(
          50,
          8,
          50,
          8,
        ),
        margin: EdgeInsets.only(
          bottom: 20,
        ),
        decoration: BoxDecoration(
          color: Color(0xffECEDF1),
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        child: Text(
          'You have applied this job and the\nrecruiter will contact you',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              color: Color(0xffA2A6B4),
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              isApplied ? successApplied() : SizedBox(),
              Image.asset(
                'assets/google-icon.png',
                width: 60,
                height: 60,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Front-End Developer',
                style: jobApplyTextStyle,
              ),
              Text(
                'Google, Inc. Jakarta',
                style: companyTextStyle,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 24,
                  right: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About the Job',
                      style: requirementsTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Full-Time On Site',
                              style: subRequirementsTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Start at \$18,000 per month',
                              style: subRequirementsTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Qualifications',
                      style: requirementsTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Candidate must possess at least a\nBachelor\'s Degree.',
                              style: subRequirementsTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Able to use Microsoft Office and Google\nbased service.',
                              style: subRequirementsTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Have an excellent time management,\ngood at organized and details',
                              style: subRequirementsTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Responsibilities',
                      style: requirementsTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Initiate and promote any programs,\nevents, training, or activities.',
                              style: subRequirementsTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Assessing and anticipating needs and\ncollaborate with Division.',
                              style: subRequirementsTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: Column(
                        children: [
                          isApplied ? cancelButton() : applyButton(),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                              bottom: 30,
                            ),
                            child: Text(
                              'Message Recruiter',
                              style: messageButton,
                            ),
                          ),
                        ],
                      ),
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
