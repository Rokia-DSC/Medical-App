import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicalappui/util/category.dart';
import 'package:medicalappui/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //name
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                      Text('Hello,',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Rokia Darwish',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  //Protfile picture
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12)
                    ),
                      child: Icon(Icons.person),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),

            // card => how do you feel?
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.pink[100],
                borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    // animation or cute picture
                    Container(
                      height: 100,
                      width: 100,
                      //color: Colors.deepPurple[200],
                      child: Image.asset('lib/Images/rian-ramirez-rm7rZYdl3rY-unsplash.jpg',height: 100,),
                    ),
                    SizedBox(width: 20,),
                    // how do you feel + get started button?
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('How do you feel?',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                          ),
                          SizedBox(height: 12,),
                          Text('Fill out your medical card right now',style: TextStyle(fontSize: 14),),
                          SizedBox(height: 12,),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text('Get Started',
                              style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25,),
            // search bar
            Padding(
               padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(color: Colors.deepPurple[100],borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help you',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25,),
            // horizontal listview => categories: dentist, surgeon ect..
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Category(categoryName: 'Dentist',iconImagePath: 'lib/Icons/tooth.png',),
                  Category(categoryName: 'Surgeon', iconImagePath: 'lib/Icons/surgeon.png',),
                  Category(categoryName: 'Pharamacist',iconImagePath: 'lib/Icons/drugs.png',),
                ],
              ),
            ),
            const SizedBox(height: 25,),
            // doctor list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Doctor',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text('See all',style: TextStyle(color: Colors.grey[500],fontSize: 16,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            const SizedBox(height: 25,),
            Expanded(child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorCard(doctorName: 'Dr. Ganesh Gupta', rating: '4.9', doctorProfession: 'Therapist', doctorImagePath: 'lib/Images/austin-distel-7bMdiIqz_J4-unsplash.jpg',),
                DoctorCard(doctorName: 'Dr. Rokia Darwish', rating: '4.4', doctorProfession: 'Psychologist', doctorImagePath: 'lib/Images/rian-ramirez-rm7rZYdl3rY-unsplash.jpg',),
                DoctorCard(doctorName: 'Dr. Steve Jobs', rating: '5.0', doctorProfession: 'Surgeon', doctorImagePath: 'lib/Images/usman-yousaf-pTrhfmj2jDA-unsplash.jpg',),

              ],
            ),),

          ],
        ),
      ),
    );
  }
}
