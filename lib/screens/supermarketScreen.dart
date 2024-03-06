import 'package:flutter/material.dart';
import 'package:gawla/utils/colors.dart';

List<String> texts = [
  'Kazyon Market',
  'BIM Market',
  'Carrefour Market',
  'Araf Ekhwan Mar',
  'Arafa Market',
  'Metro Market',
  'Payt Elgomla',
];

List<String> images = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxtDYsULuk11Wm841wLa5y6wWiDScYup_Ml7R0ZsazkuyKZ6XQ0BzwEhw4llVULy05Wj4&usqp=CAU',
  'https://tse1.mm.bing.net/th?id=OIP.oZ_OSOkfwAjuTKhojKKYTwHaFB&pid=Api&P=0&h=220',
  'https://i1.wp.com/hotinformationonline.com/wp-content/uploads/2020/07/%D9%83%D8%A7%D8%B1%D9%81%D9%88%D8%B1.jpg?ssl=1',
  'https://tse2.mm.bing.net/th?id=OIP.jhBefekYjQiTRDR0ftROgQHaHa&pid=Api&P=0&h=220',
  'https://tse2.mm.bing.net/th?id=OIP.jhBefekYjQiTRDR0ftROgQHaHa&pid=Api&P=0&h=220',
  'https://tse1.mm.bing.net/th?id=OIP.A01ZsuSqesRj5YJjpEehGQHaD_&pid=Api&P=0&h=220',
  'https://tse4.mm.bing.net/th?id=OIP.HttUfycgcE4oWrlC0ZCvTAHaE8&pid=Api&P=0&h=220',
];

class SuperMarketPage extends StatelessWidget {
  SuperMarketPage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(context),
        body: Column(
          children: [
            const SizedBox(height: 10),
            _buildSortOptions(context),
            const SizedBox(height: 9),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: SizedBox(width: 64),
                  );
                },
                itemCount: texts.length,
                itemBuilder: (context, index) {
                  return SupermarketformItemWidget(
                    index: index,
                    supermarketName: texts[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      leadingWidth: 53,
      leading: const CircleAvatar(radius: 25),
      title: Container(
        padding: const EdgeInsets.all(30),
        child: TextFormField(
          keyboardType: TextInputType.name,
          cursorColor: App_color.application_color,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: App_color.application_color),
            ),
            fillColor: const Color(0xffFFCA28),
            counterStyle: const TextStyle(color: App_color.application_color),
            labelText: 'Search',
            labelStyle: const TextStyle(
              color: App_color.application_color,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            suffixIcon: IconButton(
              color: App_color.application_color,
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSortOptions(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white54),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildSortOption(
            "Sort",
            const Icon(Icons.sort_by_alpha, color: App_color.application_color),
          ),
          _buildSortOption(
            "Filter",
            const Icon(Icons.filter_list, color: App_color.application_color),
          ),
          _buildSortOption(
            "Map",
            const Icon(Icons.map, color: App_color.application_color),
          ),
        ],
      ),
    );
  }

  Widget _buildSortOption(String label, Widget icon) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 2),
        Text(
          label,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}

class SupermarketformItemWidget extends StatelessWidget {
  final String supermarketName;
  final int index;

  const SupermarketformItemWidget({
    Key? key,
    required this.supermarketName,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 13,
          vertical: 11,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 244, 242, 229),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 90,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(images[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 25,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    supermarketName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: App_color.application_color,
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: App_color.application_color,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2,
                          top: 3,
                          bottom: 2,
                        ),
                        child: Text(
                          "Egypt, Fayoum",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
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
