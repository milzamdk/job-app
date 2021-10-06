import 'package:flutter/material.dart';
import 'package:job_app/pages/detail_page.dart';
import 'package:job_app/theme.dart';

class JobList extends StatelessWidget {
  final String jobTitle, company, imageUrl;

  JobList({
    required this.imageUrl,
    required this.jobTitle,
    required this.company,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(),
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              width: 45,
              height: 45,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jobTitle,
                    style: jobTextStyle,
                  ),
                  Text(
                    company,
                    style: companyTextStyle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(
                    color: Color(0xffECEDF1),
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
