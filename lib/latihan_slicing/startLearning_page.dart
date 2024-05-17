import 'package:flutter/material.dart';

class PageLearning extends StatefulWidget {
  const PageLearning({Key? key}) : super(key: key);

  @override
  _PageLearningState createState() => _PageLearningState();
}

class _PageLearningState extends State<PageLearning> {
  Widget _buildHeader(BuildContext context) {
    return Container(
      width: 45,
      decoration: BoxDecoration(
        color: Color(0xFFFFFF),
        borderRadius: BorderRadius.circular(50),
      ),
      alignment: Alignment.topLeft,
      child: Center(
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(4),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'gambar/Learning.png',
                width: screenWidth, // Mengatur lebar gambar sesuai dengan lebar layar
                fit: BoxFit.cover, // Mengatur agar gambar mengisi lebar layar
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Machine Learning',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.star, color: Colors.black), // Icon bintang
                SizedBox(width: 10), // Spasi antara ikon dan teks
                Text(
                  '4.6', // Nilai rating
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 50), // Spasi antara teks rating dan jumlah pelajar
                Text(
                  '10.5k learner',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // Spasi antara ListTile dan teks baru
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Overview',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  fontSize: 16,
                ),
              ),
              Text(
                'Lectures',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Text(
                'Similar Courses',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.access_time, color: Colors.black),
                  SizedBox(width: 10),
                  Text(
                    '6 hours',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.book_sharp, color: Colors.black),
                  SizedBox(width: 10),
                  Text(
                    'Completion Certificate',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.assessment, color: Colors.black),
                  SizedBox(width: 10),
                  Text(
                    'Beginner',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What will I learn ?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'The Macine learning basics program is designed to offer a soli foundation & work-ready skills for ML engineers. The Macine learning basics program is designed to offer a soli foundation & work-ready skills for ML engineers.', // Teks yang ingin ditampilkan di sebelah kanan gambar
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Read more', // Teks yang ingin ditampilkan di sebelah kanan gambar
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Learning Page'),
      ),
      body: _buildContent(context),
    );
  }
}
