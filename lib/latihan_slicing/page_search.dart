import 'package:flutter/material.dart';

class PageSearch extends StatefulWidget {
  const PageSearch({Key? key}) : super(key: key);

  @override
  State<PageSearch> createState() => _PageSearchState();
}

class _PageSearchState extends State<PageSearch> {
  List<Map<String, dynamic>> listKategori = [
    {
      "judul": "Machine Learning",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "cyber.png"
    },
    {
      "judul": "Getting Started with ML",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "ethica.png"
    },
    {
      "judul": "Introduction to Machine Learning",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "intro.png"
    },
    {
      "judul": "PG in Machine Learning",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "crime.png"
    },
    {
      "judul": "Machine Learning",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "crypto.png"
    },
    {
      "judul": "Machine Learning Course",
      "rating": "4.5",
      "jumlah": "10.5k Learners",
      "gambar": "cispp.png"
    },
  ];

  List<Map<String, dynamic>> filteredKategori = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredKategori = listKategori;
    searchController.addListener(() {
      filterSearchResults(searchController.text);
    });
  }

  void filterSearchResults(String query) {
    if (query.isEmpty) {
      setState(() {
        filteredKategori = listKategori;
      });
    } else {
      List<Map<String, dynamic>> filteredList = listKategori
          .where((item) =>
          item['judul'].toLowerCase().contains(query.toLowerCase()))
          .toList();
      setState(() {
        filteredKategori = filteredList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Search Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Search Here",
                // prefixIcon: Icon(Icons.arrow_back),
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.1),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: filteredKategori.length,
                itemBuilder: (context, index) {
                  final movie = filteredKategori[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movie['judul'],
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    movie['rating'], // Nilai rating
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 18,
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                movie['jumlah'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'gambar/${movie['gambar']}',
                            height: 85,
                            width: 85,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
