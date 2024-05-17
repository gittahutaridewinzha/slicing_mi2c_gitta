import 'package:flutter/material.dart';
import 'package:slicing_mi2c/latihan_slicing/Page_cycber.dart';
import 'package:slicing_mi2c/latihan_slicing/course_page.dart';
import 'package:slicing_mi2c/latihan_slicing/page_search.dart';
import 'package:slicing_mi2c/latihan_slicing/startLearning_page.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  int _selectedIndex = 0;

  void _onItemTapped(int index, BuildContext context) {
    setState(() {
      _selectedIndex = index;
    });

    print('Selected index: $index');

    if (index == 1) {
      print('Navigating to PageCourse');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PageCourse()),
      );
    } else if (index == 2) {
      print('Navigating to PageLearning');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PageLearning()),
      );
    }
    // else if (index == 3) {
    //   print('Navigating to PageSearch');
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => PageSearch()),
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context),
                SizedBox(height: 20), // tambahkan spasi antara gambar dan input
                _buildContent(context),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'My Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Blogs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: (index) => _onItemTapped(index, context), // Pass context here
      ),
    );
  }
}


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

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'gambar/gambarHome.png',
            width: screenWidth, // Mengatur lebar gambar sesuai dengan lebar layar
            fit: BoxFit.cover, // Mengatur agar gambar mengisi lebar layar
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.only(left: 10), // padding untuk "Categories"
            child: Text(
              'Categories',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageCyber()),
                    );
                  },
                  child: Card(
                    child: Container(
                      constraints: BoxConstraints(
                        maxHeight: 70, // Atur tinggi maksimal card di sini
                        maxWidth: 250, // Atur lebar maksimal card di sini
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8.0), // Tambahkan padding horizontal
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Letakkan teks dan ikon berjauhan
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cyber Security',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '145 Courses',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.security, color: Colors.black, size: 30), // Memperbesar ukuran ikon
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PageSearch()),
                    );
                  },
                  child: Card(
                    child: Container(
                      constraints: BoxConstraints(
                        maxHeight: 70, // Atur tinggi maksimal card di sini
                        maxWidth: 250, // Atur lebar maksimal card di sini
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8.0), // Tambahkan padding horizontal
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Letakkan teks dan ikon berjauhan
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Data Science',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                '120 Courses',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.cloud, color: Colors.black, size: 30), // Memperbesar ukuran ikon
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.only(left: 10), // padding untuk "Categories"
            child: Text(
              'Top Courses',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight: 230, // Atur tinggi maksimal card di sini
                      maxWidth: 250, // Atur lebar maksimal card di sini
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'gambar/Datascience.png',
                              fit: BoxFit.cover, // Sesuaikan dengan preferensi Anda
                              height: 150, // Atur tinggi gambar di sini
                              width: double.infinity, // Atur lebar gambar sesuai dengan lebar card
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Data Science',
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
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 50), // Spasi antara teks rating dan jumlah pelajar
                              Text(
                                '10.5k learner',
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Card(
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight: 230, // Atur tinggi maksimal card di sini
                      maxWidth: 250, // Atur lebar maksimal card di sini
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'gambar/machine.png',
                              fit: BoxFit.cover, // Sesuaikan dengan preferensi Anda
                              height: 150, // Atur tinggi gambar di sini
                              width: double.infinity, // Atur lebar gambar sesuai dengan lebar card
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
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 50), // Spasi antara teks rating dan jumlah pelajar
                              Text(
                                '10.5k learner',
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.only(left: 10), // padding untuk "Popular Blog"
            child: Text(
              'Popular Blog',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight: 150, // Atur tinggi maksimal card di sini
                      maxWidth: 370, // Atur lebar maksimal card di sini
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'gambar/popular1.png',
                              fit: BoxFit.cover, // Sesuaikan dengan preferensi Anda
                              height: 150, // Atur tinggi gambar di sini
                              width: 120, // Atur lebar gambar sesuai dengan preferensi Anda
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rian Mendella',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'How to improve Microsoft Excel Skills', // Teks yang ingin ditampilkan di sebelah kanan gambar
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Most people know the power Excel can wield, especially when used properly. But fewer.', // Teks yang ingin ditampilkan di sebelah kanan gambar
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Card(
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight: 150, // Atur tinggi maksimal card di sini
                      maxWidth: 370, // Atur lebar maksimal card di sini
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'gambar/populer2.png',
                              fit: BoxFit.cover, // Sesuaikan dengan preferensi Anda
                              height: 150, // Atur tinggi gambar di sini
                              width: 120, // Atur lebar gambar sesuai dengan preferensi Anda
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Liza Nisel',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Top 10 Java Tools for 2021', // Teks yang ingin ditampilkan di sebelah kanan gambar
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Most people know the power Excel can wield, especially when used properly. But fewer.', // Teks yang ingin ditampilkan di sebelah kanan gambar
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
}

