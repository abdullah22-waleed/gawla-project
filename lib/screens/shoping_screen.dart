import 'package:flutter/material.dart';
import 'package:gawla/screens/supermarketScreen.dart';

List text = [
  'المأكلاوت البحرية',
  'المشويات و الكشري',
  'السوبر ماركت',
];

class Shoping extends StatefulWidget {
  const Shoping({Key? key}) : super(key: key);

  @override
  State<Shoping> createState() => _ShopingState();
}

class _ShopingState extends State<Shoping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {},
                    child: Card(
                      color: const Color.fromARGB(255, 244, 242, 229),
                      child: ListTile(
                        title: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp0o_eZWxHLmx6w5ceXn1LMlofqiWaGvp2uw&usqp=CAU',
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                        subtitle: Center(
                          child: Text(
                            text[index],
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
