import 'package:flutter/material.dart';
import 'package:job_app/theme.dart';
import 'package:job_app/widget/job_card.dart';
import 'package:job_app/widget/job_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            top: 30,
            left: 24,
            right: 24,
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Holla',
                    style: titleTextStyle,
                  ),
                  Text(
                    'Milzam Dwi K',
                    style: subTitleTextStyle,
                  )
                ],
              ),
              Spacer(),
              Image.asset(
                'assets/user_pic.png',
                height: 58,
                width: 58,
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 24,
            right: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hot Categories',
                style: titleJobTextStyle,
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    JobCard(
                      text: 'Website Developer',
                      imageUrl: 'assets/card_category.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'Mobile Developer',
                      imageUrl: 'assets/card_category2.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'App Developer',
                      imageUrl: 'assets/card_category_three.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'Content Writter',
                      imageUrl: 'assets/card_category_four.png',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    JobCard(
                      text: 'Video Grapher',
                      imageUrl: 'assets/card_category_five.png',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Just Posted',
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
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 16),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: Color(0xffB3B5C4),
          selectedItemColor: Color(0xff272C2F),
          currentIndex: 0,
          elevation: 0,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar_one.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar_two.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar_three.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar_four.png'),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
