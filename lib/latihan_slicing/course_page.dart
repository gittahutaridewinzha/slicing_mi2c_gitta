import 'package:flutter/material.dart';
import 'package:slicing_mi2c/latihan_slicing/home_page.dart';

class PageCourse extends StatefulWidget {
  const PageCourse({Key? key}) : super(key: key);

  @override
  _PageCourseState createState() => _PageCourseState();
}

class _PageCourseState extends State<PageCourse> {
  int _selectedIndex = 1; // Set indeks yang sesuai dengan My Course

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
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    print('Selected index: $index');

    if (index == 0) {
      print('Navigating to HomePage');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => PageHome()), // Ganti PageHome dengan halaman utama Anda
      );
    } else if (index == 2) {
      print('Navigating to PageBlogs');
      // Implement navigation to PageBlogs
    } else if (index == 3) {
      print('Navigating to PageProfile');
      // Implement navigation to PageProfile
    }
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 45,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
        ),
        Text(
          'My Course',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () {
            // Implement search functionality here
          },
          icon: Icon(Icons.search),
        ),
      ],
    );
  }

  Widget _buildContent(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          // Menggunakan SingleChildScrollView untuk menggulung kartu secara vertikal
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Card(
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight: 250, // Atur tinggi maksimal card di sini
                      maxWidth: 470, // Atur lebar maksimal card di sini
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            // child: Image.asset(
                            //   'gambar/popular1.png',
                            //   fit: BoxFit.cover, // Sesuaikan dengan preferensi Anda
                            //   height: 150, // Atur tinggi gambar di sini
                            //   width: 120, // Atur lebar gambar sesuai dengan preferensi Anda
                            // ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Machine Learning',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'The Macine learning basics program is designed to offer a solid foundation & work-ready skills for ML engineers...',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10), // Spasi antara teks dan gambar
                                    Image.asset(
                                      'gambar/img.png', // Ganti dengan path gambar yang sesuai
                                      height: 50, // Atur tinggi gambar
                                      width: 50, // Atur lebar gambar
                                    ),
                                  ],
                                ),

                                SizedBox(height: 8),
                                Row( // Menggunakan Row untuk menyatukan ikon dan teks
                                  children: [
                                    Icon(Icons.timer, color: Colors.black), // Icon jam
                                    SizedBox(width: 5), // Spasi antara ikon dan teks
                                    Text(
                                      '4 hours left',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 40), // Spasi antara teks dan garis
                                Container(
                                  height: 1, // Ketebalan garis
                                  color: Colors.black, // Warna garis
                                  width: double.infinity, // Lebar garis mengisi bagian yang tersisa dari baris
                                ),
                                SizedBox(height: 10), // Spasi antara garis dan teks
                                Center(
                                  child: Text(
                                    'Start Learning', // Teks di tengah
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 24,
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
                ),
                SizedBox(height: 15), // Tambahkan spasi antara kartu
                Card(
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight: 250, // Atur tinggi maksimal card di sini
                      maxWidth: 470, // Atur lebar maksimal card di sini
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            // child: Image.asset(
                            //   'gambar/populer2.png',
                            //   fit: BoxFit.cover, // Sesuaikan dengan preferensi Anda
                            //   height: 150, // Atur tinggi
                            //   width: 120, // Atur lebar gambar sesuai dengan preferensi Anda
                            // ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Data Science',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Most people know the power Excel can wield, especially when used properly. But fewer people know how to make...', // Teks yang ingin ditampilkan di sebelah kanan gambar
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10), // Spasi antara teks dan gambar
                                    Image.asset(
                                      'gambar/img_1.png', // Ganti dengan path gambar yang sesuai
                                      height: 50, // Atur tinggi gambar
                                      width: 50, // Atur lebar gambar
                                    ),
                                  ],
                                ),

                                SizedBox(height: 8),
                                Row( // Menggunakan Row untuk menyatukan ikon dan teks
                                  children: [
                                    Icon(Icons.timer, color: Colors.black), // Icon jam
                                    SizedBox(width: 5), // Spasi antara ikon dan teks
                                    Text(
                                      '2 hours left',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(width: 10), // Spasi antara teks dan gambar
                                  ],
                                ),
                                SizedBox(height: 40), // Spasi antara teks dan garis
                                Container(
                                  height: 1, // Ketebalan garis
                                  color: Colors.black, // Warna garis
                                  width: double.infinity, // Lebar garis mengisi bagian yang tersisa dari baris
                                ),
                                SizedBox(height: 10), // Spasi antara garis dan teks
                                Center(
                                  child: Text(
                                    'Start Learning', // Teks di tengah
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 24,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }



}
